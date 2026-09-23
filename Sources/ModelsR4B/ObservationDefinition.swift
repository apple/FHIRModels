//
//  ObservationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
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
 Definition of an observation.
 
 Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable
 health care service.
 */
public struct ObservationDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .observationDefinition
	
	/// Value set of abnormal coded values for the observations conforming to this ObservationDefinition
	public var abnormalCodedValueSet: Reference?
	
	/// Category of observation
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Value set of critical coded values for the observations conforming to this ObservationDefinition
	public var criticalCodedValueSet: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this ObservationDefinition instance
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Method used to produce the observation
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Multiple results allowed
	public var multipleResultsAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Value set of normal coded values for the observations conforming to this ObservationDefinition
	public var normalCodedValueSet: Reference?
	
	/// The data types allowed for the value element of the instance observations conforming to this
	/// ObservationDefinition.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Preferred report name
	public var preferredReportName: FHIRPrimitive<FHIRString>?
	
	/// Qualified range for continuous and ordinal observation results
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
	/// Characteristics of quantitative results
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Value set of valid coded values for the observations conforming to this ObservationDefinition
	public var validCodedValueSet: Reference?
	
	/// Designated initializer
	public init(
		abnormalCodedValueSet: Reference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		criticalCodedValueSet: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		multipleResultsAllowed: FHIRPrimitive<FHIRBool>? = nil,
		normalCodedValueSet: Reference? = nil,
		permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
		preferredReportName: FHIRPrimitive<FHIRString>? = nil,
		qualifiedInterval: [ObservationDefinitionQualifiedInterval]? = nil,
		quantitativeDetails: ObservationDefinitionQuantitativeDetails? = nil,
		text: Narrative? = nil,
		validCodedValueSet: Reference? = nil
	) {
		self.abnormalCodedValueSet = abnormalCodedValueSet
		self.category = category
		self.code = code
		self.contained = contained
		self.criticalCodedValueSet = criticalCodedValueSet
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.multipleResultsAllowed = multipleResultsAllowed
		self.normalCodedValueSet = normalCodedValueSet
		self.permittedDataType = permittedDataType
		self.preferredReportName = preferredReportName
		self.qualifiedInterval = qualifiedInterval
		self.quantitativeDetails = quantitativeDetails
		self.text = text
		self.validCodedValueSet = validCodedValueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case abnormalCodedValueSet
		case category
		case code
		case contained
		case criticalCodedValueSet
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case method
		case modifierExtension
		case multipleResultsAllowed; case _multipleResultsAllowed
		case normalCodedValueSet
		case permittedDataType; case _permittedDataType
		case preferredReportName; case _preferredReportName
		case qualifiedInterval
		case quantitativeDetails
		case text
		case validCodedValueSet
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.abnormalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .abnormalCodedValueSet)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.criticalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .criticalCodedValueSet)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multipleResultsAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		self.normalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .normalCodedValueSet)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.preferredReportName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preferredReportName, auxiliaryKey: ._preferredReportName)
		self.qualifiedInterval = try [ObservationDefinitionQualifiedInterval](from: _container, forKeyIfPresent: .qualifiedInterval)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.validCodedValueSet = try Reference(from: _container, forKeyIfPresent: .validCodedValueSet)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try abnormalCodedValueSet?.encode(on: &_container, forKey: .abnormalCodedValueSet)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try criticalCodedValueSet?.encode(on: &_container, forKey: .criticalCodedValueSet)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multipleResultsAllowed?.encode(on: &_container, forKey: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		try normalCodedValueSet?.encode(on: &_container, forKey: .normalCodedValueSet)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try preferredReportName?.encode(on: &_container, forKey: .preferredReportName, auxiliaryKey: ._preferredReportName)
		try qualifiedInterval?.encode(on: &_container, forKey: .qualifiedInterval)
		try quantitativeDetails?.encode(on: &_container, forKey: .quantitativeDetails)
		try text?.encode(on: &_container, forKey: .text)
		try validCodedValueSet?.encode(on: &_container, forKey: .validCodedValueSet)
	}
}

/**
 Qualified range for continuous and ordinal observation results.
 
 Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this
 ObservationDefinition.
 */
public struct ObservationDefinitionQualifiedInterval: BackboneElement {
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Targetted population of the range
	public var appliesTo: [CodeableConcept]?
	
	/// The category of interval of values for continuous or ordinal observations conforming to this
	/// ObservationDefinition.
	public var category: FHIRPrimitive<ObservationRangeCategory>?
	
	/// Condition associated with the reference range
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Range context qualifier
	public var context: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Sex of the population the range applies to.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Applicable gestational age range, if relevant
	public var gestationalAge: Range?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The interval itself, for continuous or ordinal observations
	public var range: Range?
	
	/// Designated initializer
	public init(
		age: Range? = nil,
		appliesTo: [CodeableConcept]? = nil,
		category: FHIRPrimitive<ObservationRangeCategory>? = nil,
		condition: FHIRPrimitive<FHIRString>? = nil,
		context: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		gestationalAge: Range? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		range: Range? = nil
	) {
		self.age = age
		self.appliesTo = appliesTo
		self.category = category
		self.condition = condition
		self.context = context
		self.`extension` = `extension`
		self.gender = gender
		self.gestationalAge = gestationalAge
		self.id = id
		self.modifierExtension = modifierExtension
		self.range = range
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case age
		case appliesTo
		case category; case _category
		case condition; case _condition
		case context
		case `extension` = "extension"
		case gender; case _gender
		case gestationalAge
		case id; case _id
		case modifierExtension
		case range
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.category = try FHIRPrimitive<ObservationRangeCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try CodeableConcept(from: _container, forKeyIfPresent: .context)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.gestationalAge = try Range(from: _container, forKeyIfPresent: .gestationalAge)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try gestationalAge?.encode(on: &_container, forKey: .gestationalAge)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try range?.encode(on: &_container, forKey: .range)
	}
}

/**
 Characteristics of quantitative results.
 
 Characteristics for quantitative results of this observation.
 */
public struct ObservationDefinitionQuantitativeDetails: BackboneElement {
	
	/// SI to Customary unit conversion factor
	public var conversionFactor: FHIRPrimitive<FHIRDecimal>?
	
	/// Customary unit for quantitative results
	public var customaryUnit: CodeableConcept?
	
	/// Decimal precision of observation quantitative results
	public var decimalPrecision: FHIRPrimitive<FHIRInteger>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// SI unit for quantitative results
	public var unit: CodeableConcept?
	
	/// Designated initializer
	public init(
		conversionFactor: FHIRPrimitive<FHIRDecimal>? = nil,
		customaryUnit: CodeableConcept? = nil,
		decimalPrecision: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		unit: CodeableConcept? = nil
	) {
		self.conversionFactor = conversionFactor
		self.customaryUnit = customaryUnit
		self.decimalPrecision = decimalPrecision
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conversionFactor; case _conversionFactor
		case customaryUnit
		case decimalPrecision; case _decimalPrecision
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.conversionFactor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .conversionFactor, auxiliaryKey: ._conversionFactor)
		self.customaryUnit = try CodeableConcept(from: _container, forKeyIfPresent: .customaryUnit)
		self.decimalPrecision = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try conversionFactor?.encode(on: &_container, forKey: .conversionFactor, auxiliaryKey: ._conversionFactor)
		try customaryUnit?.encode(on: &_container, forKey: .customaryUnit)
		try decimalPrecision?.encode(on: &_container, forKey: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}
