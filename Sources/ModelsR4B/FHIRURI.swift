//
//  FHIRURI.swift
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

import FMCore
import Foundation

/**
 A Uniform Resource Identifier Reference (RFC 3986). Note: URIs are case sensitive.
 
 This class represents all FHIR `uri` datatypes:
 - http://hl7.org/fhir/datatypes.html#uri
 - http://hl7.org/fhir/datatypes.html#url
 - http://hl7.org/fhir/datatypes.html#uuid
 - http://hl7.org/fhir/datatypes.html#oid
 
 For UUID (aka GUID) (`urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7`) use all lowercase
 */
public struct FHIRURI: FHIRPrimitiveType {
	
	public var url: URL
	
	/**
	 Designated initializer.
	 */
	public init(_ url: URL) {
		self.url = url
	}
}

extension FHIRURI: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		let url = URL(string: value) ?? URL(string: "invalid:uri")!
		self.init(url)
	}
}

extension FHIRURI: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.url = try container.decode(URL.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(url)
	}
}

extension FHIRURI: CustomStringConvertible {
	
	public var description: String {
		return url.absoluteString
	}
}

extension FHIRURI: Equatable {
	
	public static func ==(l: FHIRURI, r: FHIRURI) -> Bool {
		return l.url == r.url
	}
	
	public static func ==(l: URL, r: FHIRURI) -> Bool {
		return l == r.url
	}
	
	public static func ==(l: FHIRURI, r: URL) -> Bool {
		return l.url == r
	}
}

// MARK: -

extension String {
	
	public func asFHIRURI() -> FHIRURI? {
		guard let url = URL(string: self) else {
			return nil
		}
		return FHIRURI(url)
	}
	
	public func asFHIRURIPrimitive() -> FHIRPrimitive<FHIRURI>? {
		guard let uri = asFHIRURI() else {
			return nil
		}
		return FHIRPrimitive(uri)
	}
}

extension URL {
	
	public func asFHIRURIPrimitive() -> FHIRPrimitive<FHIRURI> {
		return FHIRPrimitive(FHIRURI(self))
	}
}
