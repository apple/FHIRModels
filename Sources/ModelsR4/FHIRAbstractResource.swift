//
//  FHIRAbstractResource.swift
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
 Base class for all FHIR resources.
 */
open class FHIRAbstractResource: FHIRType {
	
	open class var resourceType: ResourceType { return .resource }
	
	public init() {}
	
	// MARK: Codable
	
	private enum ValidKeys: String, CodingKey {
		case resourceType
	}
	/*
	public init(from decoder: Decoder) throws {
		// We _could_ enforce resourceType checking here, let's rely on ResourceProxy on that for now so we can instantiate custom resources
		// as `Resource`
	}	//	*/
	
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: ValidKeys.self)
		try _container.encode(type(of: self).resourceType, forKey: .resourceType)
	}
	
	// MARK: Custom String Convertible
	
	public var description: String {
		return "<\(type(of: self).resourceType)>"
	}

	// MARK: Equatable & Hashable
	
	public static func ==(l: FHIRAbstractResource, r: FHIRAbstractResource) -> Bool {
		return l.isEqual(to: r)
	}
	
	public func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? FHIRAbstractResource else {
			return false
		}
		guard type(of: self) == type(of: _other) else {
			return false
		}
		return type(of: self).resourceType == type(of: _other).resourceType
	}
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(type(of: self).resourceType)
	}
}
