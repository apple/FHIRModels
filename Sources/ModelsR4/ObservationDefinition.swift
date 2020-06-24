//
//  ObservationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
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
 Definition of an observation.
 
 Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable
 health care service.
 */
open class ObservationDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .observationDefinition }
	
	/// Category of observation
	public var category: [CodeableConcept]?
	
	/// Type of observation (code / type)
	public var code: CodeableConcept
	
	/// Business identifier for this ObservationDefinition instance
	public var identifier: [Identifier]?
	
	/// The data types allowed for the value element of the instance observations conforming to this
	/// ObservationDefinition.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Multiple results allowed
	public var multipleResultsAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Method used to produce the observation
	public var method: CodeableConcept?
	
	/// Preferred report name
	public var preferredReportName: FHIRPrimitive<FHIRString>?
	
	/// Characteristics of quantitative results
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Qualified range for continuous and ordinal observation results
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
	/// Value set of valid coded values for the observations conforming to this ObservationDefinition
	public var validCodedValueSet: Reference?
	
	/// Value set of normal coded values for the observations conforming to this ObservationDefinition
	public var normalCodedValueSet: Reference?
	
	/// Value set of abnormal coded values for the observations conforming to this ObservationDefinition
	public var abnormalCodedValueSet: Reference?
	
	/// Value set of critical coded values for the observations conforming to this ObservationDefinition
	public var criticalCodedValueSet: Reference?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							validCodedValueSet: Reference? = nil)
	{
		self.init(code: code)
		self.abnormalCodedValueSet = abnormalCodedValueSet
		self.category = category
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
		case abnormalCodedValueSet
		case category
		case code
		case criticalCodedValueSet
		case identifier
		case method
		case multipleResultsAllowed; case _multipleResultsAllowed
		case normalCodedValueSet
		case permittedDataType; case _permittedDataType
		case preferredReportName; case _preferredReportName
		case qualifiedInterval
		case quantitativeDetails
		case validCodedValueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abnormalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .abnormalCodedValueSet)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.criticalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .criticalCodedValueSet)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.multipleResultsAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		self.normalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .normalCodedValueSet)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.preferredReportName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preferredReportName, auxiliaryKey: ._preferredReportName)
		self.qualifiedInterval = try [ObservationDefinitionQualifiedInterval](from: _container, forKeyIfPresent: .qualifiedInterval)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		self.validCodedValueSet = try Reference(from: _container, forKeyIfPresent: .validCodedValueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abnormalCodedValueSet?.encode(on: &_container, forKey: .abnormalCodedValueSet)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try criticalCodedValueSet?.encode(on: &_container, forKey: .criticalCodedValueSet)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try method?.encode(on: &_container, forKey: .method)
		try multipleResultsAllowed?.encode(on: &_container, forKey: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		try normalCodedValueSet?.encode(on: &_container, forKey: .normalCodedValueSet)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try preferredReportName?.encode(on: &_container, forKey: .preferredReportName, auxiliaryKey: ._preferredReportName)
		try qualifiedInterval?.encode(on: &_container, forKey: .qualifiedInterval)
		try quantitativeDetails?.encode(on: &_container, forKey: .quantitativeDetails)
		try validCodedValueSet?.encode(on: &_container, forKey: .validCodedValueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abnormalCodedValueSet == _other.abnormalCodedValueSet
		    && category == _other.category
		    && code == _other.code
		    && criticalCodedValueSet == _other.criticalCodedValueSet
		    && identifier == _other.identifier
		    && method == _other.method
		    && multipleResultsAllowed == _other.multipleResultsAllowed
		    && normalCodedValueSet == _other.normalCodedValueSet
		    && permittedDataType == _other.permittedDataType
		    && preferredReportName == _other.preferredReportName
		    && qualifiedInterval == _other.qualifiedInterval
		    && quantitativeDetails == _other.quantitativeDetails
		    && validCodedValueSet == _other.validCodedValueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abnormalCodedValueSet)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(criticalCodedValueSet)
		hasher.combine(identifier)
		hasher.combine(method)
		hasher.combine(multipleResultsAllowed)
		hasher.combine(normalCodedValueSet)
		hasher.combine(permittedDataType)
		hasher.combine(preferredReportName)
		hasher.combine(qualifiedInterval)
		hasher.combine(quantitativeDetails)
		hasher.combine(validCodedValueSet)
	}
}

/**
 Qualified range for continuous and ordinal observation results.
 
 Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this
 ObservationDefinition.
 */
open class ObservationDefinitionQualifiedInterval: BackboneElement {
	
	/// The category of interval of values for continuous or ordinal observations conforming to this
	/// ObservationDefinition.
	public var category: FHIRPrimitive<ObservationRangeCategory>?
	
	/// The interval itself, for continuous or ordinal observations
	public var range: Range?
	
	/// Range context qualifier
	public var context: CodeableConcept?
	
	/// Targetted population of the range
	public var appliesTo: [CodeableConcept]?
	
	/// Sex of the population the range applies to.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Applicable gestational age range, if relevant
	public var gestationalAge: Range?
	
	/// Condition associated with the reference range
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							range: Range? = nil)
	{
		self.init()
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
		case gender; case _gender
		case gestationalAge
		case range
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.category = try FHIRPrimitive<ObservationRangeCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try CodeableConcept(from: _container, forKeyIfPresent: .context)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.gestationalAge = try Range(from: _container, forKeyIfPresent: .gestationalAge)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try gestationalAge?.encode(on: &_container, forKey: .gestationalAge)
		try range?.encode(on: &_container, forKey: .range)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionQualifiedInterval else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return age == _other.age
		    && appliesTo == _other.appliesTo
		    && category == _other.category
		    && condition == _other.condition
		    && context == _other.context
		    && gender == _other.gender
		    && gestationalAge == _other.gestationalAge
		    && range == _other.range
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(age)
		hasher.combine(appliesTo)
		hasher.combine(category)
		hasher.combine(condition)
		hasher.combine(context)
		hasher.combine(gender)
		hasher.combine(gestationalAge)
		hasher.combine(range)
	}
}

/**
 Characteristics of quantitative results.
 
 Characteristics for quantitative results of this observation.
 */
open class ObservationDefinitionQuantitativeDetails: BackboneElement {
	
	/// Customary unit for quantitative results
	public var customaryUnit: CodeableConcept?
	
	/// SI unit for quantitative results
	public var unit: CodeableConcept?
	
	/// SI to Customary unit conversion factor
	public var conversionFactor: FHIRPrimitive<FHIRDecimal>?
	
	/// Decimal precision of observation quantitative results
	public var decimalPrecision: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							conversionFactor: FHIRPrimitive<FHIRDecimal>? = nil,
							customaryUnit: CodeableConcept? = nil,
							decimalPrecision: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							unit: CodeableConcept? = nil)
	{
		self.init()
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
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conversionFactor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .conversionFactor, auxiliaryKey: ._conversionFactor)
		self.customaryUnit = try CodeableConcept(from: _container, forKeyIfPresent: .customaryUnit)
		self.decimalPrecision = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try conversionFactor?.encode(on: &_container, forKey: .conversionFactor, auxiliaryKey: ._conversionFactor)
		try customaryUnit?.encode(on: &_container, forKey: .customaryUnit)
		try decimalPrecision?.encode(on: &_container, forKey: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionQuantitativeDetails else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conversionFactor == _other.conversionFactor
		    && customaryUnit == _other.customaryUnit
		    && decimalPrecision == _other.decimalPrecision
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(conversionFactor)
		hasher.combine(customaryUnit)
		hasher.combine(decimalPrecision)
		hasher.combine(unit)
	}
}
