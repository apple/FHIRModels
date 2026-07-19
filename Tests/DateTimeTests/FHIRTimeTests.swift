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
struct FHIRTimeTests {
    @Test
    func testRendering() throws {
        let string = "11:37:44"
        var fhirtime = try FHIRTime(string)
        let expectedfhirtime = FHIRTime(hour: 11, minute: 37, second: 44.0)
        #expect(fhirtime == expectedfhirtime)
        #expect(fhirtime.description == string)
        
        fhirtime.hour = 12
        #expect(fhirtime.description == "12:37:44")
        fhirtime.minute = 39
        #expect(fhirtime.description == "12:39:44")
        fhirtime.second = 2.0
        #expect(fhirtime.description == "12:39:02")
        fhirtime.second = 2.34
        #expect(fhirtime.description == "12:39:02.34")
    }
}


extension FHIRTimeTests {
    private enum TestDescriptor {
        case success(String, FHIRTime)
        case failure(String)
    }
    
    
    private static let corpus: [TestDescriptor] = [
        .success("07:53:12", FHIRTime(hour: 7, minute: 53, second: 12.0)),
        .success("09:41:60.0", FHIRTime(hour: 9, minute: 41, second: 60.0)),
        .success("11:37:00.0", FHIRTime(hour: 11, minute: 37, second: 0.0)),
        .success("14:13:12.11", FHIRTime(hour: 14, minute: 13, second: 12.11)),
        .success("14:15:17.000000", FHIRTime(hour: 14, minute: 15, second: 17.0)),
        .success("09:41:60.0001", FHIRTime(hour: 9, minute: 41, second: 60.0001)),
        
        .failure(" 10:00:00"),
        .failure("T12:00:00"),
        .failure("24:00:00"),
        .failure("30:00:00"),
        
        .failure("09:60:00"),
        .failure("09:72:00"),
        
        .failure("09:41:71"),
        .failure("09:41:50."),
        .failure("09:41:0"),
        .failure("09:41:0"),
        .failure("09:41:000"),
        
        .failure("9:00:00"),
        .failure("019:00:00"),
        .failure("09:2:30"),
        .failure("09:022:30"),
        .failure("09 41 50"),
        .failure("09-41-50"),
        .failure("09:41 50"),
        .failure("09:41-50"),
        
        .failure("09:41:50Z"),
        .failure("09:41:50-08:00"),
        .failure("09:41:50 "),
        .failure("09:41:50+")
        
    ]
    
    @Test(arguments: corpus)
    private func testParsing(_ descriptor: TestDescriptor) throws {
        switch descriptor {
        case let .success(input, expected):
            let actual = try FHIRTime(input)
            #expect(actual == expected)
        case .failure(let input):
            #expect(throws: (any Error).self) {
                try FHIRTime(input)
            }
        }
	}
    
    
    @Test
    func encoding() {
        #expect(FHIRTime(hour: 7, minute: 17, second: 27).description == "07:17:27")
        #expect(FHIRTime(hour: 7, minute: 17, second: 27.123).description == "07:17:27.123")
    }
    
    @Test
    func testComparison() throws {
        try assertLeftToRight("13:44:00", "13:44:02", compares: .orderedAscending)
        try assertLeftToRight("13:44:01", "13:44:02", compares: .orderedAscending)
        try assertLeftToRight("13:44:01.999999", "13:44:02", compares: .orderedAscending)
        try assertLeftToRight("13:44:02", "13:44:02", compares: .orderedSame)
        try assertLeftToRight("13:44:03", "13:44:02.99999", compares: .orderedDescending)
        try assertLeftToRight("13:44:03", "13:44:02", compares: .orderedDescending)
        
        try assertLeftToRight("13:44:02", "13:45:02", compares: .orderedAscending)
        try assertLeftToRight("13:44:02", "13:44:02", compares: .orderedSame)
        try assertLeftToRight("13:44:02", "13:43:02", compares: .orderedDescending)
        
        try assertLeftToRight("13:44:02", "14:44:02", compares: .orderedAscending)
        try assertLeftToRight("13:44:02", "13:44:02", compares: .orderedSame)
        try assertLeftToRight("13:44:02", "12:44:02", compares: .orderedDescending)
    }
    
    // MARK: - Tools
    
	private func assertLeftToRight(_ left: String, _ right: String, compares: ComparisonResult) throws {
        let leftTime = try FHIRTime(left)
        let rightTime = try FHIRTime(right)
        if compares == .orderedDescending {
            #expect(leftTime > rightTime)
        } else if compares == .orderedSame {
            #expect(leftTime == rightTime)
        } else {
            #expect(leftTime < rightTime)
        }
    }
}
