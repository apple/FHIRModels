//
//  SubstanceSpecification.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SubstanceSpecification)
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
 The detailed description of a substance, typically at a level beyond what is used for prescribing.
 */
open class SubstanceSpecification: DomainResource {
	
	override open class var resourceType: ResourceType { return .substanceSpecification }
	
	/// Identifier by which this substance is known
	public var identifier: Identifier?
	
	/// High level categorization, e.g. polymer or nucleic acid
	public var type: CodeableConcept?
	
	/// Status of substance within the catalogue e.g. approved
	public var status: CodeableConcept?
	
	/// If the substance applies to only human or veterinary use
	public var domain: CodeableConcept?
	
	/// Textual description of the substance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Textual comment about this record of a substance
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Moiety, for structural modifications
	public var moiety: [SubstanceSpecificationMoiety]?
	
	/// General specifications for this substance, including how it is related to other substances
	public var property: [SubstanceSpecificationProperty]?
	
	/// General information detailing this substance
	public var referenceInformation: Reference?
	
	/// Structural information
	public var structure: SubstanceSpecificationStructure?
	
	/// Codes associated with the substance
	public var code: [SubstanceSpecificationFHIRString]?
	
	/// Names applicable to this substance
	public var name: [SubstanceSpecificationName]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]?
	
	/// A link between this substance and another, with details of the relationship
	public var relationship: [SubstanceSpecificationRelationship]?
	
	/// Data items specific to nucleic acids
	public var nucleicAcid: Reference?
	
	/// Data items specific to polymers
	public var polymer: Reference?
	
	/// Data items specific to proteins
	public var protein: Reference?
	
	/// Material or taxonomic/anatomical source for the substance
	public var sourceMaterial: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [SubstanceSpecificationFHIRString]? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							domain: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							moiety: [SubstanceSpecificationMoiety]? = nil,
							molecularWeight: [SubstanceSpecificationStructureIsotopeMolecularWeight]? = nil,
							name: [SubstanceSpecificationName]? = nil,
							nucleicAcid: Reference? = nil,
							polymer: Reference? = nil,
							property: [SubstanceSpecificationProperty]? = nil,
							protein: Reference? = nil,
							referenceInformation: Reference? = nil,
							relationship: [SubstanceSpecificationRelationship]? = nil,
							source: [Reference]? = nil,
							sourceMaterial: Reference? = nil,
							status: CodeableConcept? = nil,
							structure: SubstanceSpecificationStructure? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.code = code
		self.comment = comment
		self.contained = contained
		self.description_fhir = description_fhir
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.moiety = moiety
		self.molecularWeight = molecularWeight
		self.name = name
		self.nucleicAcid = nucleicAcid
		self.polymer = polymer
		self.property = property
		self.protein = protein
		self.referenceInformation = referenceInformation
		self.relationship = relationship
		self.source = source
		self.sourceMaterial = sourceMaterial
		self.status = status
		self.structure = structure
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case comment; case _comment
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case identifier
		case moiety
		case molecularWeight
		case name
		case nucleicAcid
		case polymer
		case property
		case protein
		case referenceInformation
		case relationship
		case source
		case sourceMaterial
		case status
		case structure
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [SubstanceSpecificationFHIRString](from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.moiety = try [SubstanceSpecificationMoiety](from: _container, forKeyIfPresent: .moiety)
		self.molecularWeight = try [SubstanceSpecificationStructureIsotopeMolecularWeight](from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .name)
		self.nucleicAcid = try Reference(from: _container, forKeyIfPresent: .nucleicAcid)
		self.polymer = try Reference(from: _container, forKeyIfPresent: .polymer)
		self.property = try [SubstanceSpecificationProperty](from: _container, forKeyIfPresent: .property)
		self.protein = try Reference(from: _container, forKeyIfPresent: .protein)
		self.referenceInformation = try Reference(from: _container, forKeyIfPresent: .referenceInformation)
		self.relationship = try [SubstanceSpecificationRelationship](from: _container, forKeyIfPresent: .relationship)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.sourceMaterial = try Reference(from: _container, forKeyIfPresent: .sourceMaterial)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.structure = try SubstanceSpecificationStructure(from: _container, forKeyIfPresent: .structure)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try moiety?.encode(on: &_container, forKey: .moiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try nucleicAcid?.encode(on: &_container, forKey: .nucleicAcid)
		try polymer?.encode(on: &_container, forKey: .polymer)
		try property?.encode(on: &_container, forKey: .property)
		try protein?.encode(on: &_container, forKey: .protein)
		try referenceInformation?.encode(on: &_container, forKey: .referenceInformation)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try source?.encode(on: &_container, forKey: .source)
		try sourceMaterial?.encode(on: &_container, forKey: .sourceMaterial)
		try status?.encode(on: &_container, forKey: .status)
		try structure?.encode(on: &_container, forKey: .structure)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && comment == _other.comment
		    && description_fhir == _other.description_fhir
		    && domain == _other.domain
		    && identifier == _other.identifier
		    && moiety == _other.moiety
		    && molecularWeight == _other.molecularWeight
		    && name == _other.name
		    && nucleicAcid == _other.nucleicAcid
		    && polymer == _other.polymer
		    && property == _other.property
		    && protein == _other.protein
		    && referenceInformation == _other.referenceInformation
		    && relationship == _other.relationship
		    && source == _other.source
		    && sourceMaterial == _other.sourceMaterial
		    && status == _other.status
		    && structure == _other.structure
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(description_fhir)
		hasher.combine(domain)
		hasher.combine(identifier)
		hasher.combine(moiety)
		hasher.combine(molecularWeight)
		hasher.combine(name)
		hasher.combine(nucleicAcid)
		hasher.combine(polymer)
		hasher.combine(property)
		hasher.combine(protein)
		hasher.combine(referenceInformation)
		hasher.combine(relationship)
		hasher.combine(source)
		hasher.combine(sourceMaterial)
		hasher.combine(status)
		hasher.combine(structure)
		hasher.combine(type)
	}
}

/**
 Codes associated with the substance.
 */
open class SubstanceSpecificationFHIRString: BackboneElement {
	
	/// The specific code
	public var code: CodeableConcept?
	
	/// Status of the code assignment
	public var status: CodeableConcept?
	
	/// The date at which the code status is changed as part of the terminology maintenance
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Any comment can be provided in this field, if necessary
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							comment: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							source: [Reference]? = nil,
							status: CodeableConcept? = nil,
							statusDate: FHIRPrimitive<DateTime>? = nil)
	{
		self.init()
		self.code = code
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
		self.status = status
		self.statusDate = statusDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case comment; case _comment
		case source
		case status
		case statusDate; case _statusDate
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationFHIRString else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && comment == _other.comment
		    && source == _other.source
		    && status == _other.status
		    && statusDate == _other.statusDate
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(comment)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(statusDate)
	}
}

/**
 Moiety, for structural modifications.
 */
open class SubstanceSpecificationMoiety: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Role that the moiety is playing
	public var role: CodeableConcept?
	
	/// Identifier by which this moiety substance is known
	public var identifier: Identifier?
	
	/// Textual name for this moiety substance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Molecular formula
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Quantitative value for this moiety
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							molecularFormula: FHIRPrimitive<FHIRString>? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							opticalActivity: CodeableConcept? = nil,
							role: CodeableConcept? = nil,
							stereochemistry: CodeableConcept? = nil)
	{
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.name = name
		self.opticalActivity = opticalActivity
		self.role = role
		self.stereochemistry = stereochemistry
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountString; case _amountString
		case identifier
		case molecularFormula; case _molecularFormula
		case name; case _name
		case opticalActivity
		case role
		case stereochemistry
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try role?.encode(on: &_container, forKey: .role)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationMoiety else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && identifier == _other.identifier
		    && molecularFormula == _other.molecularFormula
		    && name == _other.name
		    && opticalActivity == _other.opticalActivity
		    && role == _other.role
		    && stereochemistry == _other.stereochemistry
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(identifier)
		hasher.combine(molecularFormula)
		hasher.combine(name)
		hasher.combine(opticalActivity)
		hasher.combine(role)
		hasher.combine(stereochemistry)
	}
}

/**
 Names applicable to this substance.
 */
open class SubstanceSpecificationName: BackboneElement {
	
	/// The actual name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name type
	public var type: CodeableConcept?
	
	/// The status of the name
	public var status: CodeableConcept?
	
	/// If this is the preferred name for this substance
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Language of the name
	public var language: [CodeableConcept]?
	
	/// The use context of this name for example if there is a different name a drug active ingredient as opposed to a
	/// food colour additive
	public var domain: [CodeableConcept]?
	
	/// The jurisdiction where this name applies
	public var jurisdiction: [CodeableConcept]?
	
	/// A synonym of this name
	public var synonym: [SubstanceSpecificationName]?
	
	/// A translation for this name
	public var translation: [SubstanceSpecificationName]?
	
	/// Details of the official nature of this name
	public var official: [SubstanceSpecificationNameOfficial]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							domain: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: [CodeableConcept]? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							official: [SubstanceSpecificationNameOfficial]? = nil,
							preferred: FHIRPrimitive<FHIRBool>? = nil,
							source: [Reference]? = nil,
							status: CodeableConcept? = nil,
							synonym: [SubstanceSpecificationName]? = nil,
							translation: [SubstanceSpecificationName]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(name: name)
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.language = language
		self.modifierExtension = modifierExtension
		self.official = official
		self.preferred = preferred
		self.source = source
		self.status = status
		self.synonym = synonym
		self.translation = translation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case domain
		case jurisdiction
		case language
		case name; case _name
		case official
		case preferred; case _preferred
		case source
		case status
		case synonym
		case translation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.domain = try [CodeableConcept](from: _container, forKeyIfPresent: .domain)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.official = try [SubstanceSpecificationNameOfficial](from: _container, forKeyIfPresent: .official)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.synonym = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .synonym)
		self.translation = try [SubstanceSpecificationName](from: _container, forKeyIfPresent: .translation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try domain?.encode(on: &_container, forKey: .domain)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try official?.encode(on: &_container, forKey: .official)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try synonym?.encode(on: &_container, forKey: .synonym)
		try translation?.encode(on: &_container, forKey: .translation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationName else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return domain == _other.domain
		    && jurisdiction == _other.jurisdiction
		    && language == _other.language
		    && name == _other.name
		    && official == _other.official
		    && preferred == _other.preferred
		    && source == _other.source
		    && status == _other.status
		    && synonym == _other.synonym
		    && translation == _other.translation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(domain)
		hasher.combine(jurisdiction)
		hasher.combine(language)
		hasher.combine(name)
		hasher.combine(official)
		hasher.combine(preferred)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(synonym)
		hasher.combine(translation)
		hasher.combine(type)
	}
}

/**
 Details of the official nature of this name.
 */
open class SubstanceSpecificationNameOfficial: BackboneElement {
	
	/// Which authority uses this official name
	public var authority: CodeableConcept?
	
	/// The status of the official name
	public var status: CodeableConcept?
	
	/// Date of official name change
	public var date: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: CodeableConcept? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							status: CodeableConcept? = nil)
	{
		self.init()
		self.authority = authority
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case date; case _date
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try CodeableConcept(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try status?.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationNameOfficial else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && date == _other.date
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(date)
		hasher.combine(status)
	}
}

/**
 General specifications for this substance, including how it is related to other substances.
 */
open class SubstanceSpecificationProperty: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "definingSubstance[x]"
	public enum DefiningSubstanceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// A category for this property, e.g. Physical, Chemical, Enzymatic
	public var category: CodeableConcept?
	
	/// Property type e.g. viscosity, pH, isoelectric point
	public var code: CodeableConcept?
	
	/// Parameters that were used in the measurement of a property (e.g. for viscosity: measured at 20C with a pH of
	/// 7.1)
	public var parameters: FHIRPrimitive<FHIRString>?
	
	/// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol)
	/// One of `definingSubstance[x]`
	public var definingSubstance: DefiningSubstanceX?
	
	/// Quantitative value for this property
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							category: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							definingSubstance: DefiningSubstanceX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							parameters: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.amount = amount
		self.category = category
		self.code = code
		self.definingSubstance = definingSubstance
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameters = parameters
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountString; case _amountString
		case category
		case code
		case definingSubstanceCodeableConcept
		case definingSubstanceReference
		case parameters; case _parameters
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		var _t_definingSubstance: DefiningSubstanceX? = nil
		if let definingSubstanceReference = try Reference(from: _container, forKeyIfPresent: .definingSubstanceReference) {
			if _t_definingSubstance != nil {
				throw DecodingError.dataCorruptedError(forKey: .definingSubstanceReference, in: _container, debugDescription: "More than one value provided for \"definingSubstance\"")
			}
			_t_definingSubstance = .reference(definingSubstanceReference)
		}
		if let definingSubstanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .definingSubstanceCodeableConcept) {
			if _t_definingSubstance != nil {
				throw DecodingError.dataCorruptedError(forKey: .definingSubstanceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"definingSubstance\"")
			}
			_t_definingSubstance = .codeableConcept(definingSubstanceCodeableConcept)
		}
		self.definingSubstance = _t_definingSubstance
		self.parameters = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .parameters, auxiliaryKey: ._parameters)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		if let _enum = definingSubstance {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .definingSubstanceReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .definingSubstanceCodeableConcept)
			}
		}
		try parameters?.encode(on: &_container, forKey: .parameters, auxiliaryKey: ._parameters)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && category == _other.category
		    && code == _other.code
		    && definingSubstance == _other.definingSubstance
		    && parameters == _other.parameters
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(definingSubstance)
		hasher.combine(parameters)
	}
}

/**
 A link between this substance and another, with details of the relationship.
 */
open class SubstanceSpecificationRelationship: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Hashable {
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "substance[x]"
	public enum SubstanceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// A pointer to another substance, as a resource or just a representational code
	/// One of `substance[x]`
	public var substance: SubstanceX?
	
	/// For example "salt to parent", "active moiety", "starting material"
	public var relationship: CodeableConcept?
	
	/// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that
	/// enzyme, out of several possible substance relationships
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage
	/// of the active substance in relation to some other
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// For use when the numeric
	public var amountRatioLowLimit: Ratio?
	
	/// An operator for the amount, for example "average", "approximately", "less than"
	public var amountType: CodeableConcept?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: AmountX? = nil,
							amountRatioLowLimit: Ratio? = nil,
							amountType: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isDefining: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil,
							relationship: CodeableConcept? = nil,
							source: [Reference]? = nil,
							substance: SubstanceX? = nil)
	{
		self.init()
		self.amount = amount
		self.amountRatioLowLimit = amountRatioLowLimit
		self.amountType = amountType
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.modifierExtension = modifierExtension
		self.relationship = relationship
		self.source = source
		self.substance = substance
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRange
		case amountRatio
		case amountRatioLowLimit
		case amountString; case _amountString
		case amountType
		case isDefining; case _isDefining
		case relationship
		case source
		case substanceCodeableConcept
		case substanceReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountQuantity, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .quantity(amountQuantity)
		}
		if let amountRange = try Range(from: _container, forKeyIfPresent: .amountRange) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRange, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .range(amountRange)
		}
		if let amountRatio = try Ratio(from: _container, forKeyIfPresent: .amountRatio) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountRatio, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .ratio(amountRatio)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		self.amount = _t_amount
		self.amountRatioLowLimit = try Ratio(from: _container, forKeyIfPresent: .amountRatioLowLimit)
		self.amountType = try CodeableConcept(from: _container, forKeyIfPresent: .amountType)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		var _t_substance: SubstanceX? = nil
		if let substanceReference = try Reference(from: _container, forKeyIfPresent: .substanceReference) {
			if _t_substance != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceReference, in: _container, debugDescription: "More than one value provided for \"substance\"")
			}
			_t_substance = .reference(substanceReference)
		}
		if let substanceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .substanceCodeableConcept) {
			if _t_substance != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"substance\"")
			}
			_t_substance = .codeableConcept(substanceCodeableConcept)
		}
		self.substance = _t_substance
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = amount {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .amountQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .amountRange)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .amountRatio)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
			}
		}
		try amountRatioLowLimit?.encode(on: &_container, forKey: .amountRatioLowLimit)
		try amountType?.encode(on: &_container, forKey: .amountType)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = substance {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .substanceReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .substanceCodeableConcept)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationRelationship else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && amountRatioLowLimit == _other.amountRatioLowLimit
		    && amountType == _other.amountType
		    && isDefining == _other.isDefining
		    && relationship == _other.relationship
		    && source == _other.source
		    && substance == _other.substance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(amountRatioLowLimit)
		hasher.combine(amountType)
		hasher.combine(isDefining)
		hasher.combine(relationship)
		hasher.combine(source)
		hasher.combine(substance)
	}
}

/**
 Structural information.
 */
open class SubstanceSpecificationStructure: BackboneElement {
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Molecular formula
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety
	/// separated by a dot
	public var molecularFormulaByMoiety: FHIRPrimitive<FHIRString>?
	
	/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio
	public var isotope: [SubstanceSpecificationStructureIsotope]?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Molecular structural representation
	public var representation: [SubstanceSpecificationStructureRepresentation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							isotope: [SubstanceSpecificationStructureIsotope]? = nil,
							modifierExtension: [Extension]? = nil,
							molecularFormula: FHIRPrimitive<FHIRString>? = nil,
							molecularFormulaByMoiety: FHIRPrimitive<FHIRString>? = nil,
							molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight? = nil,
							opticalActivity: CodeableConcept? = nil,
							representation: [SubstanceSpecificationStructureRepresentation]? = nil,
							source: [Reference]? = nil,
							stereochemistry: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.isotope = isotope
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.molecularFormulaByMoiety = molecularFormulaByMoiety
		self.molecularWeight = molecularWeight
		self.opticalActivity = opticalActivity
		self.representation = representation
		self.source = source
		self.stereochemistry = stereochemistry
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case isotope
		case molecularFormula; case _molecularFormula
		case molecularFormulaByMoiety; case _molecularFormulaByMoiety
		case molecularWeight
		case opticalActivity
		case representation
		case source
		case stereochemistry
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.isotope = try [SubstanceSpecificationStructureIsotope](from: _container, forKeyIfPresent: .isotope)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.molecularFormulaByMoiety = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		self.molecularWeight = try SubstanceSpecificationStructureIsotopeMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.representation = try [SubstanceSpecificationStructureRepresentation](from: _container, forKeyIfPresent: .representation)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try isotope?.encode(on: &_container, forKey: .isotope)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try molecularFormulaByMoiety?.encode(on: &_container, forKey: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try representation?.encode(on: &_container, forKey: .representation)
		try source?.encode(on: &_container, forKey: .source)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationStructure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return isotope == _other.isotope
		    && molecularFormula == _other.molecularFormula
		    && molecularFormulaByMoiety == _other.molecularFormulaByMoiety
		    && molecularWeight == _other.molecularWeight
		    && opticalActivity == _other.opticalActivity
		    && representation == _other.representation
		    && source == _other.source
		    && stereochemistry == _other.stereochemistry
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(isotope)
		hasher.combine(molecularFormula)
		hasher.combine(molecularFormulaByMoiety)
		hasher.combine(molecularWeight)
		hasher.combine(opticalActivity)
		hasher.combine(representation)
		hasher.combine(source)
		hasher.combine(stereochemistry)
	}
}

/**
 Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
 */
open class SubstanceSpecificationStructureIsotope: BackboneElement {
	
	/// Substance identifier for each non-natural or radioisotope
	public var identifier: Identifier?
	
	/// Substance name for each non-natural or radioisotope
	public var name: CodeableConcept?
	
	/// The type of isotopic substitution present in a single substance
	public var substitution: CodeableConcept?
	
	/// Half life - for a non-natural nuclide
	public var halfLife: Quantity?
	
	/// The molecular weight or weight range (for proteins, polymers or nucleic acids)
	public var molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							halfLife: Quantity? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							molecularWeight: SubstanceSpecificationStructureIsotopeMolecularWeight? = nil,
							name: CodeableConcept? = nil,
							substitution: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.halfLife = halfLife
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.molecularWeight = molecularWeight
		self.name = name
		self.substitution = substitution
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case halfLife
		case identifier
		case molecularWeight
		case name
		case substitution
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.halfLife = try Quantity(from: _container, forKeyIfPresent: .halfLife)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.molecularWeight = try SubstanceSpecificationStructureIsotopeMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try CodeableConcept(from: _container, forKeyIfPresent: .name)
		self.substitution = try CodeableConcept(from: _container, forKeyIfPresent: .substitution)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try halfLife?.encode(on: &_container, forKey: .halfLife)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationStructureIsotope else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return halfLife == _other.halfLife
		    && identifier == _other.identifier
		    && molecularWeight == _other.molecularWeight
		    && name == _other.name
		    && substitution == _other.substitution
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(halfLife)
		hasher.combine(identifier)
		hasher.combine(molecularWeight)
		hasher.combine(name)
		hasher.combine(substitution)
	}
}

/**
 The molecular weight or weight range (for proteins, polymers or nucleic acids).
 */
open class SubstanceSpecificationStructureIsotopeMolecularWeight: BackboneElement {
	
	/// The method by which the molecular weight was determined
	public var method: CodeableConcept?
	
	/// Type of molecular weight such as exact, average (also known as. number average), weight average
	public var type: CodeableConcept?
	
	/// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean
	/// would be the average. If only a single definite value for a given element is given, it would be captured in this
	/// field
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case method
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try method?.encode(on: &_container, forKey: .method)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationStructureIsotopeMolecularWeight else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && method == _other.method
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(method)
		hasher.combine(type)
	}
}

/**
 Molecular structural representation.
 */
open class SubstanceSpecificationStructureRepresentation: BackboneElement {
	
	/// The type of structure (e.g. Full, Partial, Representative)
	public var type: CodeableConcept?
	
	/// The structural representation as text string in a format e.g. InChI, SMILES, MOLFILE, CDX
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// An attached file with the structural representation
	public var attachment: Attachment?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attachment: Attachment? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							representation: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.attachment = attachment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachment
		case representation; case _representation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attachment = try Attachment(from: _container, forKeyIfPresent: .attachment)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachment?.encode(on: &_container, forKey: .attachment)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubstanceSpecificationStructureRepresentation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attachment == _other.attachment
		    && representation == _other.representation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachment)
		hasher.combine(representation)
		hasher.combine(type)
	}
}
