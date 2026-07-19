//
//  ParsingTestSupport.swift
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
import struct ModelsR4.FHIRTime
import Testing


protocol ThrowingStringParseable {
	init(_ string: String) throws
}

extension ModelsR5.FHIRDate: ThrowingStringParseable {}
extension ModelsR5.DateTime: ThrowingStringParseable {}
extension ModelsR5.Instant: ThrowingStringParseable {}
extension ModelsR5.InstantDate: ThrowingStringParseable {}
extension ModelsR5.FHIRTime: ThrowingStringParseable {}
extension ModelsR4.FHIRTime: ThrowingStringParseable {}
extension Foundation.TimeZone: ThrowingStringParseable {
    init(_ string: String) throws {
        try self.init(fhirTimeZoneString: string)
    }
}


func parseFHIR<T: ThrowingStringParseable>(_ string: String, as type: T.Type) throws -> T {
	try T(string)
}


func expectParseError<T: ThrowingStringParseable>(
	parsing string: String,
	as type: T.Type,
	sourceLocation: SourceLocation = #_sourceLocation
) {
    #expect(throws: (any Error).self, sourceLocation: sourceLocation) {
        try T(string)
    }
}
