//
//  DataRequirement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DataRequirement)
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

import FMCore

/**
 Describes a required data item.
 
 Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of
 the data.
 */
open class DataRequirement: Element {
	
	/// The type of the required data
	public var type: FHIRPrimitive<FHIRString>
	
	/// The profile of the required data
	public var profile: [FHIRPrimitive<FHIRURI>]?
	
	/// Indicates that specific structure elements are referenced by the knowledge module
	public var mustSupport: [FHIRPrimitive<FHIRString>]?
	
	/// What codes are expected
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// What dates/date ranges are expected
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<FHIRString>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							codeFilter: [DataRequirementCodeFilter]? = nil,
							dateFilter: [DataRequirementDateFilter]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mustSupport: [FHIRPrimitive<FHIRString>]? = nil,
							profile: [FHIRPrimitive<FHIRURI>]? = nil,
							type: FHIRPrimitive<FHIRString>)
	{
		self.init(type: type)
		self.codeFilter = codeFilter
		self.dateFilter = dateFilter
		self.`extension` = `extension`
		self.id = id
		self.mustSupport = mustSupport
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeFilter
		case dateFilter
		case mustSupport; case _mustSupport
		case profile; case _profile
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.codeFilter = try [DataRequirementCodeFilter](from: _container, forKeyIfPresent: .codeFilter)
		self.dateFilter = try [DataRequirementDateFilter](from: _container, forKeyIfPresent: .dateFilter)
		self.mustSupport = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.profile = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try codeFilter?.encode(on: &_container, forKey: .codeFilter)
		try dateFilter?.encode(on: &_container, forKey: .dateFilter)
		try mustSupport?.encode(on: &_container, forKey: .mustSupport, auxiliaryKey: ._mustSupport)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataRequirement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return codeFilter == _other.codeFilter
		    && dateFilter == _other.dateFilter
		    && mustSupport == _other.mustSupport
		    && profile == _other.profile
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(codeFilter)
		hasher.combine(dateFilter)
		hasher.combine(mustSupport)
		hasher.combine(profile)
		hasher.combine(type)
	}
}

/**
 What codes are expected.
 
 Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
 of the data.
 */
open class DataRequirementCodeFilter: Element {
	
	/// All possible types for "valueSet[x]"
	public enum ValueSetX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The code-valued attribute of the filter
	public var path: FHIRPrimitive<FHIRString>
	
	/// Valueset for the filter
	/// One of `valueSet[x]`
	public var valueSet: ValueSetX?
	
	/// What code is expected
	public var valueCode: [FHIRPrimitive<FHIRString>]?
	
	/// What Coding is expected
	public var valueCoding: [Coding]?
	
	/// What CodeableConcept is expected
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(path: FHIRPrimitive<FHIRString>) {
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>,
							valueCode: [FHIRPrimitive<FHIRString>]? = nil,
							valueCodeableConcept: [CodeableConcept]? = nil,
							valueCoding: [Coding]? = nil,
							valueSet: ValueSetX? = nil)
	{
		self.init(path: path)
		self.`extension` = `extension`
		self.id = id
		self.valueCode = valueCode
		self.valueCodeableConcept = valueCodeableConcept
		self.valueCoding = valueCoding
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case path; case _path
		case valueCode; case _valueCode
		case valueCodeableConcept
		case valueCoding
		case valueSetReference
		case valueSetString; case _valueSetString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		self.valueCode = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .valueCode, auxiliaryKey: ._valueCode)
		self.valueCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .valueCodeableConcept)
		self.valueCoding = try [Coding](from: _container, forKeyIfPresent: .valueCoding)
		var _t_valueSet: ValueSetX? = nil
		if let valueSetString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueSetString, auxiliaryKey: ._valueSetString) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetString, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .string(valueSetString)
		}
		if let valueSetReference = try Reference(from: _container, forKeyIfPresent: .valueSetReference) {
			if _t_valueSet != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueSetReference, in: _container, debugDescription: "More than one value provided for \"valueSet\"")
			}
			_t_valueSet = .reference(valueSetReference)
		}
		self.valueSet = _t_valueSet
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try valueCode?.encode(on: &_container, forKey: .valueCode, auxiliaryKey: ._valueCode)
		try valueCodeableConcept?.encode(on: &_container, forKey: .valueCodeableConcept)
		try valueCoding?.encode(on: &_container, forKey: .valueCoding)
		if let _enum = valueSet {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueSetString, auxiliaryKey: ._valueSetString)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueSetReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataRequirementCodeFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return path == _other.path
		    && valueCode == _other.valueCode
		    && valueCodeableConcept == _other.valueCodeableConcept
		    && valueCoding == _other.valueCoding
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(path)
		hasher.combine(valueCode)
		hasher.combine(valueCodeableConcept)
		hasher.combine(valueCoding)
		hasher.combine(valueSet)
	}
}

/**
 What dates/date ranges are expected.
 
 Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
 */
open class DataRequirementDateFilter: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
	}
	
	/// The date-valued attribute of the filter
	public var path: FHIRPrimitive<FHIRString>
	
	/// The value of the filter, as a Period, DateTime, or Duration value
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	public init(path: FHIRPrimitive<FHIRString>) {
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>,
							value: ValueX? = nil)
	{
		self.init(path: path)
		self.`extension` = `extension`
		self.id = id
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case path; case _path
		case valueDateTime; case _valueDateTime
		case valueDuration
		case valuePeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		var _t_value: ValueX? = nil
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valuePeriod = try Period(from: _container, forKeyIfPresent: .valuePeriod) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valuePeriod, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .period(valuePeriod)
		}
		if let valueDuration = try Duration(from: _container, forKeyIfPresent: .valueDuration) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDuration, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .duration(valueDuration)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		if let _enum = value {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .valuePeriod)
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .valueDuration)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataRequirementDateFilter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return path == _other.path
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(path)
		hasher.combine(value)
	}
}
