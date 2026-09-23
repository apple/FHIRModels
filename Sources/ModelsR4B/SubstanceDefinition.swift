//
//  SubstanceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/SubstanceDefinition)
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
 The detailed description of a substance, typically at a level beyond what is used for prescribing.
 */
public struct SubstanceDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .substanceDefinition
	
	/// A categorization, high level e.g. polymer or nucleic acid, or food, chemical, biological, or lower e.g. polymer
	/// linear or branch chain, or type of impurity
	public var classification: [CodeableConcept]?
	
	/// Codes associated with the substance
	public var code: [SubstanceDefinitionFHIRString]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Textual description of the substance
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If the substance applies to human or veterinary use
	public var domain: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The quality standard, established benchmark, to which substance complies (e.g. USP/NF, BP)
	public var grade: [CodeableConcept]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier by which this substance is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Supporting literature
	public var informationSource: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The entity that creates, makes, produces or fabricates the substance
	public var manufacturer: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Moiety, for structural modifications
	public var moiety: [SubstanceDefinitionMoiety]?
	
	/// The molecular weight or weight range
	public var molecularWeight: [SubstanceDefinitionMolecularWeight]?
	
	/// Names applicable to this substance
	public var name: [SubstanceDefinitionName]?
	
	/// Textual comment about the substance's catalogue or registry record
	public var note: [Annotation]?
	
	/// General specifications for this substance
	public var property: [SubstanceDefinitionProperty]?
	
	/// A link between this substance and another
	public var relationship: [SubstanceDefinitionRelationship]?
	
	/// Material or taxonomic/anatomical source
	public var sourceMaterial: SubstanceDefinitionSourceMaterial?
	
	/// Status of substance within the catalogue e.g. active, retired
	public var status: CodeableConcept?
	
	/// Structural information
	public var structure: SubstanceDefinitionStructure?
	
	/// An entity that is the source for the substance. It may be different from the manufacturer
	public var supplier: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// A business level version identifier of the substance
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		classification: [CodeableConcept]? = nil,
		code: [SubstanceDefinitionFHIRString]? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		domain: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		grade: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		moiety: [SubstanceDefinitionMoiety]? = nil,
		molecularWeight: [SubstanceDefinitionMolecularWeight]? = nil,
		name: [SubstanceDefinitionName]? = nil,
		note: [Annotation]? = nil,
		property: [SubstanceDefinitionProperty]? = nil,
		relationship: [SubstanceDefinitionRelationship]? = nil,
		sourceMaterial: SubstanceDefinitionSourceMaterial? = nil,
		status: CodeableConcept? = nil,
		structure: SubstanceDefinitionStructure? = nil,
		supplier: [Reference]? = nil,
		text: Narrative? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.classification = classification
		self.code = code
		self.contained = contained
		self.description_fhir = description_fhir
		self.domain = domain
		self.`extension` = `extension`
		self.grade = grade
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.moiety = moiety
		self.molecularWeight = molecularWeight
		self.name = name
		self.note = note
		self.property = property
		self.relationship = relationship
		self.sourceMaterial = sourceMaterial
		self.status = status
		self.structure = structure
		self.supplier = supplier
		self.text = text
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case classification
		case code
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case domain
		case `extension` = "extension"
		case grade
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case language; case _language
		case manufacturer
		case meta
		case modifierExtension
		case moiety
		case molecularWeight
		case name
		case note
		case property
		case relationship
		case sourceMaterial
		case status
		case structure
		case supplier
		case text
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try [CodeableConcept](from: _container, forKeyIfPresent: .classification)
		self.code = try [SubstanceDefinitionFHIRString](from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.domain = try CodeableConcept(from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.grade = try [CodeableConcept](from: _container, forKeyIfPresent: .grade)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manufacturer = try [Reference](from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.moiety = try [SubstanceDefinitionMoiety](from: _container, forKeyIfPresent: .moiety)
		self.molecularWeight = try [SubstanceDefinitionMolecularWeight](from: _container, forKeyIfPresent: .molecularWeight)
		self.name = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.property = try [SubstanceDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.relationship = try [SubstanceDefinitionRelationship](from: _container, forKeyIfPresent: .relationship)
		self.sourceMaterial = try SubstanceDefinitionSourceMaterial(from: _container, forKeyIfPresent: .sourceMaterial)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.structure = try SubstanceDefinitionStructure(from: _container, forKeyIfPresent: .structure)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try grade?.encode(on: &_container, forKey: .grade)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try moiety?.encode(on: &_container, forKey: .moiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try name?.encode(on: &_container, forKey: .name)
		try note?.encode(on: &_container, forKey: .note)
		try property?.encode(on: &_container, forKey: .property)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try sourceMaterial?.encode(on: &_container, forKey: .sourceMaterial)
		try status?.encode(on: &_container, forKey: .status)
		try structure?.encode(on: &_container, forKey: .structure)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try text?.encode(on: &_container, forKey: .text)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Codes associated with the substance.
 */
public struct SubstanceDefinitionFHIRString: BackboneElement {
	
	/// The specific code
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Any comment can be provided in this field
	public var note: [Annotation]?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// Status of the code assignment, for example 'provisional', 'approved'
	public var status: CodeableConcept?
	
	/// The date at which the code status was changed
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.source = source
		self.status = status
		self.statusDate = statusDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case source
		case status
		case statusDate; case _statusDate
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
	}
}

/**
 Moiety, for structural modifications.
 */
public struct SubstanceDefinitionMoiety: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Quantitative value for this moiety
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier by which this moiety substance is known
	public var identifier: Identifier?
	
	/// The measurement type of the quantitative value
	public var measurementType: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Molecular formula for this moiety (e.g. with the Hill system)
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Textual name for this moiety substance
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// Role that the moiety is playing
	public var role: CodeableConcept?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: AmountX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		measurementType: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		opticalActivity: CodeableConcept? = nil,
		role: CodeableConcept? = nil,
		stereochemistry: CodeableConcept? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.measurementType = measurementType
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case measurementType
		case modifierExtension
		case molecularFormula; case _molecularFormula
		case name; case _name
		case opticalActivity
		case role
		case stereochemistry
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.measurementType = try CodeableConcept(from: _container, forKeyIfPresent: .measurementType)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = amount {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .amountQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try measurementType?.encode(on: &_container, forKey: .measurementType)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try role?.encode(on: &_container, forKey: .role)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAmount(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AmountX? {
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			_t_amount = .quantity(amountQuantity)
		}
		if let amountString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .amountString, auxiliaryKey: ._amountString) {
			if _t_amount != nil {
				throw DecodingError.dataCorruptedError(forKey: .amountString, in: _container, debugDescription: "More than one value provided for \"amount\"")
			}
			_t_amount = .string(amountString)
		}
		return _t_amount
	}
}

/**
 The molecular weight or weight range.
 
 The molecular weight or weight range (for proteins, polymers or nucleic acids).
 */
public struct SubstanceDefinitionMolecularWeight: BackboneElement {
	
	/// Used to capture quantitative values for a variety of elements
	public var amount: Quantity
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The method by which the weight was determined
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of molecular weight e.g. exact, average, weight average
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		amount: Quantity,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKey: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Names applicable to this substance.
 */
public struct SubstanceDefinitionName: BackboneElement {
	
	/// The use context of this name e.g. as an active ingredient or as a food colour additive
	public var domain: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The jurisdiction where this name applies
	public var jurisdiction: [CodeableConcept]?
	
	/// Human language that the name is written in
	public var language: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The actual name
	public var name: FHIRPrimitive<FHIRString>
	
	/// Details of the official nature of this name
	public var official: [SubstanceDefinitionNameOfficial]?
	
	/// If this is the preferred name for this substance
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// The status of the name e.g. 'current', 'proposed'
	public var status: CodeableConcept?
	
	/// A synonym of this particular name, by which the substance is also known
	public var synonym: [SubstanceDefinitionName]?
	
	/// A translation for this name into another human language
	public var translation: [SubstanceDefinitionName]?
	
	/// Name type e.g. 'systematic',  'scientific, 'brand'
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		domain: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		official: [SubstanceDefinitionNameOfficial]? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil,
		source: [Reference]? = nil,
		status: CodeableConcept? = nil,
		synonym: [SubstanceDefinitionName]? = nil,
		translation: [SubstanceDefinitionName]? = nil,
		type: CodeableConcept? = nil
	) {
		self.domain = domain
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.language = language
		self.modifierExtension = modifierExtension
		self.name = name
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
		case `extension` = "extension"
		case id; case _id
		case jurisdiction
		case language
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.domain = try [CodeableConcept](from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try [CodeableConcept](from: _container, forKeyIfPresent: .language)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.official = try [SubstanceDefinitionNameOfficial](from: _container, forKeyIfPresent: .official)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.synonym = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .synonym)
		self.translation = try [SubstanceDefinitionName](from: _container, forKeyIfPresent: .translation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try official?.encode(on: &_container, forKey: .official)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status)
		try synonym?.encode(on: &_container, forKey: .synonym)
		try translation?.encode(on: &_container, forKey: .translation)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Details of the official nature of this name.
 */
public struct SubstanceDefinitionNameOfficial: BackboneElement {
	
	/// Which authority uses this official name
	public var authority: CodeableConcept?
	
	/// Date of official name change
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The status of the official name, for example 'draft', 'active'
	public var status: CodeableConcept?
	
	/// Designated initializer
	public init(
		authority: CodeableConcept? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try CodeableConcept(from: _container, forKeyIfPresent: .authority)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try status?.encode(on: &_container, forKey: .status)
	}
}

/**
 General specifications for this substance.
 */
public struct SubstanceDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		indirect case quantity(Quantity)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A code expressing the type of property
	public var type: CodeableConcept
	
	/// A value for the property
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueQuantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		return _t_value
	}
}

/**
 A link between this substance and another.
 
 A link between this substance and another, with details of the relationship.
 */
public struct SubstanceDefinitionRelationship: BackboneElement {
	
	/// All possible types for "amount[x]"
	public enum AmountX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "substanceDefinition[x]"
	public enum SubstanceDefinitionX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// A numeric factor for the relationship, e.g. that a substance salt has some percentage of active substance in
	/// relation to some other
	/// One of `amount[x]`
	public var amount: AmountX?
	
	/// An operator for the amount, for example "average", "approximately", "less than"
	public var comparator: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that
	/// enzyme, out of several possible relationships
	public var isDefining: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// For use when the numeric has an uncertain range
	public var ratioHighLimitAmount: Ratio?
	
	/// Supporting literature
	public var source: [Reference]?
	
	/// A pointer to another substance, as a resource or a representational code
	/// One of `substanceDefinition[x]`
	public var substanceDefinition: SubstanceDefinitionX?
	
	/// For example "salt to parent", "active moiety"
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		amount: AmountX? = nil,
		comparator: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDefining: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		ratioHighLimitAmount: Ratio? = nil,
		source: [Reference]? = nil,
		substanceDefinition: SubstanceDefinitionX? = nil,
		type: CodeableConcept
	) {
		self.amount = amount
		self.comparator = comparator
		self.`extension` = `extension`
		self.id = id
		self.isDefining = isDefining
		self.modifierExtension = modifierExtension
		self.ratioHighLimitAmount = ratioHighLimitAmount
		self.source = source
		self.substanceDefinition = substanceDefinition
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountQuantity
		case amountRatio
		case amountString; case _amountString
		case comparator
		case `extension` = "extension"
		case id; case _id
		case isDefining; case _isDefining
		case modifierExtension
		case ratioHighLimitAmount
		case source
		case substanceDefinitionCodeableConcept
		case substanceDefinitionReference
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Self._decodeAmount(from: _container)
		self.comparator = try CodeableConcept(from: _container, forKeyIfPresent: .comparator)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDefining = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDefining, auxiliaryKey: ._isDefining)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.ratioHighLimitAmount = try Ratio(from: _container, forKeyIfPresent: .ratioHighLimitAmount)
		self.source = try [Reference](from: _container, forKeyIfPresent: .source)
		self.substanceDefinition = try Self._decodeSubstanceDefinition(from: _container)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = amount {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .amountQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .amountRatio)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .amountString, auxiliaryKey: ._amountString)
		}
		}
		try comparator?.encode(on: &_container, forKey: .comparator)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDefining?.encode(on: &_container, forKey: .isDefining, auxiliaryKey: ._isDefining)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try ratioHighLimitAmount?.encode(on: &_container, forKey: .ratioHighLimitAmount)
		try source?.encode(on: &_container, forKey: .source)
		if let _enum = substanceDefinition {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .substanceDefinitionCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .substanceDefinitionReference)
		}
		}
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAmount(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AmountX? {
		var _t_amount: AmountX? = nil
		if let amountQuantity = try Quantity(from: _container, forKeyIfPresent: .amountQuantity) {
			_t_amount = .quantity(amountQuantity)
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
		return _t_amount
	}
	
	private static func _decodeSubstanceDefinition(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubstanceDefinitionX? {
		var _t_substanceDefinition: SubstanceDefinitionX? = nil
		if let substanceDefinitionCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .substanceDefinitionCodeableConcept) {
			_t_substanceDefinition = .codeableConcept(substanceDefinitionCodeableConcept)
		}
		if let substanceDefinitionReference = try Reference(from: _container, forKeyIfPresent: .substanceDefinitionReference) {
			if _t_substanceDefinition != nil {
				throw DecodingError.dataCorruptedError(forKey: .substanceDefinitionReference, in: _container, debugDescription: "More than one value provided for \"substanceDefinition\"")
			}
			_t_substanceDefinition = .reference(substanceDefinitionReference)
		}
		return _t_substanceDefinition
	}
}

/**
 Material or taxonomic/anatomical source.
 
 Material or taxonomic/anatomical source for the substance.
 */
public struct SubstanceDefinitionSourceMaterial: BackboneElement {
	
	/// The country or countries where the material is harvested
	public var countryOfOrigin: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The genus of an organism e.g. the Latin epithet of the plant/animal scientific name
	public var genus: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// An anatomical origin of the source material within an organism
	public var part: CodeableConcept?
	
	/// The species of an organism e.g. the Latin epithet of the species of the plant/animal
	public var species: CodeableConcept?
	
	/// Classification of the origin of the raw material. e.g. cat hair is an Animal source type
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		countryOfOrigin: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		genus: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		part: CodeableConcept? = nil,
		species: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.countryOfOrigin = countryOfOrigin
		self.`extension` = `extension`
		self.genus = genus
		self.id = id
		self.modifierExtension = modifierExtension
		self.part = part
		self.species = species
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countryOfOrigin
		case `extension` = "extension"
		case genus
		case id; case _id
		case modifierExtension
		case part
		case species
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.countryOfOrigin = try [CodeableConcept](from: _container, forKeyIfPresent: .countryOfOrigin)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.genus = try CodeableConcept(from: _container, forKeyIfPresent: .genus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.part = try CodeableConcept(from: _container, forKeyIfPresent: .part)
		self.species = try CodeableConcept(from: _container, forKeyIfPresent: .species)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try countryOfOrigin?.encode(on: &_container, forKey: .countryOfOrigin)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try genus?.encode(on: &_container, forKey: .genus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try part?.encode(on: &_container, forKey: .part)
		try species?.encode(on: &_container, forKey: .species)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Structural information.
 */
public struct SubstanceDefinitionStructure: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Molecular formula (e.g. using the Hill system)
	public var molecularFormula: FHIRPrimitive<FHIRString>?
	
	/// Specified per moiety according to the Hill system
	public var molecularFormulaByMoiety: FHIRPrimitive<FHIRString>?
	
	/// The molecular weight or weight range
	public var molecularWeight: SubstanceDefinitionMolecularWeight?
	
	/// Optical activity type
	public var opticalActivity: CodeableConcept?
	
	/// A depiction of the structure or characterization of the substance
	public var representation: [SubstanceDefinitionStructureRepresentation]?
	
	/// Source of information for the structure
	public var sourceDocument: [Reference]?
	
	/// Stereochemistry type
	public var stereochemistry: CodeableConcept?
	
	/// The method used to find the structure e.g. X-ray, NMR
	public var technique: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		molecularFormula: FHIRPrimitive<FHIRString>? = nil,
		molecularFormulaByMoiety: FHIRPrimitive<FHIRString>? = nil,
		molecularWeight: SubstanceDefinitionMolecularWeight? = nil,
		opticalActivity: CodeableConcept? = nil,
		representation: [SubstanceDefinitionStructureRepresentation]? = nil,
		sourceDocument: [Reference]? = nil,
		stereochemistry: CodeableConcept? = nil,
		technique: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.molecularFormula = molecularFormula
		self.molecularFormulaByMoiety = molecularFormulaByMoiety
		self.molecularWeight = molecularWeight
		self.opticalActivity = opticalActivity
		self.representation = representation
		self.sourceDocument = sourceDocument
		self.stereochemistry = stereochemistry
		self.technique = technique
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case molecularFormula; case _molecularFormula
		case molecularFormulaByMoiety; case _molecularFormulaByMoiety
		case molecularWeight
		case opticalActivity
		case representation
		case sourceDocument
		case stereochemistry
		case technique
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.molecularFormula = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormula, auxiliaryKey: ._molecularFormula)
		self.molecularFormulaByMoiety = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		self.molecularWeight = try SubstanceDefinitionMolecularWeight(from: _container, forKeyIfPresent: .molecularWeight)
		self.opticalActivity = try CodeableConcept(from: _container, forKeyIfPresent: .opticalActivity)
		self.representation = try [SubstanceDefinitionStructureRepresentation](from: _container, forKeyIfPresent: .representation)
		self.sourceDocument = try [Reference](from: _container, forKeyIfPresent: .sourceDocument)
		self.stereochemistry = try CodeableConcept(from: _container, forKeyIfPresent: .stereochemistry)
		self.technique = try [CodeableConcept](from: _container, forKeyIfPresent: .technique)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try molecularFormula?.encode(on: &_container, forKey: .molecularFormula, auxiliaryKey: ._molecularFormula)
		try molecularFormulaByMoiety?.encode(on: &_container, forKey: .molecularFormulaByMoiety, auxiliaryKey: ._molecularFormulaByMoiety)
		try molecularWeight?.encode(on: &_container, forKey: .molecularWeight)
		try opticalActivity?.encode(on: &_container, forKey: .opticalActivity)
		try representation?.encode(on: &_container, forKey: .representation)
		try sourceDocument?.encode(on: &_container, forKey: .sourceDocument)
		try stereochemistry?.encode(on: &_container, forKey: .stereochemistry)
		try technique?.encode(on: &_container, forKey: .technique)
	}
}

/**
 A depiction of the structure or characterization of the substance.
 */
public struct SubstanceDefinitionStructureRepresentation: BackboneElement {
	
	/// An attachment with the structural representation e.g. a structure graphic or AnIML file
	public var document: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The format of the representation e.g. InChI, SMILES, MOLFILE (note: not the physical file format)
	public var format: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The structural representation or characterization as a text string in a standard format
	public var representation: FHIRPrimitive<FHIRString>?
	
	/// The kind of structural representation (e.g. full, partial)
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		document: Reference? = nil,
		`extension`: [Extension]? = nil,
		format: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		representation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.document = document
		self.`extension` = `extension`
		self.format = format
		self.id = id
		self.modifierExtension = modifierExtension
		self.representation = representation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case document
		case `extension` = "extension"
		case format
		case id; case _id
		case modifierExtension
		case representation; case _representation
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.document = try Reference(from: _container, forKeyIfPresent: .document)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.format = try CodeableConcept(from: _container, forKeyIfPresent: .format)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.representation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .representation, auxiliaryKey: ._representation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try document?.encode(on: &_container, forKey: .document)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try format?.encode(on: &_container, forKey: .format)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try representation?.encode(on: &_container, forKey: .representation, auxiliaryKey: ._representation)
		try type?.encode(on: &_container, forKey: .type)
	}
}
