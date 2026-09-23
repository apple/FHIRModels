//
//  DataRequirement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/DataRequirement)
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

/**
 Describes a required data item.
 
 Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of
 the data.
 */
public struct DataRequirement: Element {
	
	/// What codes are expected
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// What dates/date ranges are expected
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Indicates that specific structure elements are referenced by the knowledge module
	public var mustSupport: [FHIRPrimitive<FHIRString>]?
	
	/// The profile of the required data
	public var profile: [FHIRPrimitive<FHIRURI>]?
	
	/// The type of the required data
	public var type: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		codeFilter: [DataRequirementCodeFilter]? = nil,
		dateFilter: [DataRequirementDateFilter]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mustSupport: [FHIRPrimitive<FHIRString>]? = nil,
		profile: [FHIRPrimitive<FHIRURI>]? = nil,
		type: FHIRPrimitive<FHIRString>
	) {
		self.codeFilter = codeFilter
		self.dateFilter = dateFilter
		self.`extension` = `extension`
		self.id = id
		self.mustSupport = mustSupport
		self.profile = profile
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeFilter
		case dateFilter
		case `extension` = "extension"
		case id; case _id
		case mustSupport; case _mustSupport
		case profile; case _profile
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.codeFilter = try [DataRequirementCodeFilter](from: _container, forKeyIfPresent: .codeFilter)
		self.dateFilter = try [DataRequirementDateFilter](from: _container, forKeyIfPresent: .dateFilter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mustSupport = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.profile = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try codeFilter?.encode(on: &_container, forKey: .codeFilter)
		try dateFilter?.encode(on: &_container, forKey: .dateFilter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mustSupport?.encode(on: &_container, forKey: .mustSupport, auxiliaryKey: ._mustSupport)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 What codes are expected.
 
 Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
 of the data.
 */
public struct DataRequirementCodeFilter: Element {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Equatable, Hashable, Sendable {
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The code-valued attribute of the filter
	public var path: FHIRPrimitive<FHIRString>
	
	/// What code is expected
	public var valueCode: [FHIRPrimitive<FHIRString>]?
	
	/// What CodeableConcept is expected
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// What Coding is expected
	public var valueCoding: [Coding]?
	
	/// Valueset for the filter
	/// One of `valueSet[x]`
	public var valueSet: ValueSetX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>,
		valueCode: [FHIRPrimitive<FHIRString>]? = nil,
		valueCodeableConcept: [CodeableConcept]? = nil,
		valueCoding: [Coding]? = nil,
		valueSet: ValueSetX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.valueCode = valueCode
		self.valueCodeableConcept = valueCodeableConcept
		self.valueCoding = valueCoding
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case path; case _path
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCoding
		case valueSetReference
		case valueSetString; case _valueSetString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		self.valueCode = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode)
		self.valueCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCodeableConcept)
		self.valueCoding = try [Coding](from: _container, forKeyIfPresent: .valueCoding)
		self.valueSet = try Self._decodeValueSet(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try valueCode?.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		try valueCodeableConcept?.encode(on: &_container, forKey: .valueCodeableConcept)
		try valueCoding?.encode(on: &_container, forKey: .valueCoding)
		if let _enum = valueSet {
		switch _enum {
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueSetReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueSetString, auxiliaryKey: ._valueSetString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValueSet(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueSetX? {
		var _t_valueSet: ValueSetX? = nil
		if let valueSetReference = try Reference(from: _container, forKeyIfPresent: .valueSetReference) {
			_t_valueSet = .reference(valueSetReference)
		}
		if let valueSetString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueSetString, auxiliaryKey: ._valueSetString) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetString, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .string(valueSetString)
		}
		return _t_valueSet
	}
}

/**
 What dates/date ranges are expected.
 
 Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
 */
public struct DataRequirementDateFilter: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
	}
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The date-valued attribute of the filter
	public var path: FHIRPrimitive<FHIRString>
	
	/// The value of the filter, as a Period, DateTime, or Duration value
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case path; case _path
		case valueDateTime; case _valueDateTime
		case valueDuration
		case valuePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		if let _enum = value {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .valueDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .valuePeriod)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		return _t_value
	}
}
