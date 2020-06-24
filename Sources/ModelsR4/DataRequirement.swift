//
//  DataRequirement.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/DataRequirement)
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
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The type of the required data
	public var type: FHIRPrimitive<FHIRString>
	
	/// The profile of the required data
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Indicates specific structure elements that are referenced by the knowledge module
	public var mustSupport: [FHIRPrimitive<FHIRString>]?
	
	/// What codes are expected
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// What dates/date ranges are expected
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Number of results
	public var limit: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Order of the results
	public var sort: [DataRequirementSort]?
	
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
							limit: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							mustSupport: [FHIRPrimitive<FHIRString>]? = nil,
							profile: [FHIRPrimitive<Canonical>]? = nil,
							sort: [DataRequirementSort]? = nil,
							subject: SubjectX? = nil,
							type: FHIRPrimitive<FHIRString>)
	{
		self.init(type: type)
		self.codeFilter = codeFilter
		self.dateFilter = dateFilter
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.mustSupport = mustSupport
		self.profile = profile
		self.sort = sort
		self.subject = subject
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeFilter
		case dateFilter
		case limit; case _limit
		case mustSupport; case _mustSupport
		case profile; case _profile
		case sort
		case subjectCodeableConcept
		case subjectReference
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.codeFilter = try [DataRequirementCodeFilter](from: _container, forKeyIfPresent: .codeFilter)
		self.dateFilter = try [DataRequirementDateFilter](from: _container, forKeyIfPresent: .dateFilter)
		self.limit = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .limit, auxiliaryKey: ._limit)
		self.mustSupport = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.sort = try [DataRequirementSort](from: _container, forKeyIfPresent: .sort)
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		self.subject = _t_subject
		self.type = try FHIRPrimitive<FHIRString>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try codeFilter?.encode(on: &_container, forKey: .codeFilter)
		try dateFilter?.encode(on: &_container, forKey: .dateFilter)
		try limit?.encode(on: &_container, forKey: .limit, auxiliaryKey: ._limit)
		try mustSupport?.encode(on: &_container, forKey: .mustSupport, auxiliaryKey: ._mustSupport)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try sort?.encode(on: &_container, forKey: .sort)
		if let _enum = subject {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .subjectReference)
			}
		}
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
		    && limit == _other.limit
		    && mustSupport == _other.mustSupport
		    && profile == _other.profile
		    && sort == _other.sort
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(codeFilter)
		hasher.combine(dateFilter)
		hasher.combine(limit)
		hasher.combine(mustSupport)
		hasher.combine(profile)
		hasher.combine(sort)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 What codes are expected.
 
 Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
 of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
 */
open class DataRequirementCodeFilter: Element {
	
	/// A code-valued attribute to filter on
	public var path: FHIRPrimitive<FHIRString>?
	
	/// A coded (token) parameter to search on
	public var searchParam: FHIRPrimitive<FHIRString>?
	
	/// Valueset for the filter
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// What code is expected
	public var code: [Coding]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [Coding]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>? = nil,
							searchParam: FHIRPrimitive<FHIRString>? = nil,
							valueSet: FHIRPrimitive<Canonical>? = nil)
	{
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.searchParam = searchParam
		self.valueSet = valueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case path; case _path
		case searchParam; case _searchParam
		case valueSet; case _valueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.searchParam = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParam, auxiliaryKey: ._searchParam)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try searchParam?.encode(on: &_container, forKey: .searchParam, auxiliaryKey: ._searchParam)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
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
		return code == _other.code
		    && path == _other.path
		    && searchParam == _other.searchParam
		    && valueSet == _other.valueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(path)
		hasher.combine(searchParam)
		hasher.combine(valueSet)
	}
}

/**
 What dates/date ranges are expected.
 
 Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
 Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
 */
open class DataRequirementDateFilter: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case duration(Duration)
		case period(Period)
	}
	
	/// A date-valued attribute to filter on
	public var path: FHIRPrimitive<FHIRString>?
	
	/// A date valued parameter to search on
	public var searchParam: FHIRPrimitive<FHIRString>?
	
	/// The value of the filter, as a Period, DateTime, or Duration value
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>? = nil,
							searchParam: FHIRPrimitive<FHIRString>? = nil,
							value: ValueX? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.searchParam = searchParam
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case path; case _path
		case searchParam; case _searchParam
		case valueDateTime; case _valueDateTime
		case valueDuration
		case valuePeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.searchParam = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParam, auxiliaryKey: ._searchParam)
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
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try searchParam?.encode(on: &_container, forKey: .searchParam, auxiliaryKey: ._searchParam)
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
		    && searchParam == _other.searchParam
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(path)
		hasher.combine(searchParam)
		hasher.combine(value)
	}
}

/**
 Order of the results.
 
 Specifies the order of the results to be returned.
 */
open class DataRequirementSort: Element {
	
	/// The name of the attribute to perform the sort
	public var path: FHIRPrimitive<FHIRString>
	
	/// The direction of the sort, ascending or descending.
	public var direction: FHIRPrimitive<SortDirection>
	
	/// Designated initializer taking all required properties
	public init(direction: FHIRPrimitive<SortDirection>, path: FHIRPrimitive<FHIRString>) {
		self.direction = direction
		self.path = path
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							direction: FHIRPrimitive<SortDirection>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							path: FHIRPrimitive<FHIRString>)
	{
		self.init(direction: direction, path: path)
		self.`extension` = `extension`
		self.id = id
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case direction; case _direction
		case path; case _path
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.direction = try FHIRPrimitive<SortDirection>(from: _container, forKey: .direction, auxiliaryKey: ._direction)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try direction.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataRequirementSort else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return direction == _other.direction
		    && path == _other.path
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(direction)
		hasher.combine(path)
	}
}
