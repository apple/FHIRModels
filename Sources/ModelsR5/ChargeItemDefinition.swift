//
//  ChargeItemDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition)
//  Copyright 2023 Apple Inc.
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
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this charge item definition, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the charge item definition
	public var identifier: [Identifier]?
	
	/// Business version of the charge item definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this charge item definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
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
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the charge item definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for charge item definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this charge item definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When the charge item definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the charge item definition was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Billing code or product type this definition applies to
	public var code: CodeableConcept?
	
	/// Instances this definition applies to
	public var instance: [Reference]?
	
	/// Whether or not the billing code is applicable
	public var applicability: [ChargeItemDefinitionApplicability]?
	
	/// Group of properties which are applicable under the same conditions
	public var propertyGroup: [ChargeItemDefinitionPropertyGroup]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
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
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
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
		name: FHIRPrimitive<FHIRString>? = nil,
		partOf: [FHIRPrimitive<Canonical>]? = nil,
		propertyGroup: [ChargeItemDefinitionPropertyGroup]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		replaces: [FHIRPrimitive<Canonical>]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(status: status)
		self.applicability = applicability
		self.approvalDate = approvalDate
		self.code = code
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFromUri = derivedFromUri
		self.description_fhir = description_fhir
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
		self.name = name
		self.partOf = partOf
		self.propertyGroup = propertyGroup
		self.publisher = publisher
		self.purpose = purpose
		self.replaces = replaces
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case approvalDate; case _approvalDate
		case code
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFromUri; case _derivedFromUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case identifier
		case instance
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case partOf; case _partOf
		case propertyGroup
		case publisher; case _publisher
		case purpose; case _purpose
		case replaces; case _replaces
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
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
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try [Reference](from: _container, forKeyIfPresent: .instance)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.partOf = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .partOf, auxiliaryKey: ._partOf)
		self.propertyGroup = try [ChargeItemDefinitionPropertyGroup](from: _container, forKeyIfPresent: .propertyGroup)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.replaces = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .replaces, auxiliaryKey: ._replaces)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
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
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instance?.encode(on: &_container, forKey: .instance)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try partOf?.encode(on: &_container, forKey: .partOf, auxiliaryKey: ._partOf)
		try propertyGroup?.encode(on: &_container, forKey: .propertyGroup)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try replaces?.encode(on: &_container, forKey: .replaces, auxiliaryKey: ._replaces)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
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
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && derivedFromUri == _other.derivedFromUri
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && instance == _other.instance
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && partOf == _other.partOf
		    && propertyGroup == _other.propertyGroup
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && replaces == _other.replaces
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(applicability)
		hasher.combine(approvalDate)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(derivedFromUri)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(instance)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(partOf)
		hasher.combine(propertyGroup)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(replaces)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Whether or not the billing code is applicable.
 
 Expressions that describe applicability criteria for the billing code.
 */
open class ChargeItemDefinitionApplicability: BackboneElement {
	
	/// Boolean-valued expression
	public var condition: Expression?
	
	/// When the charge item definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Reference to / quotation of the external source of the group of properties
	public var relatedArtifact: RelatedArtifact?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		condition: Expression? = nil,
		effectivePeriod: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedArtifact: RelatedArtifact? = nil
	) {
		self.init()
		self.condition = condition
		self.effectivePeriod = effectivePeriod
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedArtifact = relatedArtifact
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case effectivePeriod
		case relatedArtifact
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try Expression(from: _container, forKeyIfPresent: .condition)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.relatedArtifact = try RelatedArtifact(from: _container, forKeyIfPresent: .relatedArtifact)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition?.encode(on: &_container, forKey: .condition)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
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
		return condition == _other.condition
		    && effectivePeriod == _other.effectivePeriod
		    && relatedArtifact == _other.relatedArtifact
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(effectivePeriod)
		hasher.combine(relatedArtifact)
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
	public var priceComponent: [MonetaryComponent]?
	
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
		priceComponent: [MonetaryComponent]? = nil
	) {
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
		self.priceComponent = try [MonetaryComponent](from: _container, forKeyIfPresent: .priceComponent)
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
