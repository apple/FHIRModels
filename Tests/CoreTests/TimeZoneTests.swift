//
//  TimeZoneTests.swift
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
import Testing


@Suite(.serialized)
struct TimeZoneTests {
    private struct TimeRef: ExpressibleAsNSDate {
        func asNSDate() throws -> Date {
            Date()
        }
    }
    
    
    @Test
    func testRendering() throws {
        var timezone = try #require(TimeZone(secondsFromGMT: 0))
        #expect(timezone.gmtOffsetString(for: TimeRef()) == "Z")
        
        timezone = try #require(TimeZone(secondsFromGMT: -7200))
        #expect(timezone.gmtOffsetString(for: TimeRef()) == "-02:00")
        
        timezone = try #require(TimeZone(secondsFromGMT: 7200))
        #expect(timezone.gmtOffsetString(for: TimeRef()) == "+02:00")
    }
}


extension TimeZoneTests {
    private enum TestDescriptor {
        case success(input: String, gmtOffset: Int)
        case failure(input: String)
    }
    
    private static let corpus: [TestDescriptor] = [
        .success(input: "Z", gmtOffset: 0),
        .success(input: "+00:00", gmtOffset: 0),
        .success(input: "+00:22", gmtOffset: 1320),
        .success(input: "+09:00", gmtOffset: 32_400),
        .success(input: "-00:00", gmtOffset: 0),
        .success(input: "-02:45", gmtOffset: -9900),
        .success(input: "-11:00", gmtOffset: -39_600),
        
        .failure(input: ""),
        .failure(input: "A"),
        .failure(input: "U"),
        .failure(input: "11:00"),
        .failure(input: " 09:00"),
        
        .failure(input: "+19:00"),
        .failure(input: "-15:00"),
        
        .failure(input: "+01:0"),
        .failure(input: "+14:01"),
        .failure(input: "+07:60"),
        .failure(input: "+05:92"),
        .failure(input: "-05:60"),
        .failure(input: "-03:85"),
        
        .failure(input: "+9"),
        .failure(input: "+09"),
        .failure(input: "+2:30"),
        .failure(input: "+011:00"),
        .failure(input: "+0120"),
        .failure(input: "-04"),
        .failure(input: "-0400"),
        .failure(input: "-1500"),
        
        .failure(input: "+03:000"),
        .failure(input: "-00:010")
    ]
    
    @Test(arguments: corpus)
    private func testParsing(_ descriptor: TestDescriptor) throws {
        switch descriptor {
        case .failure(let input):
            #expect(throws: (any Error).self) {
                try TimeZone(fhirTimeZoneString: input)
            }
        case let .success(input, gmtOffset):
            let timeZone = try TimeZone(fhirTimeZoneString: input)
            #expect(timeZone == TimeZone(secondsFromGMT: gmtOffset))
            if timeZone.secondsFromGMT() != 0 { // We'll always return "Z" in this case, so can't test with +00:00 and co
                #expect(input == timeZone.gmtOffsetString(for: TimeRef()))
            }
        }
	}
}
