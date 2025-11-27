//
//  Base64Binary.swift
//  HealthSoftware
//
//  2020, Apple Inc.
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
import FMCore

/**
 A stream of bytes, base64 encoded (RFC 4648)
 
 http://hl7.org/fhir/datatypes.html#base64Binary
 */
public struct Base64Binary: FHIRPrimitiveType {
	
	public var dataString: String
	
	/**
	 Designated initializer.
	 */
	public init(_ dataString: String) {
		self.dataString = dataString
	}
	
	public init?(with data: Data) {
		guard let string = String(data: data, encoding: .utf8) else {
			return nil
		}
		self.dataString = string
	}
	
	public func data(using encoding: String.Encoding = .utf8) -> Data? {
		return dataString.data(using: encoding)
	}
}

extension Base64Binary: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		self.init(value)
	}
}

extension Base64Binary: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.dataString = try container.decode(String.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(dataString)
	}
}

extension Base64Binary: Equatable {
	
	public static func ==(l: Base64Binary, r: Base64Binary) -> Bool {
		return l.dataString == r.dataString
	}
}
