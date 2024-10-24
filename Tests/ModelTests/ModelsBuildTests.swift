//
//  ModelsBuildTests.swift
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

import Foundation
import ModelsBuild
import Testing

struct ModelsBuildTests {
	
	@available(OSX 10.15, *)
	@available(iOS 13.0, *)
	@available(watchOS 7.0, *)
	@available(tvOS 13.0, *)
	@Test
    func groupResourceDecodeEncode() throws {
		let string =
            """
            {
                "characteristic": [{
                    "code": {
                        "text": "gender"
                    },
                    "exclude": false,
                    "valueCodeableConcept": {"text": "female"}
                }],
                "code": {
                    "coding": [{
                        "code": "388393002",
                        "display": "Genus Sus (organism)",
                        "system": "http://snomed.info/sct"
                    },
                    {
                        "code": "POR",
                        "display": "porcine",
                        "system": "https://www.aphis.usda.gov"
                    }],
                    "text": "Porcine"
                },
                "extension": [{
                    "url": "http://example.org/fhir/StructureDefinition/owner",
                    "valueReference": {
                        "display": "Peter Chalmers",
                        "reference": "RelatedPerson/peter"
                    }
                }],
                "id": "herd1",
                "identifier": [{
                    "system": "https://vetmed.iastate.edu/vdl",
                    "value": "20171120-1234"
                }],
                "membership": "enumerated",
                "name": "Breeding herd",
                "quantity": 2500,
                "resourceType": "Group",
                "status": "active",
                "type": "animal"
            }
            """
		guard let data = string.data(using: .utf8) else {
			throw TestError.failed("encoding string to UTF8 data")
		}
		
		let decoder = JSONDecoder()
		let group = try decoder.decode(Group.self, from: data)
		#expect(type(of: group).resourceType == .group)
		#expect(group.id == "herd1")
        #expect(try #require(group.status) == .active)
        #expect(group.type?.value == .animal)
		#expect(group.quantity == 2500)
		#expect(group.code?.text == "Porcine")
		#expect(group.characteristic?.count == 1)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .withoutEscapingSlashes
		let encoded = try encoder.encode(group)
		guard let encodedString = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("decoding UTF8 data to string")
		}
        #expect(encodedString.contains("\"id\":\"herd1\""))
        #expect(encodedString.contains("\"type\":\"animal\""))
        #expect(encodedString.contains("\"status\":\"active\""))
        #expect(encodedString.contains("\"membership\":\"enumerated\""))
        #expect(encodedString.contains("\"name\":\"Breeding herd\""))
        #expect(encodedString.contains("\"quantity\":25"))
        #expect(encodedString.contains("\"text\":\"Porcine\""))
        #expect(encodedString.contains("\"system\":\"http://snomed.info/sct\""))
        #expect(encodedString.contains("\"characteristic\":["))
	}
}
