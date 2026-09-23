//
//  DataRequirement.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DataRequirement)
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
public struct DataRequirement: DataType {
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// What codes are expected
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// What dates/date ranges are expected
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Number of results
	public var limit: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Indicates specific structure elements that are referenced by the knowledge module
	public var mustSupport: [FHIRPrimitive<FHIRString>]?
	
	/// The profile of the required data
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Order of the results
	public var sort: [DataRequirementSort]?
	
	/// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// The type of the required data, specified as the type name of a resource. For profiles, this value is set to the
	/// type of the base resource of the profile.
	public var type: FHIRPrimitive<ResourceType>
	
	/// What values are expected
	public var valueFilter: [DataRequirementValueFilter]?
	
	/// Designated initializer
	public init(
		codeFilter: [DataRequirementCodeFilter]? = nil,
		dateFilter: [DataRequirementDateFilter]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		mustSupport: [FHIRPrimitive<FHIRString>]? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		sort: [DataRequirementSort]? = nil,
		subject: SubjectX? = nil,
		type: FHIRPrimitive<ResourceType>,
		valueFilter: [DataRequirementValueFilter]? = nil
	) {
		self.codeFilter = codeFilter
		self.dateFilter = dateFilter
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.mustSupport = mustSupport
		self.profile = profile
		self.sort = sort
		self.subject = subject
		self.type = type
		self.valueFilter = valueFilter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case codeFilter
		case dateFilter
		case `extension` = "extension"
		case id; case _id
		case limit; case _limit
		case mustSupport; case _mustSupport
		case profile; case _profile
		case sort
		case subjectCodeableConcept
		case subjectReference
		case type; case _type
		case valueFilter
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
		self.limit = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .limit, auxiliaryKey: ._limit)
		self.mustSupport = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .mustSupport, auxiliaryKey: ._mustSupport)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.sort = try [DataRequirementSort](from: _container, forKeyIfPresent: .sort)
		self.subject = try Self._decodeSubject(from: _container)
		self.type = try FHIRPrimitive<ResourceType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.valueFilter = try [DataRequirementValueFilter](from: _container, forKeyIfPresent: .valueFilter)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try codeFilter?.encode(on: &_container, forKey: .codeFilter)
		try dateFilter?.encode(on: &_container, forKey: .dateFilter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
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
		try valueFilter?.encode(on: &_container, forKey: .valueFilter)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSubject(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubjectX? {
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		return _t_subject
	}
}

/**
 What codes are expected.
 
 Code filters specify additional constraints on the data, specifying the value set of interest for a particular element
 of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
 */
public struct DataRequirementCodeFilter: Element {
	
	/// What code is expected
	public var code: [Coding]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A code-valued attribute to filter on
	public var path: FHIRPrimitive<FHIRString>?
	
	/// A coded (token) parameter to search on
	public var searchParam: FHIRPrimitive<FHIRString>?
	
	/// ValueSet for the filter
	public var valueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		code: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		searchParam: FHIRPrimitive<FHIRString>? = nil,
		valueSet: FHIRPrimitive<Canonical>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case path; case _path
		case searchParam; case _searchParam
		case valueSet; case _valueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.searchParam = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParam, auxiliaryKey: ._searchParam)
		self.valueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .valueSet, auxiliaryKey: ._valueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try searchParam?.encode(on: &_container, forKey: .searchParam, auxiliaryKey: ._searchParam)
		try valueSet?.encode(on: &_container, forKey: .valueSet, auxiliaryKey: ._valueSet)
	}
}

/**
 What dates/date ranges are expected.
 
 Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
 Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
 */
public struct DataRequirementDateFilter: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A date-valued attribute to filter on
	public var path: FHIRPrimitive<FHIRString>?
	
	/// A date valued parameter to search on
	public var searchParam: FHIRPrimitive<FHIRString>?
	
	/// The value of the filter, as a Period, DateTime, or Duration value
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		searchParam: FHIRPrimitive<FHIRString>? = nil,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.searchParam = searchParam
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case path; case _path
		case searchParam; case _searchParam
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
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.searchParam = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParam, auxiliaryKey: ._searchParam)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try searchParam?.encode(on: &_container, forKey: .searchParam, auxiliaryKey: ._searchParam)
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

/**
 Order of the results.
 
 Specifies the order of the results to be returned.
 */
public struct DataRequirementSort: Element {
	
	/// The direction of the sort, ascending or descending.
	public var direction: FHIRPrimitive<SortDirection>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The name of the attribute to perform the sort
	public var path: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		direction: FHIRPrimitive<SortDirection>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>
	) {
		self.direction = direction
		self.`extension` = `extension`
		self.id = id
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case direction; case _direction
		case `extension` = "extension"
		case id; case _id
		case path; case _path
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.direction = try FHIRPrimitive<SortDirection>(from: _container, forKey: .direction, auxiliaryKey: ._direction)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKey: .path, auxiliaryKey: ._path)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try direction.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
	}
}

/**
 What values are expected.
 
 Value filters specify additional constraints on the data for elements other than code-valued or date-valued. Each value
 filter specifies an additional constraint on the data (i.e. valueFilters are AND'ed, not OR'ed).
 */
public struct DataRequirementValueFilter: Element {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
	}
	
	/// The comparator to be used to determine whether the value is matching.
	/// Restricted to: ['eq', 'gt', 'lt', 'ge', 'le', 'sa', 'eb']
	public var comparator: FHIRPrimitive<SearchComparator>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An attribute to filter on
	public var path: FHIRPrimitive<FHIRString>?
	
	/// A parameter to search on
	public var searchParam: FHIRPrimitive<FHIRString>?
	
	/// The value of the filter, as a Period, DateTime, or Duration value
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		comparator: FHIRPrimitive<SearchComparator>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		searchParam: FHIRPrimitive<FHIRString>? = nil,
		value: ValueX? = nil
	) {
		self.comparator = comparator
		self.`extension` = `extension`
		self.id = id
		self.path = path
		self.searchParam = searchParam
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator; case _comparator
		case `extension` = "extension"
		case id; case _id
		case path; case _path
		case searchParam; case _searchParam
		case valueDateTime; case _valueDateTime
		case valueDuration
		case valuePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comparator = try FHIRPrimitive<SearchComparator>(from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.searchParam = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParam, auxiliaryKey: ._searchParam)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try searchParam?.encode(on: &_container, forKey: .searchParam, auxiliaryKey: ._searchParam)
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
