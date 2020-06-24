//
//  Canonical.swift
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
 A URI that refers to a resource by its canonical URL (resources with a url property). The canonical type differs from a
 uri in that it has special meaning in this specification, and in that it may have a version appended,
 separated by a vertical bar (|).
 
 - Note: The type canonical is not used for the actual canonical URLs that are the target of these references, but for
 the URIs that refer to them, and may have the version suffix in them. Like other URIs, elements of type canonical may
 also have #fragment references
 
 http://hl7.org/fhir/datatypes.html#canonical
 */
public struct Canonical: FHIRPrimitiveType {
	
	public var url: URL
	
	public var version: String?
	
	/**
	 Designated initializer.
	 */
	public init(_ url: URL, version: String? = nil) {
		self.url = url
		self.version = version
	}
	
	fileprivate static func parseParts(from string: String) -> (url: URL?, version: String?) {
		let parts = string.split(separator: "|", maxSplits: 1)
		if let urlPart = parts.first, let url = URL(string: String(urlPart)) {
			return (url, parts.count > 1 ? String(parts[1]) : nil)
		}
		return (nil, parts.count > 1 ? String(parts[1]) : nil)
	}
}

extension Canonical: ExpressibleByStringLiteral {
	
	public init(stringLiteral value: StringLiteralType) {
		let (url, version) = Self.parseParts(from: value)
		self.init(url ?? URL(string: "invalid:uri")!, version: version)
	}
}

extension Canonical: Codable {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		let string = try container.decode(String.self)
		let parts = string.split(separator: "|", maxSplits: 1)
		guard let urlPart = parts.first, let urlInstance = URL(string: String(urlPart)) else {
			throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: container.codingPath, debugDescription: "Invalid URL in canonical \"\(string)\""))
		}
		self.url = urlInstance
		self.version = parts.count > 1 ? String(parts[1]) : nil
	}
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		if let version = version {
			try container.encode("\(url.absoluteString)|\(version)")
		} else {
			try container.encode(url)
		}
	}
}

extension Canonical: CustomStringConvertible {
	
	public var description: String {
		if let version = version, !version.isEmpty {
			return "\(url.absoluteString)|\(version)"
		}
		return url.absoluteString
	}
}

extension Canonical: Equatable {
	
	public static func ==(l: Canonical, r: Canonical) -> Bool {
		if l.url != r.url {
			return false
		}
		if l.version != r.version {
			return false
		}
		return true
	}
	
	public static func ==(l: String, r: Canonical) -> Bool {
		return l == r.description
	}
	
	public static func ==(l: Canonical, r: String) -> Bool {
		return l.description == r
	}
}

// MARK: -

extension String {
	
	public func asFHIRCanonical() -> Canonical? {
		let (parsedURL, version) = Canonical.parseParts(from: self)
		guard let url = parsedURL else {
			return nil
		}
		return Canonical(url, version: version)
	}
	
	public func asFHIRCanonicalPrimitive() -> FHIRPrimitive<Canonical>? {
		guard let uri = asFHIRCanonical() else {
			return nil
		}
		return FHIRPrimitive(uri)
	}
}
