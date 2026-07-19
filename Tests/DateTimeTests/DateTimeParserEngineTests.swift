//
//  DateTimeParserEngineTests.swift
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
import struct ModelsR5.Instant

private let allEngines: [any DateTimeParserProtocol.Type] = [ScannerDateTimeParser.self, NewDateTimeParser.self]


private enum Shape: String, Sendable {
    case date, instantDate, time, dateTime, instant, timeZone
}


private enum ParseOutcome: Hashable, Sendable {
    case success(ParseResult)
    case failure(String)
}

private enum ParseResult: Hashable {
    case date(ParsedDate)
    case time(ParsedTime)
    case dateTime(ParsedDateTime)
    case instant(ParsedInstant)
    case instantDate(ParsedInstant.Date)
    case timeZone(ParsedTimeZone)
}

private struct TestDescriptor: Sendable, CustomTestStringConvertible {
    typealias ExpectedResult = ParseOutcome

    let shape: Shape
    let input: String
    let result: ExpectedResult

    var testDescription: String {
        #"\#(shape.rawValue): "\#(input)""#
    }

    static func success(_ shape: Shape, _ input: String, _ result: ParseResult) -> Self {
        Self(shape: shape, input: input, result: .success(result))
    }

    static func failure(_ shape: Shape, _ input: String, _ failureReason: String) -> Self {
        Self(shape: shape, input: input, result: .failure(failureReason))
    }
}


private func parse(
    _ input: some StringProtocol,
    of shape: Shape,
    using parser: (some DateTimeParserProtocol).Type,
    config: DateTimeParserConfig = .r4
) throws -> ParseResult {
    switch shape {
    case .date:
        .date(try parser.dateComponents(from: input, config: config))
    case .time:
        .time(try parser.timeComponents(from: input, config: config))
    case .dateTime:
        .dateTime(try parser.dateTimeComponents(from: input, config: config))
    case .instant:
        .instant(try parser.instantComponents(from: input, config: config))
    case .instantDate:
        .instantDate(try parser.instantDateComponents(from: input, config: config))
    case .timeZone:
        .timeZone(try parser.timeZoneComponents(from: input, config: config))
    }
}


// MARK: - Agreement

@Suite(.serialized)
struct DateTimeParserEngineAgreementTests {
    private static func parsedTime(_ hour: UInt8, _ minute: UInt8, _ seconds: String) -> ParsedTime {
        ParsedTime(
            hour: hour,
            minute: minute,
            second: Decimal(string: seconds)!,
            secondIntegerPart: UInt8(seconds.prefix(while: \.isNumber))!,
            originalSecondsString: seconds
        )
    }

    private static func timeComponent(_ hour: UInt8, _ minute: UInt8, _ seconds: String, tz secondsFromGMT: Int, _ timeZoneString: String) -> ParsedDateTime.TimeComponent {
        ParsedDateTime.TimeComponent(
            time: parsedTime(hour, minute, seconds),
            timeZone: TimeZone(secondsFromGMT: secondsFromGMT)!,
            timeZoneString: timeZoneString
        )
    }

    /// Both engines are expected to produce exactly this outcome for each row.
    private static let corpus: [TestDescriptor] = [
        // date - valid
        .success(.date, "2018", .date(ParsedDate(year: 2018))),
        .success(.date, "1973-06", .date(ParsedDate(year: 1973, month: 6))),
        .success(.date, "1905-08-23", .date(ParsedDate(year: 1905, month: 8, day: 23))),
        .success(.date, "0001-01-01", .date(ParsedDate(year: 1, month: 1, day: 1))),
        .success(.date, "9999-12-31", .date(ParsedDate(year: 9999, month: 12, day: 31))),
        .success(.date, "2016-02-29", .date(ParsedDate(year: 2016, month: 2, day: 29))),		// leap day
        .success(.date, "2000-02-29", .date(ParsedDate(year: 2000, month: 2, day: 29))),		// century leap day (divisible by 400)
        // date - invalid
        .failure(.date, "", "invalidYear@0"),
        .failure(.date, "0000", "invalidYear@0"),
        .failure(.date, "015-01-01", "invalidYear@0"),
        .failure(.date, "02015-01-01", "invalidYear@0"),
        .failure(.date, String(repeating: "9", count: 20), "invalidYear@0"),
        .failure(.date, "٢٠١٥", "invalidYear@0"),
        .failure(.date, " 2015", "invalidYear@0"),
        .failure(.date, "2015 ", "additionalCharacters@4"),
        .failure(.date, "2015-1-7", "invalidMonth@5"),
        .failure(.date, "2015-13-01", "invalidMonth@5"),
        .failure(.date, "2015-00-01", "invalidMonth@5"),
        .failure(.date, "2015-01-00", "invalidDay@8"),
        .failure(.date, "2015-01-32", "invalidDay@8"),
        .failure(.date, "2015-01-01x", "additionalCharacters@10"),
        .failure(.date, "2019-11-23T14:22:30Z", "additionalCharacters@10"),
        // instantDate
        .success(.instantDate, "2017-12-09", .instantDate(ParsedInstant.Date(year: 2017, month: 12, day: 9))),
        .failure(.instantDate, "2017", "invalidSeparator@4"),
        .failure(.instantDate, "2017-12", "invalidSeparator@7"),
        .failure(.instantDate, "2017-1-09", "invalidMonth@5"),
        .failure(.instantDate, "2017-12-9", "invalidDay@8"),
        .failure(.instantDate, "2017-12-09x", "additionalCharacters@10"),
        .failure(.instantDate, "0000-12-09", "invalidYear@0"),
        // time - valid
        .success(.time, "13:28:17", .time(parsedTime(13, 28, "17"))),
        .success(.time, "00:00:00", .time(parsedTime(0, 0, "00"))),
        .success(.time, "09:41:60", .time(parsedTime(9, 41, "60"))),
        .success(.time, "09:41:60.0", .time(parsedTime(9, 41, "60.0"))),
        .success(.time, "09:41:60.0000", .time(parsedTime(9, 41, "60.0000"))),
        .success(.time, "13:28:17.239", .time(parsedTime(13, 28, "17.239"))),
        .success(.time, "14:15:17.000000", .time(parsedTime(14, 15, "17.000000"))),
        // time - invalid
        .failure(.time, "", "invalidHour@0"),
        .failure(.time, "24:00:00", "invalidHour@0"),
        .failure(.time, "T12:00:00", "invalidHour@0"),
        .failure(.time, "1:28:17", "invalidSeparator@1"),
        .failure(.time, "13", "invalidSeparator@2"),
        .failure(.time, "13:60:00", "invalidMinute@3"),
//        .failure(.time, "09:41:60.0001", "invalidSeconds@6"),
        .failure(.time, "13:28", "invalidSeparator@5"),
        .failure(.time, "13:28:61", "invalidSecond@6"),
        .failure(.time, "13:28:17.", "invalidSecond@9"),
        .failure(.time, "13:28:17Z", "additionalCharacters@8"),
        .failure(.time, String(repeating: "9", count: 20), "invalidSeparator@20"),
        // dateTime - valid
        .success(.dateTime, "2014", .dateTime(ParsedDateTime(date: ParsedDate(year: 2014), time: nil))),
        .success(.dateTime, "2015-10", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 10), time: nil))),
        .success(.dateTime, "2016-11-08", .dateTime(ParsedDateTime(date: ParsedDate(year: 2016, month: 11, day: 8), time: nil))),
        .success(.dateTime, "2017-12-09T09:30:51Z", .dateTime(ParsedDateTime(date: ParsedDate(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "Z")))),
        .success(.dateTime, "2017-12-09T09:30:51+00:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "+00:00")))),
        .success(.dateTime, "2018-01-10T10:31:52-00:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2018, month: 1, day: 10), time: timeComponent(10, 31, "52", tz: 0, "-00:00")))),
        .success(.dateTime, "2019-02-11T11:32:53.65+04:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2019, month: 2, day: 11), time: timeComponent(11, 32, "53.65", tz: 14400, "+04:00")))),
        .success(.dateTime, "2015-02-07T13:28:17+14:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 2, day: 7), time: timeComponent(13, 28, "17", tz: 50400, "+14:00")))),
        .success(.dateTime, "2015-02-07T13:28:17-14:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 2, day: 7), time: timeComponent(13, 28, "17", tz: -50400, "-14:00")))),
        // dateTime - invalid
        .failure(.dateTime, "2015-02-07T13:28:17", "invalidTimeZonePrefix@19"),
        .failure(.dateTime, "2015-02-07T13:28:17.239", "invalidTimeZonePrefix@23"),
        .failure(.dateTime, "2015-02-07T", "invalidHour@11"),
        .failure(.dateTime, "2015-02-07T ", "invalidHour@11"),
        .failure(.dateTime, "2015-02-07T13:28-05:00", "invalidSeparator@16"),
        .failure(.dateTime, "2015-02-07T13-05:00", "invalidSeparator@13"),
        .failure(.dateTime, "2015-13-07T13:28:17Z", "invalidMonth@5"),
        .failure(.dateTime, "2015-02-07T13:60:17Z", "invalidMinute@14"),
        .failure(.dateTime, "2015-02-07T13:28:61Z", "invalidSecond@17"),
        .failure(.dateTime, "2015-02-07T13:28:17+15:00", "invalidTimeZoneHour@20"),
        .failure(.dateTime, "2015-02-07T13:28:17+14:01", "invalidTimeZoneMinute@23"),
        .failure(.dateTime, "2015-02-07T13:28:17+05:60", "invalidTimeZoneMinute@23"),
        .failure(.dateTime, "2015-02-07T13:28:17-05:00x", "additionalCharacters@25"),
        .failure(.dateTime, "2015-02-07T13:28:17Zx", "additionalCharacters@20"),
        .failure(.dateTime, "2015-02-07T13:28:17z", "invalidTimeZonePrefix@19"),
        .failure(.dateTime, "2019 ", "additionalCharacters@4"),
        .failure(.dateTime, "2019/12", "additionalCharacters@4"),
        // instant - valid
        .success(.instant, "2017-12-09T09:30:51Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "Z")))),
        .success(.instant, "2018-01-10T10:31:52-00:00", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2018, month: 1, day: 10), time: timeComponent(10, 31, "52", tz: 0, "-00:00")))),
        .success(.instant, "2016-12-31T23:59:60Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2016, month: 12, day: 31), time: timeComponent(23, 59, "60", tz: 0, "Z")))),
        .success(.instant, "2017-12-09T09:30:51.000Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51.000", tz: 0, "Z")))),
        // instant - invalid
        .failure(.instant, "2014", "invalidSeparator@4"),
        .failure(.instant, "2015-10", "invalidSeparator@7"),
        .failure(.instant, "2016-11-08", "invalidSeparator@10"),
        .failure(.instant, "2017T09:30:51Z", "invalidSeparator@4"),
        .failure(.instant, "2017-12T09:30:51Z", "invalidSeparator@7"),
        .failure(.instant, "2017-12-09T09:30:51", "invalidTimeZonePrefix@19"),
        .failure(.instant, "2017-12-09T09:30:51Zx", "additionalCharacters@20"),
        .failure(.instant, "2017-12-09T09:30:51+0000", "invalidSeparator@22"),
        .failure(.instant, "0000-12-09T09:30:51Z", "invalidYear@0"),
        // timeZone - valid
        .success(.timeZone, "Z", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "Z"))),
        .success(.timeZone, "+00:00", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "+00:00"))),
        .success(.timeZone, "-00:00", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "-00:00"))),
        .success(.timeZone, "+05:30", .timeZone(ParsedTimeZone(secondsFromGMT: 19800, timeZoneString: "+05:30"))),
        .success(.timeZone, "+14:00", .timeZone(ParsedTimeZone(secondsFromGMT: 50400, timeZoneString: "+14:00"))),
        .success(.timeZone, "-14:00", .timeZone(ParsedTimeZone(secondsFromGMT: -50400, timeZoneString: "-14:00"))),
        .success(.timeZone, "+13:59", .timeZone(ParsedTimeZone(secondsFromGMT: 50340, timeZoneString: "+13:59"))),
        // timeZone - invalid
        .failure(.timeZone, "", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "A", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "z", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "11:00", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "+19:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "-15:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "+9", "invalidSeparator@2"),
        .failure(.timeZone, "+011:00", "invalidSeparator@3"),
        .failure(.timeZone, "+01:0", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+14:01", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+07:60", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+03:000", "additionalCharacters@6"),
    ]

//    @Test(arguments: allEngines, corpus)
//    fileprivate func enginesAgree(engine: any DateTimeParserProtocol.Type, row: TestDescriptor) {
//        expectOutcome(engine, row.shape, row.input, matches: row.result)
//    }



    @Test//(arguments: corpus)
    fileprivate func enginesAgree2(/*_ descriptor: TestDescriptor*/) throws {
        for descriptor in Self.corpus {
            switch descriptor.result {
            case .failure(let expectedFailureReason):
                #expect(throws: (any Error).self, "\(descriptor.shape) \(descriptor.input)") {
                    _ = try parse(descriptor.input, of: descriptor.shape, using: ScannerDateTimeParser.self)
                }
                #expect(throws: (any Error).self, "\(descriptor.shape) \(descriptor.input)") {
                    _ = try parse(descriptor.input, of: descriptor.shape, using: NewDateTimeParser.self)
                }
            case .success(let expected):
                let result0 = try! parse(descriptor.input, of: descriptor.shape, using: ScannerDateTimeParser.self)
                let result1 = try! parse(descriptor.input, of: descriptor.shape, using: NewDateTimeParser.self)
                #expect(result0 == result1)
                #expect(result0 == expected)
                #expect(result1 == expected)
            }
        }
    }
}




extension DateTimeParserEngineAgreementTests {
	/// Both engines must round-trip a fraction longer than `Decimal`'s precision verbatim.
	@Test(arguments: allEngines)
	fileprivate func longFractionAgreement(engine: any DateTimeParserProtocol.Type) throws {
		let string = "12:30:45." + String(repeating: "1", count: 40)
		let parsed = try engine.timeComponents(from: string, config: .r4)
		#expect(parsed.hour == 12)
		#expect(parsed.minute == 30)
		#expect(parsed.second == Decimal(string: String(string.dropFirst(6))))
		#expect(parsed.originalSecondsString == String(string.dropFirst(6)))
	}

	/// Parsing must scale linearly in the input length: a 40k-digit fraction parses in milliseconds.
	/// (Guards against quadratic character access - e.g. `indices.contains` bounds checks - which
	/// would turn hostile wire input into a decode-time denial of service.)
	@Test(arguments: allEngines)
	fileprivate func longInputsParseInLinearTime(engine: any DateTimeParserProtocol.Type) throws {
		let string = "12:30:45." + String(repeating: "1", count: 40_000)
		let start = ContinuousClock.now
		let parsed = try engine.timeComponents(from: string, config: .r4)
		let elapsed = ContinuousClock.now - start
		#expect(parsed.originalSecondsString.count == 40_003)
		#expect(elapsed < .seconds(5), "quadratic parsing behavior suspected: \(elapsed)")
	}
}

// MARK: - Divergence

@Suite(.serialized)
struct DateTimeParserEngineDivergenceTests {

	fileprivate struct DivergenceDescriptor: Sendable, CustomTestStringConvertible {
		let shape: Shape
		let input: String
		let scanner: ParseOutcome
		let newParser: ParseOutcome

		var testDescription: String {
			#"\#(shape.rawValue): "\#(input)""#
		}

		init(_ shape: Shape, _ input: String, scanner: ParseOutcome, newParser: ParseOutcome) {
			self.shape = shape
			self.input = input
			self.scanner = scanner
			self.newParser = newParser
		}
	}

	/// Rows where the engines intentionally differ. In most rows the Scanner engine's behavior is a
	/// pinned bug (see ScannerParsingKnownIssueTests) and the new engine's behavior is the correct
	/// one; the final rows document inputs both engines reject but with different error shapes.
	/// Flipping the `DateTimeParser` typealias changes these outcomes on the wire.
	private static let corpus: [DivergenceDescriptor] = [
		// "+-Z" character-set run-scan: multi-character prefixes accepted as positive offsets
		.init(.timeZone, "+-05:00", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 18000, timeZoneString: "+-05:00"))), newParser: .failure("invalidTimeZoneHour@1")),
		.init(.timeZone, "--05:00", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 18000, timeZoneString: "--05:00"))), newParser: .failure("invalidTimeZoneHour@1")),
		.init(.timeZone, "Z+01:00", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 3600, timeZoneString: "Z+01:00"))), newParser: .failure("additionalCharacters@1")),
		.init(.timeZone, "Z-05:00", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 18000, timeZoneString: "Z-05:00"))), newParser: .failure("additionalCharacters@1")),
		.init(.dateTime, "2015-02-07T13:28:17+-05:00", scanner: .success(.dateTime(ParsedDateTime(
			date: ParsedDate(year: 2015, month: 2, day: 7),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17")!, secondIntegerPart: 17, originalSecondsString: "17"),
				timeZone: TimeZone(secondsFromGMT: 18000)!,
				timeZoneString: "+-05:00"
			)
		))), newParser: .failure("invalidTimeZoneHour@20")),
		.init(.dateTime, "2015-02-07T13:28:17ZZ", scanner: .failure("invalidTimeZoneHour@21"), newParser: .failure("additionalCharacters@20")),
		// TimeZone.init ignoring trailing characters
		.init(.timeZone, "Zfoo", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "Z"))), newParser: .failure("additionalCharacters@1")),
		.init(.timeZone, "+05:00abc", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 18000, timeZoneString: "+05:00"))), newParser: .failure("additionalCharacters@6")),
		.init(.timeZone, "Z ", scanner: .success(.timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "Z"))), newParser: .failure("additionalCharacters@1")),
		// case-insensitive 'T' separator
		.init(.dateTime, "2015-02-07t13:28:17Z", scanner: .success(.dateTime(ParsedDateTime(
			date: ParsedDate(year: 2015, month: 2, day: 7),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17")!, secondIntegerPart: 17, originalSecondsString: "17"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("additionalCharacters@10")),
		.init(.instant, "2017-12-09t09:30:51Z", scanner: .success(.instant(ParsedInstant(
			date: ParsedInstant.Date(year: 2017, month: 12, day: 9),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 9, minute: 30, second: Decimal(string: "51")!, secondIntegerPart: 51, originalSecondsString: "51"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("invalidSeparator@10")),
		// partial date followed by a time
		.init(.dateTime, "2015-02T13:28:17Z", scanner: .success(.dateTime(ParsedDateTime(
			date: ParsedDate(year: 2015, month: 2),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17")!, secondIntegerPart: 17, originalSecondsString: "17"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("additionalCharacters@7")),
		.init(.dateTime, "2015T13:28:17Z", scanner: .success(.dateTime(ParsedDateTime(
			date: ParsedDate(year: 2015),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17")!, secondIntegerPart: 17, originalSecondsString: "17"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("additionalCharacters@4")),
		// Unicode digits in fractional seconds
		.init(.time, "13:28:17.٢٣٩", scanner: .success(.time(ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17.٢٣٩")!, secondIntegerPart: 17, originalSecondsString: "17.٢٣٩"))), newParser: .failure("invalidSecond@9")),
		// calendar-invalid dates
		.init(.date, "2015-02-30", scanner: .success(.date(ParsedDate(year: 2015, month: 2, day: 30))), newParser: .failure("invalidDay@8")),
		.init(.date, "2015-04-31", scanner: .success(.date(ParsedDate(year: 2015, month: 4, day: 31))), newParser: .failure("invalidDay@8")),
		.init(.date, "2015-02-29", scanner: .success(.date(ParsedDate(year: 2015, month: 2, day: 29))), newParser: .failure("invalidDay@8")),		// 2015 is not a leap year
		.init(.date, "2016-02-30", scanner: .success(.date(ParsedDate(year: 2016, month: 2, day: 30))), newParser: .failure("invalidDay@8")),
		.init(.date, "1900-02-29", scanner: .success(.date(ParsedDate(year: 1900, month: 2, day: 29))), newParser: .failure("invalidDay@8")),		// century year, not a leap year
		.init(.instantDate, "2015-02-30", scanner: .success(.instantDate(ParsedInstant.Date(year: 2015, month: 2, day: 30))), newParser: .failure("invalidDay@8")),
		.init(.dateTime, "2015-06-31T09:30:51Z", scanner: .success(.dateTime(ParsedDateTime(
			date: ParsedDate(year: 2015, month: 6, day: 31),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 9, minute: 30, second: Decimal(string: "51")!, secondIntegerPart: 51, originalSecondsString: "51"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("invalidDay@8")),
		.init(.instant, "2015-02-29T13:28:17Z", scanner: .success(.instant(ParsedInstant(
			date: ParsedInstant.Date(year: 2015, month: 2, day: 29),
			time: ParsedDateTime.TimeComponent(
				time: ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17")!, secondIntegerPart: 17, originalSecondsString: "17"),
				timeZone: TimeZone(secondsFromGMT: 0)!,
				timeZoneString: "Z"
			)
		))), newParser: .failure("invalidDay@8")),
		// fractional leap second (permitted by the R4 time regex)
//		.init(.time, "23:59:60.5", scanner: .failure("invalidSecond@9"), newParser: .success(.time(ParsedTime(hour: 23, minute: 59, second: Decimal(string: "60.5")!, originalSecondsString: "60.5")))),
//		.init(.time, "09:41:60.0001", scanner: .failure("invalidSecond@9"), newParser: .success(.time(ParsedTime(hour: 9, minute: 41, second: Decimal(string: "60.0001")!, originalSecondsString: "60.0001")))),
//		.init(.instant, "2016-12-31T23:59:60.5Z", scanner: .failure("invalidSecond@20"), newParser: .success(.instant(ParsedInstant(
//			date: ParsedInstant.Date(year: 2016, month: 12, day: 31),
//			time: ParsedDateTime.TimeComponent(
//				time: ParsedTime(hour: 23, minute: 59, second: Decimal(string: "60.5")!, originalSecondsString: "60.5"),
//				timeZone: TimeZone(secondsFromGMT: 0)!,
//				timeZoneString: "Z"
//			)
//		)))),
		// mixed non-ASCII digits in fractional seconds: Decimal's prefix-parse silently CORRUPTS
		// the value on the Scanner engine (17.2٣9 -> 17.2) while round-tripping the invalid spelling
		.init(.time, "13:28:17.2٣9", scanner: .success(.time(ParsedTime(hour: 13, minute: 28, second: Decimal(string: "17.2٣9")!, secondIntegerPart: 17, originalSecondsString: "17.2٣9"))), newParser: .failure("additionalCharacters@10")),
		// mixed ASCII/non-ASCII digit runs: BOTH engines reject, but with different error shapes -
		// the Scanner engine width-checks the whole Unicode digit run, the new engine's
		// ASCII-only run stops at the first non-ASCII digit
		.init(.time, "1٢:00:00", scanner: .failure("invalidHour@0"), newParser: .failure("invalidSeparator@1")),
		.init(.date, "2015٥-01-07", scanner: .failure("invalidYear@0"), newParser: .failure("additionalCharacters@4")),
		// fallout of the stricter dateTime rules on both-reject inputs
		.init(.dateTime, "2015-02T", scanner: .failure("invalidHour@8"), newParser: .failure("additionalCharacters@7")),
	]

	@Test(arguments: corpus)
	fileprivate func enginesDivergeAsDocumented(_ descriptor: DivergenceDescriptor) {
        func imp(_ parser: (some DateTimeParserProtocol).Type, expectedOutput: ParseOutcome) {
            switch expectedOutput {
            case .success(let expected):
                do {
                    let actual = try parse(descriptor.input, of: descriptor.shape, using: parser)
                    #expect(actual == expected)
                } catch {
                    Issue.record(error)
                }
            case .failure:
                #expect(throws: (any Error).self) {
                    _ = try parse(descriptor.input, of: descriptor.shape, using: parser)
                }
            }
        }
        imp(ScannerDateTimeParser.self, expectedOutput: descriptor.scanner)
        imp(NewDateTimeParser.self, expectedOutput: descriptor.newParser)
	}
}











@Suite(.serialized)
struct DateTimeParserTests {

    private static func parsedTime(_ hour: UInt8, _ minute: UInt8, _ seconds: String) -> ParsedTime {
        ParsedTime(
            hour: hour,
            minute: minute,
            second: Decimal(string: seconds)!,
            secondIntegerPart: UInt8(seconds.prefix(while: \.isNumber))!,
            originalSecondsString: seconds
        )
    }

    private static func timeComponent(_ hour: UInt8, _ minute: UInt8, _ seconds: String, tz secondsFromGMT: Int, _ timeZoneString: String) -> ParsedDateTime.TimeComponent {
        ParsedDateTime.TimeComponent(
            time: parsedTime(hour, minute, seconds),
            timeZone: TimeZone(secondsFromGMT: secondsFromGMT)!,
            timeZoneString: timeZoneString
        )
    }

    /// The SPEC-CORRECT expected behavior of the new parser, independent of what the legacy Scanner
    /// engine does: the agreement corpus carried over (both engines are already correct there), plus
    /// the divergence corpus's new-parser side (where the legacy engine is buggy and the new parser's
    /// behavior is the intended one).
    ///
    /// Leap-second policy (maintainer decision, 2026-07-19): fractional leap seconds are VALID -
    /// the R4 time regex `([0-5][0-9]|60)(\.[0-9]+)?` applies its fraction group to the leap second
    /// too, so "60.1"/"60.0001" parse (integer seconds are still capped at 60). This intentionally
    /// diverges from the legacy engine's value-cap-at-60.0 semantics.
    private static let corpus: [TestDescriptor] = [
        // ============================================================================
        // Carried over from the agreement corpus (both engines already spec-correct)
        // ============================================================================
        // date - valid
        .success(.date, "2018", .date(ParsedDate(year: 2018))),
        .success(.date, "1973-06", .date(ParsedDate(year: 1973, month: 6))),
        .success(.date, "1905-08-23", .date(ParsedDate(year: 1905, month: 8, day: 23))),
        .success(.date, "0001-01-01", .date(ParsedDate(year: 1, month: 1, day: 1))),
        .success(.date, "9999-12-31", .date(ParsedDate(year: 9999, month: 12, day: 31))),
        .success(.date, "2016-02-29", .date(ParsedDate(year: 2016, month: 2, day: 29))),		// leap day
        .success(.date, "2000-02-29", .date(ParsedDate(year: 2000, month: 2, day: 29))),		// century leap day (divisible by 400)
        // date - invalid
        .failure(.date, "", "invalidYear@0"),
        .failure(.date, "0000", "invalidYear@0"),
        .failure(.date, "015-01-01", "invalidYear@0"),
        .failure(.date, "02015-01-01", "invalidYear@0"),
        .failure(.date, String(repeating: "9", count: 20), "invalidYear@0"),
        .failure(.date, "٢٠١٥", "invalidYear@0"),
        .failure(.date, " 2015", "invalidYear@0"),
        .failure(.date, "2015 ", "additionalCharacters@4"),
        .failure(.date, "2015-1-7", "invalidMonth@5"),
        .failure(.date, "2015-13-01", "invalidMonth@5"),
        .failure(.date, "2015-00-01", "invalidMonth@5"),
        .failure(.date, "2015-01-00", "invalidDay@8"),
        .failure(.date, "2015-01-32", "invalidDay@8"),
        .failure(.date, "2015-01-01x", "additionalCharacters@10"),
        .failure(.date, "2019-11-23T14:22:30Z", "additionalCharacters@10"),
        // instantDate
        .success(.instantDate, "2017-12-09", .instantDate(ParsedInstant.Date(year: 2017, month: 12, day: 9))),
        .failure(.instantDate, "2017", "invalidSeparator@4"),
        .failure(.instantDate, "2017-12", "invalidSeparator@7"),
        .failure(.instantDate, "2017-1-09", "invalidMonth@5"),
        .failure(.instantDate, "2017-12-9", "invalidDay@8"),
        .failure(.instantDate, "2017-12-09x", "additionalCharacters@10"),
        .failure(.instantDate, "0000-12-09", "invalidYear@0"),
        // time - valid
        .success(.time, "13:28:17", .time(parsedTime(13, 28, "17"))),
        .success(.time, "00:00:00", .time(parsedTime(0, 0, "00"))),
        .success(.time, "09:41:60", .time(parsedTime(9, 41, "60"))),
        .success(.time, "09:41:60.0", .time(parsedTime(9, 41, "60.0"))),
        .success(.time, "09:41:60.0000", .time(parsedTime(9, 41, "60.0000"))),
        .success(.time, "13:28:17.239", .time(parsedTime(13, 28, "17.239"))),
        .success(.time, "14:15:17.000000", .time(parsedTime(14, 15, "17.000000"))),
        // time - invalid
        .failure(.time, "", "invalidHour@0"),
        .failure(.time, "24:00:00", "invalidHour@0"),
        .failure(.time, "T12:00:00", "invalidHour@0"),
        .failure(.time, "1:28:17", "invalidSeparator@1"),
        .failure(.time, "13", "invalidSeparator@2"),
        .failure(.time, "13:60:00", "invalidMinute@3"),
        .failure(.time, "13:28", "invalidSeparator@5"),
        .failure(.time, "13:28:61", "invalidSecond@6"),
        .failure(.time, "13:28:17.", "invalidSecond@9"),
        .failure(.time, "13:28:17Z", "additionalCharacters@8"),
        .failure(.time, String(repeating: "9", count: 20), "invalidSeparator@20"),
        // dateTime - valid
        .success(.dateTime, "2014", .dateTime(ParsedDateTime(date: ParsedDate(year: 2014), time: nil))),
        .success(.dateTime, "2015-10", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 10), time: nil))),
        .success(.dateTime, "2016-11-08", .dateTime(ParsedDateTime(date: ParsedDate(year: 2016, month: 11, day: 8), time: nil))),
        .success(.dateTime, "2017-12-09T09:30:51Z", .dateTime(ParsedDateTime(date: ParsedDate(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "Z")))),
        .success(.dateTime, "2017-12-09T09:30:51+00:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "+00:00")))),
        .success(.dateTime, "2018-01-10T10:31:52-00:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2018, month: 1, day: 10), time: timeComponent(10, 31, "52", tz: 0, "-00:00")))),
        .success(.dateTime, "2019-02-11T11:32:53.65+04:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2019, month: 2, day: 11), time: timeComponent(11, 32, "53.65", tz: 14400, "+04:00")))),
        .success(.dateTime, "2015-02-07T13:28:17+14:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 2, day: 7), time: timeComponent(13, 28, "17", tz: 50400, "+14:00")))),
        .success(.dateTime, "2015-02-07T13:28:17-14:00", .dateTime(ParsedDateTime(date: ParsedDate(year: 2015, month: 2, day: 7), time: timeComponent(13, 28, "17", tz: -50400, "-14:00")))),
        // dateTime - invalid
        .failure(.dateTime, "2015-02-07T13:28:17", "invalidTimeZonePrefix@19"),
        .failure(.dateTime, "2015-02-07T13:28:17.239", "invalidTimeZonePrefix@23"),
        .failure(.dateTime, "2015-02-07T", "invalidHour@11"),
        .failure(.dateTime, "2015-02-07T ", "invalidHour@11"),
        .failure(.dateTime, "2015-02-07T13:28-05:00", "invalidSeparator@16"),
        .failure(.dateTime, "2015-02-07T13-05:00", "invalidSeparator@13"),
        .failure(.dateTime, "2015-13-07T13:28:17Z", "invalidMonth@5"),
        .failure(.dateTime, "2015-02-07T13:60:17Z", "invalidMinute@14"),
        .failure(.dateTime, "2015-02-07T13:28:61Z", "invalidSecond@17"),
        .failure(.dateTime, "2015-02-07T13:28:17+15:00", "invalidTimeZoneHour@20"),
        .failure(.dateTime, "2015-02-07T13:28:17+14:01", "invalidTimeZoneMinute@23"),
        .failure(.dateTime, "2015-02-07T13:28:17+05:60", "invalidTimeZoneMinute@23"),
        .failure(.dateTime, "2015-02-07T13:28:17-05:00x", "additionalCharacters@25"),
        .failure(.dateTime, "2015-02-07T13:28:17Zx", "additionalCharacters@20"),
        .failure(.dateTime, "2015-02-07T13:28:17z", "invalidTimeZonePrefix@19"),
        .failure(.dateTime, "2019 ", "additionalCharacters@4"),
        .failure(.dateTime, "2019/12", "additionalCharacters@4"),
        // instant - valid
        .success(.instant, "2017-12-09T09:30:51Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51", tz: 0, "Z")))),
        .success(.instant, "2018-01-10T10:31:52-00:00", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2018, month: 1, day: 10), time: timeComponent(10, 31, "52", tz: 0, "-00:00")))),
        .success(.instant, "2016-12-31T23:59:60Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2016, month: 12, day: 31), time: timeComponent(23, 59, "60", tz: 0, "Z")))),
        .success(.instant, "2017-12-09T09:30:51.000Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2017, month: 12, day: 9), time: timeComponent(9, 30, "51.000", tz: 0, "Z")))),
        // instant - invalid
        .failure(.instant, "2014", "invalidSeparator@4"),
        .failure(.instant, "2015-10", "invalidSeparator@7"),
        .failure(.instant, "2016-11-08", "invalidSeparator@10"),
        .failure(.instant, "2017T09:30:51Z", "invalidSeparator@4"),
        .failure(.instant, "2017-12T09:30:51Z", "invalidSeparator@7"),
        .failure(.instant, "2017-12-09T09:30:51", "invalidTimeZonePrefix@19"),
        .failure(.instant, "2017-12-09T09:30:51Zx", "additionalCharacters@20"),
        .failure(.instant, "2017-12-09T09:30:51+0000", "invalidSeparator@22"),
        .failure(.instant, "0000-12-09T09:30:51Z", "invalidYear@0"),
        // timeZone - valid
        .success(.timeZone, "Z", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "Z"))),
        .success(.timeZone, "+00:00", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "+00:00"))),
        .success(.timeZone, "-00:00", .timeZone(ParsedTimeZone(secondsFromGMT: 0, timeZoneString: "-00:00"))),
        .success(.timeZone, "+05:30", .timeZone(ParsedTimeZone(secondsFromGMT: 19800, timeZoneString: "+05:30"))),
        .success(.timeZone, "+14:00", .timeZone(ParsedTimeZone(secondsFromGMT: 50400, timeZoneString: "+14:00"))),
        .success(.timeZone, "-14:00", .timeZone(ParsedTimeZone(secondsFromGMT: -50400, timeZoneString: "-14:00"))),
        .success(.timeZone, "+13:59", .timeZone(ParsedTimeZone(secondsFromGMT: 50340, timeZoneString: "+13:59"))),
        // timeZone - invalid
        .failure(.timeZone, "", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "A", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "z", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "11:00", "invalidTimeZonePrefix@0"),
        .failure(.timeZone, "+19:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "-15:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "+9", "invalidSeparator@2"),
        .failure(.timeZone, "+011:00", "invalidSeparator@3"),
        .failure(.timeZone, "+01:0", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+14:01", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+07:60", "invalidTimeZoneMinute@4"),
        .failure(.timeZone, "+03:000", "additionalCharacters@6"),
        // ============================================================================
        // Carried over from the divergence corpus: the new-parser side (spec-correct,
        // deliberately diverging from the legacy Scanner engine's buggy behavior)
        // ============================================================================
        // "+-Z" prefixes must be single characters; the legacy engine run-scans them
        .failure(.timeZone, "+-05:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "--05:00", "invalidTimeZoneHour@1"),
        .failure(.timeZone, "Z+01:00", "additionalCharacters@1"),
        .failure(.timeZone, "Z-05:00", "additionalCharacters@1"),
        .failure(.dateTime, "2015-02-07T13:28:17+-05:00", "invalidTimeZoneHour@20"),
        .failure(.dateTime, "2015-02-07T13:28:17ZZ", "additionalCharacters@20"),
        // no trailing characters after a standalone timezone offset
        .failure(.timeZone, "Zfoo", "additionalCharacters@1"),
        .failure(.timeZone, "+05:00abc", "additionalCharacters@6"),
        .failure(.timeZone, "Z ", "additionalCharacters@1"),
        // the date/time separator is case-sensitive per the FHIR regex
        .failure(.dateTime, "2015-02-07t13:28:17Z", "additionalCharacters@10"),
        .failure(.instant, "2017-12-09t09:30:51Z", "invalidSeparator@10"),
        // a time may only follow a complete date
        .failure(.dateTime, "2015-02T13:28:17Z", "additionalCharacters@7"),
        .failure(.dateTime, "2015T13:28:17Z", "additionalCharacters@4"),
        .failure(.dateTime, "2015-02T", "invalidHour@8"),
        // only ASCII digits, including in fractional seconds
        .failure(.time, "13:28:17.٢٣٩", "invalidSecond@9"),
        .failure(.time, "13:28:17.2٣9", "additionalCharacters@10"),
        .failure(.time, "1٢:00:00", "invalidSeparator@1"),
        .failure(.date, "2015٥-01-07", "additionalCharacters@4"),
        // dates must be calendar-valid ("Dates SHALL be valid dates")
        .failure(.date, "2015-02-30", "invalidDay@8"),
        .failure(.date, "2015-04-31", "invalidDay@8"),
        .failure(.date, "2015-02-29", "invalidDay@8"),		// 2015 is not a leap year
        .failure(.date, "2016-02-30", "invalidDay@8"),
        .failure(.date, "1900-02-29", "invalidDay@8"),		// century year, not a leap year
        .failure(.instantDate, "2015-02-30", "invalidDay@8"),
        .failure(.dateTime, "2015-06-31T09:30:51Z", "invalidDay@8"),
        .failure(.instant, "2015-02-29T13:28:17Z", "invalidDay@8"),
        // ============================================================================
        // Leap-second policy rows (fractional leap seconds valid; see the corpus doc comment).
        // These intentionally diverge from the legacy engine, which rejects all of them.
        // ============================================================================
        .success(.time, "09:41:60.0001", .time(parsedTime(9, 41, "60.0001"))),
        .success(.time, "23:59:60.5", .time(parsedTime(23, 59, "60.5"))),
        .success(.instant, "2016-12-31T23:59:60.5Z", .instant(ParsedInstant(date: ParsedInstant.Date(year: 2016, month: 12, day: 31), time: timeComponent(23, 59, "60.5", tz: 0, "Z")))),
    ]

    @Test(arguments: corpus)
    fileprivate func newParserBehavesCorrectly(_ descriptor: TestDescriptor) throws {
        switch descriptor.result {
        case .success(let expected):
            let actual = try parse(descriptor.input, of: descriptor.shape, using: NewDateTimeParser.self)
            #expect(actual == expected)
        case .failure:
            #expect(throws: (any Error).self) {
                try parse(descriptor.input, of: descriptor.shape, using: NewDateTimeParser.self)
            }
        }
    }
}
