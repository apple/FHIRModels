//
//  ScannerParsingKnownIssueTests.swift
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
import ModelsR5
import Testing

/*
 Known bugs and spec inaccuracies of the current Scanner-based Date/Time/DateTime/TimeZone parsing.

 Each test asserts the CORRECT (FHIR-R4-conformant) behavior, wrapped in `withKnownIssue`:
 today the assertions fail because the implementation misbehaves, which `withKnownIssue` records
 without failing the suite. Once the parsing engine is fixed (or replaced), `withKnownIssue` will
 flag the then-passing body ("issue was not recorded"), prompting promotion of the test into
 ScannerParsingCharacterizationTests.swift as a plain assertion.

 Where a bug is observable through multiple independent code paths (e.g. `TimeZone.init` and
 `DateTime.init`), each path gets its own `withKnownIssue` block so that a partial fix is flagged
 rather than silently swallowed by the still-failing sibling.
 */
@Suite(
    .serialized,
//    .enabled(if: DateTimeParser.self == ScannerDateTimeParser.self)
)
struct ScannerParsingKnownIssues {

	/// `TimeZone.hs_parseComponents` scans the prefix as a *run* of the character set "+-Z", so
	/// multi-character prefixes like "+-", "--", "Z+", "Z-" slip through: the "Z" comparison fails,
	/// the sign comparison `"-" == tzPrefix` also fails for anything but exactly "-", and the offset
	/// is parsed as *positive*. All of these must be rejected.
    @Test(arguments: ["+-05:00", "--05:00", "Z+01:00", "Z-05:00"])
	func timeZoneSignPrefixRunScan(malformedOffset: String) throws {
        try expectFailureIfScannerEnabled("'+-Z' run-scan: TimeZone accepts '\(malformedOffset)' as a positive offset") {
			#expect(throws: (any Error).self) {
				try parseFHIR(malformedOffset, as: TimeZone.self)
			}
		}
        try expectFailureIfScannerEnabled("'+-Z' run-scan: DateTime accepts '…\(malformedOffset)' as a positive offset") {
			#expect(throws: (any Error).self) {
				try parseFHIR("2015-02-07T13:28:17" + malformedOffset, as: DateTime.self)
			}
		}
	}

	/// `TimeZone.hs_parseComponents` never checks `isAtEnd` (its `expectAtEnd` parameter is unused),
	/// and `TimeZone.init(_:)` doesn't either — so trailing garbage after a standalone timezone string
	/// is silently ignored. (`DateTime`/`Instant` are unaffected: their own end-of-input check catches it.)
	@Test(arguments: ["Zfoo", "+05:00abc", "Z "])
	func timeZoneTrailingCharacters(malformedOffset: String) throws {
        try expectFailureIfScannerEnabled("TimeZone.init accepts and ignores trailing characters") {
			#expect(throws: (any Error).self) {
				try parseFHIR(malformedOffset, as: TimeZone.self)
			}
		}
	}

	/// `Scanner.scanString` is case-insensitive by default, so a lowercase 't' date/time separator is
	/// accepted — and `description` then normalizes it to 'T', silently rewriting the value.
	/// The FHIR regex only permits uppercase 'T'. DateTime and Instant are independent call sites.
	@Test
	func lowercaseTimeSeparatorAccepted() throws {
        try expectFailureIfScannerEnabled("case-insensitive scanString: DateTime accepts 't' as the date/time separator") {
			#expect(throws: (any Error).self) {
				try parseFHIR("2015-02-07t13:28:17Z", as: DateTime.self)
			}
		}
        try expectFailureIfScannerEnabled("case-insensitive scanString: Instant accepts 't' as the date/time separator") {
			#expect(throws: (any Error).self) {
				try parseFHIR("2017-12-09t09:30:51Z", as: Instant.self)
			}
		}
	}

	/// FHIR dateTime requires a *complete* date whenever a time is present, but `DateTime.parse`
	/// accepts a year- or month-precision date followed by a time. (`Instant` correctly rejects these,
	/// see InstantTests.)
	@Test(arguments: ["2015-02T13:28:17Z", "2015T13:28:17Z"])
	func partialDateWithTimeAccepted(malformedDateTime: String) throws {
        try expectFailureIfScannerEnabled("DateTime accepts a partial date followed by a time") {
			#expect(throws: (any Error).self) {
				try parseFHIR(malformedDateTime, as: DateTime.self)
			}
		}
	}

	/// Sub-second digits are scanned with `CharacterSet.decimalDigits`, which matches *any* Unicode
	/// digit (Nd), and `Decimal(string:)` then prefix-parses "17." — so non-ASCII fractional digits are
	/// accepted (second == 17, the invalid spelling round-tripping verbatim via `originalSecondsString`).
	/// Integer fields are safe because their ASCII-only `Int`/`UInt8` conversions fail.
	@Test
	func nonASCIIFractionalSecondsAccepted() throws {
        try expectFailureIfScannerEnabled("Unicode Nd digits accepted in fractional seconds") {
			#expect(throws: (any Error).self) {
				try parseFHIR("13:28:17.٢٣٩", as: FHIRTime.self)
			}
		}
	}

	/// FHIR: "Dates SHALL be valid dates." Both `FHIRDate` and `InstantDate` only cap the day at a
	/// flat 31 and never validate it against the month (or leap years). The two types have separate
	/// parse implementations, hence separate blocks.
	@Test(arguments: ["2015-02-30", "2015-04-31", "2015-02-29", "2016-02-30"])
	func calendarInvalidDatesAccepted(invalidDate: String) throws {
        try expectFailureIfScannerEnabled("FHIRDate does not validate day-of-month against month/year") {
			#expect(throws: (any Error).self) {
				try parseFHIR(invalidDate, as: FHIRDate.self)
			}
		}
        try expectFailureIfScannerEnabled("InstantDate does not validate day-of-month against month/year") {
			#expect(throws: (any Error).self) {
				try parseFHIR(invalidDate, as: InstantDate.self)
			}
		}
	}

//	/// The R4 time regex `([0-5][0-9]|60)(\.[0-9]+)?` permits a fractional leap second ("60.5"),
//	/// but the parser caps seconds at exactly 60.0.
//	/// - Note: FHIRTimeTests currently pins the *opposite* for "09:41:60.0001" (must throw), so
//	///   resolving this requires deciding which behavior the library wants and updating one of the two.
//	@Test
//	func fractionalLeapSecondRejected() throws {
//        try expectFailureIfScannerEnabled("seconds are capped at 60.0; the R4 regex allows 60.<fraction>") {
//			let time = try parseFHIR("23:59:60.5", as: FHIRTime.self)
//			#expect(time.second == Decimal(string: "60.5"))
//		}
//	}
    
    
    private func expectFailureIfScannerEnabled(_ comment: Comment? = nil, _ operation: () throws -> Void) throws {
        if DateTimeParser.self == ScannerDateTimeParser.self {
            withKnownIssue {
                try operation()
            }
        } else {
            try operation()
        }
    }
}
