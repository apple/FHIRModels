//
//  FHIRString.swift
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

/**
 Class to represent FHIR primitives representing "string", "code", "id", "markdown" and "xhtml", officially:
	
 A sequence of Unicode characters
 
 Note that strings SHALL NOT exceed 1MB (1024*1024 characters) in size. Strings SHOULD not contain Unicode character
 points below 32, except for u0009 (horizontal tab), u0010 (carriage return) and u0013 (line feed). Leading and Trailing
 whitespace is allowed, but SHOULD be removed when using the XML format. Note: This means that a string that consists
 only of whitespace could be trimmed to nothing, which would be treated as an invalid element value. Therefore strings
 SHOULD always contain non-whitespace content
 
 http://hl7.org/fhir/datatypes.html#string
 http://hl7.org/fhir/datatypes.html#code
 
 For `id`: Any combination of upper- or lower-case ASCII letters ('A'..'Z', and 'a'..'z', numerals ('0'..'9'), '-' and
 '.', with a length limit of 64 characters. (This might be an integer, an un-prefixed OID, UUID or any other identifier
 pattern that meets these constraints.).
 
 Regex: [A-Za-z0-9\-\.]{1,64}
 
 http://hl7.org/fhir/datatypes.html#id
 
 For `markdown`: A FHIR string that may contain markdown syntax for optional processing by a markdown presentation
 engine, in the GFM extension of CommonMark format.
 
 http://hl7.org/fhir/datatypes.html#markdown
 */
public struct FHIRString: FHIRPrimitiveType {
	
	public var string: String
	
	/**
	 Designated initializer.
	 */
	public init(_ string: String) {
		self.string = string
	}
}

extension FHIRString: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		self.init(value)
	}
}

extension FHIRString: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		self.string = try container.decode(String.self)
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(string)
	}
}

extension FHIRString: CustomStringConvertible {
	
	public var description: String {
		return string
	}
}

extension FHIRString: Equatable {
	
	public static func ==(l: FHIRString, r: FHIRString) -> Bool {
		return l.string == r.string
	}
	
	public static func ==(l: String, r: FHIRString) -> Bool {
		return l == r.string
	}
	
	public static func ==(l: FHIRString, r: String) -> Bool {
		return l.string == r
	}
}

// MARK: -

extension String {
	
	public func asFHIRStringPrimitive() -> FHIRPrimitive<FHIRString> {
		return FHIRPrimitive(FHIRString(self))
	}
}
