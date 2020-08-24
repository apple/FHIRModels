//
//  FHIRPrimitive.swift
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
 Protocol for all FHIR primitives.
 */
public protocol FHIRPrimitiveType: FHIRType {
}

extension FHIRPrimitiveType {
	
	public func asPrimitive(with id: String? = nil, extension: [Extension]? = nil) -> FHIRPrimitive<Self> {
		return FHIRPrimitive(self, id: id, extension: `extension`)
	}
}

// MARK: -

public protocol FHIRPrimitiveProtocol: Codable {
	
	associatedtype PrimitiveType: FHIRPrimitiveType
	
	var value: PrimitiveType? { get set }
	
	var id: String? { get set }
	
	var `extension`: [Extension]? { get set }
	
	var isNull: Bool { get }
	
	var hasPrimitiveData: Bool { get }
}

extension FHIRPrimitiveProtocol {
	
	/**
	 Returns an array of Extensions matching the desired URL. An empty array is returned if there are no extensions that
	 match or there are no extensions at all.
	 */
	public func extensions(for url: String) -> [Extension] {
		let matches = `extension`?.filter {
			return $0.url.value?.url.absoluteString == url
		}
		return matches ?? []
	}
}

// MARK: - FHIRPrimitive

/**
 Wrap any of the FHIR primitive types.
 */
public struct FHIRPrimitive<PrimitiveType: FHIRPrimitiveType>: FHIRPrimitiveProtocol {
	
	public var value: PrimitiveType?
	
	public var id: String?
	
	public var `extension`: [Extension]?
	
	public init(_ value: PrimitiveType? = nil, id: String? = nil, extension: [Extension]? = nil) {
		self.value = value
		self.id = id
		self.extension = `extension`
	}
	
	/// Returns `true` if the receiver has neither a value nor an id nor extensions
	public var isNull: Bool {
		return value == nil && id == nil && `extension` == nil
	}
	
	/// Returns `true` if the receiver has either an id or extensions
	public var hasPrimitiveData: Bool {
		return id != nil || `extension` != nil
	}
	
	/// Convenience debug description
	public var primitiveDescription: String {
		let valueStr = (value == nil) ? "nil value" : "value=\"\(value!)\""
		let idStr = (id == nil) ? "nil id" : "id=\"\(id!)\""
		let extStr = (`extension` == nil) ? "nil extensions" : "extensions=\"\(`extension`!.count)\""
		return "<\(type(of: self)) \(valueStr), \(idStr), \(extStr)>"
	}
}

extension FHIRPrimitive: Hashable {
	
	public static func ==(l: FHIRPrimitive<PrimitiveType>, r: FHIRPrimitive<PrimitiveType>) -> Bool {
		if l.value != r.value {
			return false
		}
		if l.id != r.id {
			return false
		}
		if l.extension != r.extension {
			return false
		}
		return true
	}
	
	public static func ==(l: FHIRPrimitive<PrimitiveType>, r: PrimitiveType) -> Bool {
		return l.value == r
	}
	
	public static func ==(l: PrimitiveType, r: FHIRPrimitive<PrimitiveType>) -> Bool {
		return l == r.value
	}
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(value)
		hasher.combine(id)
		hasher.combine(`extension`)
	}
}

// MARK: - Codable

extension FHIRPrimitive: Codable {
	
	private enum CodingKeys: String, CodingKey {
		case id
		case `extension`
	}
	
	/**
	 Decode the primitive from the given container. Right now this is tailored for FHIR's JSON representation and it
	 will look for its value on "key" and id or extensions on "_key".
	 */
	public init<K: CodingKey>(from parentContainer: KeyedDecodingContainer<K>, forKey key: K, auxiliaryKey: K? = nil) throws {
		let value = try parentContainer.decodeIfPresent(PrimitiveType.self, forKey: key)
		if let auxiliaryKey = auxiliaryKey, let primitive = try parentContainer.decodeIfPresent(Self.self, forKey: auxiliaryKey) {
			self.init(value, id: primitive.id, extension: primitive.extension)
		} else if let value = value {
			self.init(value)
		} else {
			throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "Must have a value for \"\(key)\" but have none"))
		}
	}
	
	/**
	 Decode the primitive from the given container. Right now this is tailored for FHIR's JSON representation and it
	 will look for its value on "key" and id or extensions on "_key".
	 */
	public init?<K: CodingKey>(from parentContainer: KeyedDecodingContainer<K>, forKeyIfPresent key: K, auxiliaryKey: K? = nil) throws {
		let value = try parentContainer.decodeIfPresent(PrimitiveType.self, forKey: key)
		if let auxiliaryKey = auxiliaryKey, let primitive = try parentContainer.decodeIfPresent(Self.self, forKey: auxiliaryKey) {
			self.init(value, id: primitive.id, extension: primitive.extension)
		} else if let value = value {
			self.init(value)
		} else {
			return nil
		}
	}
	
	/**
	 Encode the primitive to the given parent container. Right now this is tailored for FHIR's JSON representation and
	 will encode its value to "key" and its id and/or extension, if any, to "_key" given with auxiliaryKey.
	 */
	public func encode<K>(on parentContainer: inout KeyedEncodingContainer<K>, forKey key: K, auxiliaryKey: K? = nil) throws {
		if let value = value {
			try parentContainer.encode(value, forKey: key)
		}
		if hasPrimitiveData {
			if let auxiliaryKey = auxiliaryKey {
				try parentContainer.encode(self, forKey: auxiliaryKey)
			} else {
				throw EncodingError.invalidValue(self, EncodingError.Context(codingPath: [key], debugDescription: "Have id or extension but was not provided an encoding key to serialize to"))
			}
		}
	}
}

// MARK: - Array<FHIRPrimitiveProtocol>

extension Array where Element: FHIRPrimitiveProtocol {
	
	public init<K: CodingKey>(from parentContainer: KeyedDecodingContainer<K>, forKey key: K, auxiliaryKey: K? = nil) throws {
		// This is thorny. See testDecodePrimitiveArrayWithID() and testDecodePrimitiveArrayWithOnlyExtension()
		let values = try parentContainer.decodeIfPresent([Element.PrimitiveType?].self, forKey: key)
		let primitives = (auxiliaryKey != nil) ? try parentContainer.decodeIfPresent([Element?].self, forKey: auxiliaryKey!) : nil
		if let values = values {
			if let primitives = primitives {
				var arr: [Element] = []
				for (i, v) in values.enumerated() {
					let p = primitives[safe: i]
					if let v = v {
						arr.append(v.asPrimitive(with: p??.id, extension: p??.extension) as! Element)
					} else if let pidx = p, let p = pidx {
						arr.append(p)
					}
				}
				self = arr
			} else {
				self = values.compactMap { $0?.asPrimitive() as? Element }
			}
		} else if let primitives = primitives {
			self = primitives.compactMap { $0 }
		} else {
			throw DecodingError.keyNotFound(key, DecodingError.Context(codingPath: [key], debugDescription: "Must have a value for \"\(key)\" but have none"))
		}
	}
	
	public init?<K: CodingKey>(from parentContainer: KeyedDecodingContainer<K>, forKeyIfPresent key: K, auxiliaryKey: K? = nil) throws {
		// This is thorny. See testDecodePrimitiveArrayWithID() and testDecodePrimitiveArrayWithOnlyExtension()
		let values = try parentContainer.decodeIfPresent([Element.PrimitiveType?].self, forKey: key)
		let primitives = (auxiliaryKey != nil) ? try parentContainer.decodeIfPresent([Element?].self, forKey: auxiliaryKey!) : nil
		if let values = values {
			if let primitives = primitives {
				var arr: [Element] = []
				for (i, v) in values.enumerated() {
					let p = primitives[safe: i]
					if let v = v {
						arr.append(v.asPrimitive(with: p??.id, extension: p??.extension) as! Element)
					} else if let pidx = p, let p = pidx {
						arr.append(p)
					}
				}
				self = arr
			} else {
				self = values.compactMap { $0?.asPrimitive() as? Element }
			}
		} else if let primitives = primitives {
			self = primitives.compactMap { $0 }
		} else {
			return nil
		}
	}
	
	public func encode<K>(on parentContainer: inout KeyedEncodingContainer<K>, forKey key: K, auxiliaryKey: K? = nil) throws {
		var values = [Element.PrimitiveType?]()
		var primitives = [Element?]()
		var hasNonnullValues = false
		var hasNonnullPrimitives = false
		for element in self {
			guard !element.isNull else {
				continue
			}
			values.append(element.value)
			primitives.append(element.hasPrimitiveData ? element : nil)
			hasNonnullValues = hasNonnullValues || (element.value != nil)
			hasNonnullPrimitives = hasNonnullPrimitives || element.hasPrimitiveData
		}
		
		if hasNonnullValues {
			try parentContainer.encode(values, forKey: key)
		}
		if hasNonnullPrimitives {
			if let auxiliaryKey = auxiliaryKey {
				try parentContainer.encode(primitives, forKey: auxiliaryKey)
			} else {
				throw EncodingError.invalidValue(self, EncodingError.Context(codingPath: [key], debugDescription: "Have id or extension elements but was not provided an encoding key to serialize to"))
			}
		}
	}
}

extension Collection {
	
	subscript(safe index: Index) -> Iterator.Element? {
		guard indices.contains(index) else {
			return nil
		}
		return self[index]
	}
}

// MARK: - ExpressibleByLiteral

extension FHIRPrimitive: ExpressibleByStringLiteral, ExpressibleByUnicodeScalarLiteral, ExpressibleByExtendedGraphemeClusterLiteral where PrimitiveType: ExpressibleByStringLiteral {
	
	public typealias StringLiteralType = PrimitiveType.StringLiteralType
	
	public typealias UnicodeScalarLiteralType = PrimitiveType.UnicodeScalarLiteralType
	
	public typealias ExtendedGraphemeClusterLiteralType = PrimitiveType.ExtendedGraphemeClusterLiteralType
	
	public init(stringLiteral value: StringLiteralType) {
		self.init(PrimitiveType(stringLiteral: value))
	}
	
	public init(unicodeScalarLiteral value: PrimitiveType.UnicodeScalarLiteralType) {
		self.init(PrimitiveType(unicodeScalarLiteral: value))
	}
	
	public init(extendedGraphemeClusterLiteral value: PrimitiveType.ExtendedGraphemeClusterLiteralType) {
		self.init(PrimitiveType(extendedGraphemeClusterLiteral: value))
	}
}

extension FHIRPrimitive: ExpressibleByIntegerLiteral where PrimitiveType: ExpressibleByIntegerLiteral {
	
	public typealias IntegerLiteralType = PrimitiveType.IntegerLiteralType
	
	public init(integerLiteral value: PrimitiveType.IntegerLiteralType) {
		self.init(PrimitiveType(integerLiteral: value))
	}
}

extension FHIRPrimitive: ExpressibleByFloatLiteral where PrimitiveType: ExpressibleByFloatLiteral {
	
	public typealias FloatLiteralType = PrimitiveType.FloatLiteralType
	
	public init(floatLiteral value: PrimitiveType.FloatLiteralType) {
		self.init(PrimitiveType(floatLiteral: value))
	}
}
