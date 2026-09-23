//
//  ClinicalUseDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ClinicalUseDefinition)
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
 A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product,
 medication, device or procedure.
 */
public struct ClinicalUseDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .clinicalUseDefinition
	
	/// A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy",
	/// "Overdose"
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Specifics for when this is a contraindication
	public var contraindication: ClinicalUseDefinitionContraindication?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this issue
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Specifics for when this is an indication
	public var indication: ClinicalUseDefinitionIndication?
	
	/// Specifics for when this is an interaction
	public var interaction: ClinicalUseDefinitionInteraction?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Logic used by the clinical use definition
	public var library: [FHIRPrimitive<Canonical>]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The population group to which this applies
	public var population: [Reference]?
	
	/// Whether this is a current issue or one that has been retired etc
	public var status: CodeableConcept?
	
	/// The medication, product, substance, device, procedure etc. for which this is an indication, contraindication,
	/// interaction, undesirable effect, or warning
	public var subject: [CodeableReference]
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// None
	public var type: FHIRPrimitive<ClinicalUseDefinitionType>
	
	/// A possible negative outcome from the use of this treatment
	public var undesirableEffect: ClinicalUseDefinitionUndesirableEffect?
	
	/// Critical environmental, health or physical risks or hazards. For example 'Do not operate heavy machinery', 'May
	/// cause drowsiness'
	public var warning: ClinicalUseDefinitionWarning?
	
	/// Designated initializer
	public init(
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		contraindication: ClinicalUseDefinitionContraindication? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		indication: ClinicalUseDefinitionIndication? = nil,
		interaction: ClinicalUseDefinitionInteraction? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		library: [FHIRPrimitive<Canonical>]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		population: [Reference]? = nil,
		status: CodeableConcept? = nil,
		subject: [CodeableReference],
		text: Narrative? = nil,
		type: FHIRPrimitive<ClinicalUseDefinitionType>,
		undesirableEffect: ClinicalUseDefinitionUndesirableEffect? = nil,
		warning: ClinicalUseDefinitionWarning? = nil
	) {
		self.category = category
		self.contained = contained
		self.contraindication = contraindication
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indication = indication
		self.interaction = interaction
		self.language = language
		self.library = library
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.population = population
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
		self.undesirableEffect = undesirableEffect
		self.warning = warning
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category
		case contained
		case contraindication
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case indication
		case interaction
		case language; case _language
		case library; case _library
		case meta
		case modifierExtension
		case population
		case status
		case subject
		case text
		case type; case _type
		case undesirableEffect
		case warning
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contraindication = try ClinicalUseDefinitionContraindication(from: _container, forKeyIfPresent: .contraindication)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.indication = try ClinicalUseDefinitionIndication(from: _container, forKeyIfPresent: .indication)
		self.interaction = try ClinicalUseDefinitionInteraction(from: _container, forKeyIfPresent: .interaction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.library = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .library, auxiliaryKey: ._library)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.population = try [Reference](from: _container, forKeyIfPresent: .population)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.subject = try [CodeableReference](from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<ClinicalUseDefinitionType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.undesirableEffect = try ClinicalUseDefinitionUndesirableEffect(from: _container, forKeyIfPresent: .undesirableEffect)
		self.warning = try ClinicalUseDefinitionWarning(from: _container, forKeyIfPresent: .warning)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try contraindication?.encode(on: &_container, forKey: .contraindication)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try indication?.encode(on: &_container, forKey: .indication)
		try interaction?.encode(on: &_container, forKey: .interaction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try library?.encode(on: &_container, forKey: .library, auxiliaryKey: ._library)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try population?.encode(on: &_container, forKey: .population)
		try status?.encode(on: &_container, forKey: .status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
		try warning?.encode(on: &_container, forKey: .warning)
	}
}

/**
 Specifics for when this is a contraindication.
 */
public struct ClinicalUseDefinitionContraindication: BackboneElement {
	
	/// An expression that returns true or false, indicating whether the indication is applicable or not, after having
	/// applied its other elements
	public var applicability: Expression?
	
	/// A comorbidity (concurrent condition) or coinfection
	public var comorbidity: [CodeableReference]?
	
	/// The status of the disease or symptom for the contraindication
	public var diseaseStatus: CodeableReference?
	
	/// The situation that is being documented as contraindicating against this item
	public var diseaseSymptomProcedure: CodeableReference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The indication which this is a contraindication for
	public var indication: [ClinicalUseDefinitionIndication]?
	
	/// Actions for managing the contraindication
	public var management: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Information about use of the product in relation to other therapies described as part of the contraindication
	public var otherTherapy: [ClinicalUseDefinitionIndicationOtherTherapy]?
	
	/// Designated initializer
	public init(
		applicability: Expression? = nil,
		comorbidity: [CodeableReference]? = nil,
		diseaseStatus: CodeableReference? = nil,
		diseaseSymptomProcedure: CodeableReference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: [ClinicalUseDefinitionIndication]? = nil,
		management: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		otherTherapy: [ClinicalUseDefinitionIndicationOtherTherapy]? = nil
	) {
		self.applicability = applicability
		self.comorbidity = comorbidity
		self.diseaseStatus = diseaseStatus
		self.diseaseSymptomProcedure = diseaseSymptomProcedure
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.management = management
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case comorbidity
		case diseaseStatus
		case diseaseSymptomProcedure
		case `extension` = "extension"
		case id; case _id
		case indication
		case management
		case modifierExtension
		case otherTherapy
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.applicability = try Expression(from: _container, forKeyIfPresent: .applicability)
		self.comorbidity = try [CodeableReference](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableReference(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableReference(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.indication = try [ClinicalUseDefinitionIndication](from: _container, forKeyIfPresent: .indication)
		self.management = try [CodeableConcept](from: _container, forKeyIfPresent: .management)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherTherapy = try [ClinicalUseDefinitionIndicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try applicability?.encode(on: &_container, forKey: .applicability)
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try indication?.encode(on: &_container, forKey: .indication)
		try management?.encode(on: &_container, forKey: .management)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
	}
}

/**
 Specifics for when this is an indication.
 */
public struct ClinicalUseDefinitionIndication: BackboneElement {
	
	/// All possible types for "duration[x]"
	public enum DurationX: Equatable, Hashable, Sendable {
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// An expression that returns true or false, indicating whether the indication is applicable or not, after having
	/// applied its other elements
	public var applicability: Expression?
	
	/// A comorbidity or coinfection as part of the indication
	public var comorbidity: [CodeableReference]?
	
	/// The status of the disease or symptom for the indication
	public var diseaseStatus: CodeableReference?
	
	/// The situation that is being documented as an indication for this item
	public var diseaseSymptomProcedure: CodeableReference?
	
	/// Timing or duration information
	/// One of `duration[x]`
	public var duration: DurationX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The intended effect, aim or strategy to be achieved
	public var intendedEffect: [CodeableReference]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Information about use of the product in relation to other therapies described as part of the contraindication
	public var otherTherapy: [ClinicalUseDefinitionIndicationOtherTherapy]?
	
	/// An unwanted side effect or negative outcome of the subject of this resource when being used for this indication
	public var undesirableEffect: [ClinicalUseDefinitionUndesirableEffect]?
	
	/// Designated initializer
	public init(
		applicability: Expression? = nil,
		comorbidity: [CodeableReference]? = nil,
		diseaseStatus: CodeableReference? = nil,
		diseaseSymptomProcedure: CodeableReference? = nil,
		duration: DurationX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intendedEffect: [CodeableReference]? = nil,
		modifierExtension: [Extension]? = nil,
		otherTherapy: [ClinicalUseDefinitionIndicationOtherTherapy]? = nil,
		undesirableEffect: [ClinicalUseDefinitionUndesirableEffect]? = nil
	) {
		self.applicability = applicability
		self.comorbidity = comorbidity
		self.diseaseStatus = diseaseStatus
		self.diseaseSymptomProcedure = diseaseSymptomProcedure
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.intendedEffect = intendedEffect
		self.modifierExtension = modifierExtension
		self.otherTherapy = otherTherapy
		self.undesirableEffect = undesirableEffect
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case applicability
		case comorbidity
		case diseaseStatus
		case diseaseSymptomProcedure
		case durationRange
		case durationString; case _durationString
		case `extension` = "extension"
		case id; case _id
		case intendedEffect
		case modifierExtension
		case otherTherapy
		case undesirableEffect
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.applicability = try Expression(from: _container, forKeyIfPresent: .applicability)
		self.comorbidity = try [CodeableReference](from: _container, forKeyIfPresent: .comorbidity)
		self.diseaseStatus = try CodeableReference(from: _container, forKeyIfPresent: .diseaseStatus)
		self.diseaseSymptomProcedure = try CodeableReference(from: _container, forKeyIfPresent: .diseaseSymptomProcedure)
		self.duration = try Self._decodeDuration(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.intendedEffect = try [CodeableReference](from: _container, forKeyIfPresent: .intendedEffect)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.otherTherapy = try [ClinicalUseDefinitionIndicationOtherTherapy](from: _container, forKeyIfPresent: .otherTherapy)
		self.undesirableEffect = try [ClinicalUseDefinitionUndesirableEffect](from: _container, forKeyIfPresent: .undesirableEffect)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try applicability?.encode(on: &_container, forKey: .applicability)
		try comorbidity?.encode(on: &_container, forKey: .comorbidity)
		try diseaseStatus?.encode(on: &_container, forKey: .diseaseStatus)
		try diseaseSymptomProcedure?.encode(on: &_container, forKey: .diseaseSymptomProcedure)
		if let _enum = duration {
		switch _enum {
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .durationRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .durationString, auxiliaryKey: ._durationString)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try intendedEffect?.encode(on: &_container, forKey: .intendedEffect)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try otherTherapy?.encode(on: &_container, forKey: .otherTherapy)
		try undesirableEffect?.encode(on: &_container, forKey: .undesirableEffect)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDuration(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DurationX? {
		var _t_duration: DurationX? = nil
		if let durationRange = try Range(from: _container, forKeyIfPresent: .durationRange) {
			_t_duration = .range(durationRange)
		}
		if let durationString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .durationString, auxiliaryKey: ._durationString) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationString, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .string(durationString)
		}
		return _t_duration
	}
}

/**
 Information about use of the product in relation to other therapies described as part of the contraindication.
 
 Information about the use of the medicinal product in relation to other therapies described as part of the
 contraindication.
 */
public struct ClinicalUseDefinitionIndicationOtherTherapy: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of relationship between the product indication/contraindication and another therapy
	public var relationshipType: CodeableConcept
	
	/// Reference to a specific medication, substance etc. as part of an indication or contraindication
	public var treatment: CodeableReference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relationshipType: CodeableConcept,
		treatment: CodeableReference
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relationshipType = relationshipType
		self.treatment = treatment
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relationshipType
		case treatment
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relationshipType = try CodeableConcept(from: _container, forKey: .relationshipType)
		self.treatment = try CodeableReference(from: _container, forKey: .treatment)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relationshipType.encode(on: &_container, forKey: .relationshipType)
		try treatment.encode(on: &_container, forKey: .treatment)
	}
}

/**
 Specifics for when this is an interaction.
 */
public struct ClinicalUseDefinitionInteraction: BackboneElement {
	
	/// The effect of the interaction, for example "reduced gastric absorption of primary medication"
	public var effect: CodeableReference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The incidence of the interaction, e.g. theoretical, observed
	public var incidence: CodeableConcept?
	
	/// The specific medication, product, food etc. or laboratory test that interacts
	public var interactant: [ClinicalUseDefinitionInteractionInteractant]?
	
	/// Actions for managing the interaction
	public var management: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The severity of the interaction
	public var severity: CodeableConcept?
	
	/// The type of the interaction e.g. drug-drug interaction, drug-lab test interaction
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		effect: CodeableReference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		incidence: CodeableConcept? = nil,
		interactant: [ClinicalUseDefinitionInteractionInteractant]? = nil,
		management: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		severity: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.effect = effect
		self.`extension` = `extension`
		self.id = id
		self.incidence = incidence
		self.interactant = interactant
		self.management = management
		self.modifierExtension = modifierExtension
		self.severity = severity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effect
		case `extension` = "extension"
		case id; case _id
		case incidence
		case interactant
		case management
		case modifierExtension
		case severity
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.effect = try CodeableReference(from: _container, forKeyIfPresent: .effect)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.incidence = try CodeableConcept(from: _container, forKeyIfPresent: .incidence)
		self.interactant = try [ClinicalUseDefinitionInteractionInteractant](from: _container, forKeyIfPresent: .interactant)
		self.management = try [CodeableConcept](from: _container, forKeyIfPresent: .management)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try effect?.encode(on: &_container, forKey: .effect)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try incidence?.encode(on: &_container, forKey: .incidence)
		try interactant?.encode(on: &_container, forKey: .interactant)
		try management?.encode(on: &_container, forKey: .management)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try severity?.encode(on: &_container, forKey: .severity)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The specific medication, product, food etc. or laboratory test that interacts.
 
 The specific medication, product, food, substance etc. or laboratory test that interacts.
 */
public struct ClinicalUseDefinitionInteractionInteractant: BackboneElement {
	
	/// All possible types for "item[x]"
	public enum ItemX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The specific medication, product, food etc. or laboratory test that interacts
	/// One of `item[x]`
	public var item: ItemX
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The route by which the item is administered to cause the interaction
	public var route: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: ItemX,
		modifierExtension: [Extension]? = nil,
		route: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.item = item
		self.modifierExtension = modifierExtension
		self.route = route
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case itemCodeableConcept
		case itemReference
		case modifierExtension
		case route
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.item = try Self._decodeItem(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		
		switch item {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .itemCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .itemReference)
		}
		
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try route?.encode(on: &_container, forKey: .route)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeItem(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ItemX {
		var _t_item: ItemX? = nil
		if let itemCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .itemCodeableConcept) {
			_t_item = .codeableConcept(itemCodeableConcept)
		}
		if let itemReference = try Reference(from: _container, forKeyIfPresent: .itemReference) {
			if _t_item != nil {
				throw DecodingError.dataCorruptedError(forKey: .itemReference, in: _container, debugDescription: "More than one value provided for \"item\"")
			}
			_t_item = .reference(itemReference)
		}
		guard let _t_item else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.itemReference)
			throw DecodingError.valueNotFound(ItemX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"item\" but have none"))
		}
		return _t_item
	}
}

/**
 A possible negative outcome from the use of this treatment.
 
 Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.
 */
public struct ClinicalUseDefinitionUndesirableEffect: BackboneElement {
	
	/// High level classification of the effect
	public var classification: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// How often the effect is seen
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Actions for managing the undesirable effect
	public var management: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The situation in which the undesirable effect may manifest
	public var symptomConditionEffect: CodeableReference?
	
	/// Designated initializer
	public init(
		classification: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		frequencyOfOccurrence: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		management: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		symptomConditionEffect: CodeableReference? = nil
	) {
		self.classification = classification
		self.`extension` = `extension`
		self.frequencyOfOccurrence = frequencyOfOccurrence
		self.id = id
		self.management = management
		self.modifierExtension = modifierExtension
		self.symptomConditionEffect = symptomConditionEffect
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case classification
		case `extension` = "extension"
		case frequencyOfOccurrence
		case id; case _id
		case management
		case modifierExtension
		case symptomConditionEffect
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.classification = try CodeableConcept(from: _container, forKeyIfPresent: .classification)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frequencyOfOccurrence = try CodeableConcept(from: _container, forKeyIfPresent: .frequencyOfOccurrence)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.management = try [CodeableConcept](from: _container, forKeyIfPresent: .management)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.symptomConditionEffect = try CodeableReference(from: _container, forKeyIfPresent: .symptomConditionEffect)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try classification?.encode(on: &_container, forKey: .classification)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frequencyOfOccurrence?.encode(on: &_container, forKey: .frequencyOfOccurrence)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try management?.encode(on: &_container, forKey: .management)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try symptomConditionEffect?.encode(on: &_container, forKey: .symptomConditionEffect)
	}
}

/**
 Critical environmental, health or physical risks or hazards. For example 'Do not operate heavy machinery', 'May cause
 drowsiness'.
 
 A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the
 user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you
 feel unwell'.
 */
public struct ClinicalUseDefinitionWarning: BackboneElement {
	
	/// A coded or unformatted textual definition of this warning
	public var code: CodeableConcept?
	
	/// A textual definition of this warning, with formatting
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
