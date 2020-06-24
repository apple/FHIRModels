//
//  ChargeItemDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition)
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
 Definition of properties and rules about how the price and the applicability of a ChargeItem can be determined.
 
 The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate
 costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a
 rough structure and requires profiling for each type of billing code system.
 */
open class ChargeItemDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .chargeItemDefinition }
	
	/// Canonical identifier for this charge item definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Additional identifier for the charge item definition
	public var identifier: [Identifier]?
	
	/// Business version of the charge item definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this charge item definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Underlying externally-defined charge item definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// A larger definition of which this particular definition is a component or step
	public var partOf: [FHIRPrimitive<Canonical>]?
	
	/// Completed or terminated request(s) whose function is taken by this new request
	public var replaces: [FHIRPrimitive<Canonical>]?
	
	/// The current state of the ChargeItemDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the charge item definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for charge item definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When the charge item definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the charge item definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the charge item definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Billing codes or product types this definition applies to
	public var code: CodeableConcept?
	
	/// Instances this definition applies to
	public var instance: [Reference]?
	
	/// Whether or not the billing code is applicable
	public var applicability: [ChargeItemDefinitionApplicability]?
	
	/// Group of properties which are applicable under the same conditions
	public var propertyGroup: [ChargeItemDefinitionPropertyGroup]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							applicability: [ChargeItemDefinitionApplicability]? = nil,
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							code: CodeableConcept? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							effectivePeriod: Period? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							instance: [Reference]? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							partOf: [FHIRPrimitive<Canonical>]? = nil,
							propertyGroup: [ChargeItemDefinitionPropertyGroup]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							replaces: [FHIRPrimitive<Canonical>]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status, url: url)
		self.applicability = applicability
		self.approvalDate = approvalDate
		self.code = code
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.derivedFromUri = derivedFromUri
		self.description_fhir = description_fhir
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instance = instance
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.partOf = partOf
		self.propertyGroup = propertyGroup
		self.publisher = publisher
		self.replaces = replaces
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case approvalDate; case _approvalDate
		case code
		case contact
		case copyright; case _copyright
		case date; case _date
		case derivedFromUri; case _derivedFromUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case instance
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case partOf; case _partOf
		case propertyGroup
		case publisher; case _publisher
		case replaces; case _replaces
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.applicability = try [ChargeItemDefinitionApplicability](from: _container, forKeyIfPresent: .applicability)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try [Reference](from: _container, forKeyIfPresent: .instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.partOf = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .partOf, auxiliaryKey: ._partOf)
		self.propertyGroup = try [ChargeItemDefinitionPropertyGroup](from: _container, forKeyIfPresent: .propertyGroup)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.replaces = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .replaces, auxiliaryKey: ._replaces)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try applicability?.encode(on: &_container, forKey: .applicability)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instance?.encode(on: &_container, forKey: .instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try partOf?.encode(on: &_container, forKey: .partOf, auxiliaryKey: ._partOf)
		try propertyGroup?.encode(on: &_container, forKey: .propertyGroup)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try replaces?.encode(on: &_container, forKey: .replaces, auxiliaryKey: ._replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ChargeItemDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return applicability == _other.applicability
		    && approvalDate == _other.approvalDate
		    && code == _other.code
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && derivedFromUri == _other.derivedFromUri
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && instance == _other.instance
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && partOf == _other.partOf
		    && propertyGroup == _other.propertyGroup
		    && publisher == _other.publisher
		    && replaces == _other.replaces
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(applicability)
		hasher.combine(approvalDate)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(derivedFromUri)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(instance)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(partOf)
		hasher.combine(propertyGroup)
		hasher.combine(publisher)
		hasher.combine(replaces)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Whether or not the billing code is applicable.
 
 Expressions that describe applicability criteria for the billing code.
 */
open class ChargeItemDefinitionApplicability: BackboneElement {
	
	/// Natural language description of the condition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Language of the expression
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Boolean-valued expression
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							expression: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case language; case _language
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ChargeItemDefinitionApplicability else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && expression == _other.expression
		    && language == _other.language
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(expression)
		hasher.combine(language)
	}
}

/**
 Group of properties which are applicable under the same conditions.
 
 Group of properties which are applicable under the same conditions. If no applicability rules are established for the
 group, then all properties always apply.
 */
open class ChargeItemDefinitionPropertyGroup: BackboneElement {
	
	/// Conditions under which the priceComponent is applicable
	public var applicability: [ChargeItemDefinitionApplicability]?
	
	/// Components of total line item price
	public var priceComponent: [ChargeItemDefinitionPropertyGroupPriceComponent]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							applicability: [ChargeItemDefinitionApplicability]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							priceComponent: [ChargeItemDefinitionPropertyGroupPriceComponent]? = nil)
	{
		self.init()
		self.applicability = applicability
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.priceComponent = priceComponent
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case priceComponent
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.applicability = try [ChargeItemDefinitionApplicability](from: _container, forKeyIfPresent: .applicability)
		self.priceComponent = try [ChargeItemDefinitionPropertyGroupPriceComponent](from: _container, forKeyIfPresent: .priceComponent)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try applicability?.encode(on: &_container, forKey: .applicability)
		try priceComponent?.encode(on: &_container, forKey: .priceComponent)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ChargeItemDefinitionPropertyGroup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return applicability == _other.applicability
		    && priceComponent == _other.priceComponent
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(applicability)
		hasher.combine(priceComponent)
	}
}

/**
 Components of total line item price.
 
 The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain
 conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing
 code is currently under development. The priceComponent element can be used to offer transparency to the recipient of
 the Invoice of how the prices have been calculated.
 */
open class ChargeItemDefinitionPropertyGroupPriceComponent: BackboneElement {
	
	/// This code identifies the type of the component.
	public var type: FHIRPrimitive<InvoicePriceComponentType>
	
	/// Code identifying the specific component
	public var code: CodeableConcept?
	
	/// Factor used for calculating this component
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Monetary amount associated with this component
	public var amount: Money?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<InvoicePriceComponentType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Money? = nil,
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							factor: FHIRPrimitive<FHIRDecimal>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<InvoicePriceComponentType>)
	{
		self.init(type: type)
		self.amount = amount
		self.code = code
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case code
		case factor; case _factor
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Money(from: _container, forKeyIfPresent: .amount)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.type = try FHIRPrimitive<InvoicePriceComponentType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try code?.encode(on: &_container, forKey: .code)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ChargeItemDefinitionPropertyGroupPriceComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && code == _other.code
		    && factor == _other.factor
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(code)
		hasher.combine(factor)
		hasher.combine(type)
	}
}
