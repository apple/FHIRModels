//
//  DateTimeParserBenchmarks.swift
//  HealthSoftware
//
//  Copyright 2026 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import FMCore
import Foundation
import Testing

/*
 Micro-benchmarks comparing the two parsing engines (ScannerDateTimeParser vs NewDateTimeParser)
 over identical inputs. Skipped by default so regular test runs stay fast; run explicitly with:

     BENCHMARK=1 swift test -c release --filter DateTimeParserBenchmarks

 Only release-mode numbers are meaningful for the engine comparison: in a debug build the
 hand-written parser runs unoptimized, while Foundation's Scanner internals are optimized
 regardless of build configuration, which skews the ratio in the Scanner's favor.

 Methodology: per row and engine, one warmup pass, then 3 repetitions of `iterations` passes
 over the row's inputs; the best repetition is reported (least scheduler noise). A checksum
 accumulated from every parse defeats dead-code elimination and doubles as a cross-engine
 agreement check.
 */
@Suite(.serialized)
struct DateTimeParserBenchmarks {

	private enum Shape {
		case date, time, dateTime, instant, instantDate, timeZone
	}

	private struct Row {
		let label: String
		let shape: Shape
		let inputs: [String]
		let iterations: Int
		/// `false` for rows whose inputs the two engines intentionally treat differently
		/// (documented divergences); the checksum cross-check is skipped there.
		let expectAgreement: Bool

		init(_ label: String, _ shape: Shape, _ inputs: [String], iterations: Int = 10_000, expectAgreement: Bool = true) {
			self.label = label
			self.shape = shape
			self.inputs = inputs
			self.iterations = iterations
			self.expectAgreement = expectAgreement
		}
	}

	private static let rows: [Row] = [
		Row("date, full", .date, ["2015-02-07", "1971-12-31", "2024-02-29"]),
		Row("date, partial", .date, ["2015", "2015-02"]),
		Row("time, integer seconds", .time, ["13:28:17", "09:41:00"]),
		Row("time, fractional seconds", .time, ["09:41:00.500", "23:59:59.999999"]),
		Row("dateTime, date-only", .dateTime, ["2015", "2015-02-07"]),
		Row("dateTime, full", .dateTime, ["2015-02-07T13:28:17.239+02:00", "2017-01-01T00:00:00Z"]),
		Row("instant", .instant, ["2015-02-07T13:28:17.239+02:00", "2017-01-01T00:00:47Z"]),
		Row("instantDate", .instantDate, ["2015-02-07", "1971-12-31"]),
		Row("timeZone", .timeZone, ["Z", "+02:00", "-05:30"]),
		Row("time, 40-digit fraction", .time, ["12:30:45." + String(repeating: "1", count: 40)], iterations: 2_000),
		Row("error: bad separator", .time, ["13-28-17"]),
		// Diverges by design: the Scanner engine accepts Feb 30 (no calendar validation),
		// the new engine rejects it, so this row compares a success path against an error path.
		Row("Feb 30 (Scanner accepts)", .date, ["2015-02-30"], expectAgreement: false),
		Row("error: missing timezone", .instant, ["2015-02-07T13:28:17"]),
	]

	private static let engines: [(name: String, type: any DateTimeParserProtocol.Type)] = [
		("Scanner", ScannerDateTimeParser.self),
		("New", NewDateTimeParser.self),
	]

	private static let config = DateTimeParserConfig.r4

	/// Parses once and folds the result (or the failure) into a small integer, so the optimizer
	/// cannot elide the parse and so both engines' outcomes can be compared for agreement.
	private static func parseChecksum(_ input: String, _ shape: Shape, _ engine: any DateTimeParserProtocol.Type) -> Int {
		do {
			switch shape {
			case .date:
				return try Int(engine.dateComponents(from: input, config: config).year)
			case .time:
				return try Int(engine.timeComponents(from: input, config: config).minute)
			case .dateTime:
				return try Int(engine.dateTimeComponents(from: input, config: config).date.year)
			case .instant:
				return try Int(engine.instantComponents(from: input, config: config).date.year)
			case .instantDate:
				return try Int(engine.instantDateComponents(from: input, config: config).year)
			case .timeZone:
				return try engine.timeZoneComponents(from: input, config: config).secondsFromGMT
			}
		} catch {
			return -1
		}
	}

	private static func nanoseconds(_ duration: Duration) -> Double {
		Double(duration.components.seconds) * 1e9 + Double(duration.components.attoseconds) * 1e-9
	}

	private static func measure(_ row: Row, _ engine: any DateTimeParserProtocol.Type) -> (nsPerParse: Double, checksum: Int) {
		var checksum = 0
		for input in row.inputs {
			checksum &+= parseChecksum(input, row.shape, engine)
		}
		var best: Duration? = nil
		for _ in 0..<3 {
			let start = ContinuousClock.now
			for _ in 0..<row.iterations {
				for input in row.inputs {
					checksum &+= parseChecksum(input, row.shape, engine)
				}
			}
			let elapsed = ContinuousClock.now - start
			if best == nil || elapsed < best! {
				best = elapsed
			}
		}
		return (Self.nanoseconds(best!) / Double(row.iterations * row.inputs.count), checksum)
	}

	private static func pad(_ string: String, _ width: Int) -> String {
		string.count >= width ? string : string + String(repeating: " ", count: width - string.count)
	}

	@Test(.enabled(if: ProcessInfo.processInfo.environment["BENCHMARK"] != nil, "set BENCHMARK=1 to run the parser benchmarks"))
	func compareEngines() {
		var lines: [String] = []
		#if DEBUG
		lines.append("WARNING: debug build - run with `swift test -c release` for meaningful numbers")
		#endif
		lines.append(Self.pad("input class", 28) + Self.pad("Scanner", 14) + Self.pad("New", 14) + "speedup")
		lines.append(String(repeating: "-", count: 28 + 14 + 14 + 7))
		for row in Self.rows {
			let scanner = Self.measure(row, ScannerDateTimeParser.self)
			let new = Self.measure(row, NewDateTimeParser.self)
			if row.expectAgreement {
				#expect(scanner.checksum == new.checksum, "engines disagree on \"\(row.label)\" - comparison is not meaningful")
			}
			lines.append(
				Self.pad(row.label, 28)
					+ Self.pad(String(format: "%8.0f ns", scanner.nsPerParse), 14)
					+ Self.pad(String(format: "%8.0f ns", new.nsPerParse), 14)
					+ String(format: "%5.1f×", scanner.nsPerParse / new.nsPerParse)
			)
		}
		print(lines.joined(separator: "\n"))
	}
}
