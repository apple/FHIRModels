//
//  ModelsR5Tests.swift
//  HealthSoftware
//
//  Copyright 2023 Apple Inc.
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

import XCTest
import ModelsR5

class ModelsR5Tests: XCTestCase {
	
	@available(OSX 10.15, *)
	@available(iOS 13.0, *)
	@available(watchOS 7.0, *)
	@available(tvOS 13.0, *)
	func testGroupResourceDecodeEncode() throws {
		let string =
			"""
			{
				"resourceType": "Group",
				"id": "101",
				"text": {
					"status": "additional",
					"div": "<div><p>Herd of 25 horses</p><p>Gender: mixed</p><p>Owner: John Smith</p></div>"
				},
				"type": "animal",
				"active": true,
				"code": {
					"text": "Horse"
				},
				"name": "John's herd",
				"quantity": 25,
				"membership": "enumerated",
				"characteristic": [
					{
						"code": {
							"text": "gender"
						},
						"valueCodeableConcept": {
							"text": "mixed"
						},
						"exclude": false
					},
					{
						"code": {
							"text": "owner"
						},
						"valueCodeableConcept": {
							"text": "John Smith"
						},
						"exclude": false
					}
				]
			}
			"""
		guard let data = string.data(using: .utf8) else {
			throw TestError.failed("encoding string to UTF8 data")
		}
		
		let decoder = JSONDecoder()
		let group = try decoder.decode(Group.self, from: data)
		XCTAssertEqual(type(of: group).resourceType, .group)
		XCTAssertEqual(group.id, "101")
		XCTAssertEqual(group.type.value, .animal)
		XCTAssertEqual(group.active, true)
		XCTAssertEqual(group.quantity, 25)
		XCTAssertEqual(group.membership.value, .enumerated)
		XCTAssertEqual(group.code?.text, "Horse")
		XCTAssertEqual(group.characteristic?.count, 2)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .withoutEscapingSlashes
		let encoded = try encoder.encode(group)
		guard let encodedString = String(data: encoded, encoding: .utf8) else {
			throw TestError.failed("decoding UTF8 data to string")
		}
		XCTAssertTrue(encodedString.contains("\"id\":\"101\""))
		XCTAssertTrue(encodedString.contains("\"type\":\"animal\""))
		XCTAssertTrue(encodedString.contains("\"active\":true"))
		XCTAssertTrue(encodedString.contains("\"quantity\":25"))
		XCTAssertTrue(encodedString.contains("\"membership\":\"enumerated\""))
		XCTAssertTrue(encodedString.contains("\"code\":{\"text\":\"Horse\"}"))
		XCTAssertTrue(encodedString.contains("\"characteristic\":["))
	}
}
