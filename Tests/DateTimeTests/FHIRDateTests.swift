//
//  FHIRDateTests.swift
//  HealthSoftware
//
//  Copyright 2020 Apple Inc.
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


@Suite(.serialized)
struct FHIRDateTests {
    @Test
    func testRendering() throws {
        let string = "2019-10-08"
        var fhirdate = try FHIRDate(string)
        let expected = FHIRDate(year: 2019, month: 10, day: 08)
        #expect(fhirdate == expected)
        #expect(fhirdate.description == string)

        fhirdate.year = 181
        #expect(fhirdate.description == "0181-10-08")
    }
}


extension FHIRDateTests {
    private enum TestDescriptor {
        case success(String, FHIRDate)
        case failure(String)
    }


    private static let corpus: [TestDescriptor] = [
        .success("2019", FHIRDate(year: 2019)),
        .success("3019-12", FHIRDate(year: 3019, month: 12)),
        .success("0019-12-29", FHIRDate(year: 19, month: 12, day: 29)),

        .failure("19"),
        .failure(" 2019"),
        .failure("-2019-05-22"),
        .failure("Y2019"),
        .failure("0000-10-05"),
        .failure("12019-10-05"),

        .failure("2019-"),
        .failure("2019-00"),
        .failure("2019-19"),
        .failure("2019--12"),
        .failure("2019-00"),

        .failure("2019-11-"),
        .failure("2019-11-2"),
        .failure("2019-11-00"),
        .failure("2019-11-34"),

        .failure("2019 "),
        .failure("2019T"),
        .failure("2019/12"),
        .failure("2019 19"),
        .failure("2019-11 23"),
        .failure("2019-11-23T"),
        .failure("2019-11-23 "),
        .failure("2019-11-23T14:22:30Z")

    ]

    @Test(arguments: corpus)
    private func testParsing(_ descriptor: TestDescriptor) throws {
        switch descriptor {
        case let .success(input, expected):
            let actual = try FHIRDate(input)
            #expect(actual == expected)
        case .failure(let input):
            #expect(throws: (any Error).self) {
                try FHIRDate(input)
            }
        }
    }

    @Test
    func testComparison() throws {
        try assertLeftToRight("2021-01-07", "2021-01-08", compares: .orderedAscending)
        try assertLeftToRight("2021-01-07", "2021-01-07", compares: .orderedSame)
        try assertLeftToRight("2021-01-07", "2021-01-06", compares: .orderedDescending)

        try assertLeftToRight("2021-02", "2021-03", compares: .orderedAscending)
        try assertLeftToRight("2021-02", "2021-02", compares: .orderedSame)
        try assertLeftToRight("2021-02", "2021-01", compares: .orderedDescending)

        try assertLeftToRight("2021", "2022", compares: .orderedAscending)
        try assertLeftToRight("2021", "2021", compares: .orderedSame)
        try assertLeftToRight("2021", "2020", compares: .orderedDescending)

        try assertLeftToRight("2021-01-07", "2021-01", compares: .orderedDescending)
        try assertLeftToRight("2021-01-07", "2021", compares: .orderedDescending)
        try assertLeftToRight("2021-01", "2021-01-06", compares: .orderedAscending)
        try assertLeftToRight("2021", "2021-01-06", compares: .orderedAscending)
        try assertLeftToRight("2020-12-31", "2021-01-01", compares: .orderedAscending)
    }

    // MARK: - Tools

    private func assertLeftToRight(_ left: String, _ right: String, compares: ComparisonResult) throws {
        let leftDate = try FHIRDate(left)
        let rightDate = try FHIRDate(right)
        if compares == .orderedDescending {
            #expect(leftDate > rightDate)
        } else if compares == .orderedSame {
            #expect(leftDate == rightDate)
        } else {
            #expect(leftDate < rightDate)
        }
    }
}
