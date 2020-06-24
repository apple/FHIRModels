//
//  FHIRType.swift
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

/**
 The base protocol for all FHIR objects.
 */
public protocol FHIRType: Codable, Hashable {
	
}

extension FHIRType {
	
	public init<K>(from parentContainer: KeyedDecodingContainer<K>, forKey key: K) throws {
		self = try parentContainer.decode(Self.self, forKey: key)
	}
	
	public init?<K>(from parentContainer: KeyedDecodingContainer<K>, forKeyIfPresent key: K) throws {
		guard let decoded = try parentContainer.decodeIfPresent(Self.self, forKey: key) else {
			return nil
		}
		self = decoded
	}
	
	public func encode<K>(on parentContainer: inout KeyedEncodingContainer<K>, forKey key: K) throws {
		try parentContainer.encode(self, forKey: key)
	}
}

extension Array where Element: FHIRType {
	
	public init<K>(from container: KeyedDecodingContainer<K>, forKey key: K) throws {
		self = try container.decode(Self.self, forKey: key)
	}
	
	public init?<K>(from container: KeyedDecodingContainer<K>, forKeyIfPresent key: K) throws {
		guard let decoded = try container.decodeIfPresent(Self.self, forKey: key) else {
			return nil
		}
		self = decoded
	}
	
	public func encode<K>(on parentContainer: inout KeyedEncodingContainer<K>, forKey key: K) throws {
		try parentContainer.encode(self, forKey: key)
	}
}
