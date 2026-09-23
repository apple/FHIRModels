//
//  SpecimenDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition)
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
 Kind of specimen.
 
 A kind of specimen with associated set of requirements.
 */
public struct SpecimenDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .specimenDefinition
	
	/// Specimen collection procedure
	public var collection: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier of a kind of specimen
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient preparation for collection
	public var patientPreparation: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Time aspect for collection
	public var timeAspect: FHIRPrimitive<FHIRString>?
	
	/// Kind of material to collect
	public var typeCollected: CodeableConcept?
	
	/// Specimen in container intended for testing by lab
	public var typeTested: [SpecimenDefinitionTypeTested]?
	
	/// Designated initializer
	public init(
		collection: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patientPreparation: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		timeAspect: FHIRPrimitive<FHIRString>? = nil,
		typeCollected: CodeableConcept? = nil,
		typeTested: [SpecimenDefinitionTypeTested]? = nil
	) {
		self.collection = collection
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patientPreparation = patientPreparation
		self.text = text
		self.timeAspect = timeAspect
		self.typeCollected = typeCollected
		self.typeTested = typeTested
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case collection
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patientPreparation
		case text
		case timeAspect; case _timeAspect
		case typeCollected
		case typeTested
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.collection = try [CodeableConcept](from: _container, forKeyIfPresent: .collection)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patientPreparation = try [CodeableConcept](from: _container, forKeyIfPresent: .patientPreparation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timeAspect = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .timeAspect, auxiliaryKey: ._timeAspect)
		self.typeCollected = try CodeableConcept(from: _container, forKeyIfPresent: .typeCollected)
		self.typeTested = try [SpecimenDefinitionTypeTested](from: _container, forKeyIfPresent: .typeTested)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try collection?.encode(on: &_container, forKey: .collection)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patientPreparation?.encode(on: &_container, forKey: .patientPreparation)
		try text?.encode(on: &_container, forKey: .text)
		try timeAspect?.encode(on: &_container, forKey: .timeAspect, auxiliaryKey: ._timeAspect)
		try typeCollected?.encode(on: &_container, forKey: .typeCollected)
		try typeTested?.encode(on: &_container, forKey: .typeTested)
	}
}

/**
 Specimen in container intended for testing by lab.
 
 Specimen conditioned in a container as expected by the testing laboratory.
 */
public struct SpecimenDefinitionTypeTested: BackboneElement {
	
	/// The specimen's container
	public var container: SpecimenDefinitionTypeTestedContainer?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Specimen handling before testing
	public var handling: [SpecimenDefinitionTypeTestedHandling]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Primary or secondary specimen
	public var isDerived: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The preference for this type of conditioned specimen.
	public var preference: FHIRPrimitive<SpecimenContainedPreference>
	
	/// Rejection criterion
	public var rejectionCriterion: [CodeableConcept]?
	
	/// Specimen requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Specimen retention time
	public var retentionTime: Duration?
	
	/// Type of intended specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		container: SpecimenDefinitionTypeTestedContainer? = nil,
		`extension`: [Extension]? = nil,
		handling: [SpecimenDefinitionTypeTestedHandling]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDerived: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		preference: FHIRPrimitive<SpecimenContainedPreference>,
		rejectionCriterion: [CodeableConcept]? = nil,
		requirement: FHIRPrimitive<FHIRString>? = nil,
		retentionTime: Duration? = nil,
		type: CodeableConcept? = nil
	) {
		self.container = container
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.isDerived = isDerived
		self.modifierExtension = modifierExtension
		self.preference = preference
		self.rejectionCriterion = rejectionCriterion
		self.requirement = requirement
		self.retentionTime = retentionTime
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case container
		case `extension` = "extension"
		case handling
		case id; case _id
		case isDerived; case _isDerived
		case modifierExtension
		case preference; case _preference
		case rejectionCriterion
		case requirement; case _requirement
		case retentionTime
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.container = try SpecimenDefinitionTypeTestedContainer(from: _container, forKeyIfPresent: .container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.handling = try [SpecimenDefinitionTypeTestedHandling](from: _container, forKeyIfPresent: .handling)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDerived = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDerived, auxiliaryKey: ._isDerived)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preference = try FHIRPrimitive<SpecimenContainedPreference>(from: _container, forKey: .preference, auxiliaryKey: ._preference)
		self.rejectionCriterion = try [CodeableConcept](from: _container, forKeyIfPresent: .rejectionCriterion)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.retentionTime = try Duration(from: _container, forKeyIfPresent: .retentionTime)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try container?.encode(on: &_container, forKey: .container)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try handling?.encode(on: &_container, forKey: .handling)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDerived?.encode(on: &_container, forKey: .isDerived, auxiliaryKey: ._isDerived)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preference.encode(on: &_container, forKey: .preference, auxiliaryKey: ._preference)
		try rejectionCriterion?.encode(on: &_container, forKey: .rejectionCriterion)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try retentionTime?.encode(on: &_container, forKey: .retentionTime)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The specimen's container.
 */
public struct SpecimenDefinitionTypeTestedContainer: BackboneElement {
	
	/// All possible types for "minimumVolume[x]"
	public enum MinimumVolumeX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additive associated with container
	public var additive: [SpecimenDefinitionTypeTestedContainerAdditive]?
	
	/// Color of container cap
	public var cap: CodeableConcept?
	
	/// Container capacity
	public var capacity: Quantity?
	
	/// Container description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Container material
	public var material: CodeableConcept?
	
	/// Minimum volume
	/// One of `minimumVolume[x]`
	public var minimumVolume: MinimumVolumeX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specimen container preparation
	public var preparation: FHIRPrimitive<FHIRString>?
	
	/// Kind of container associated with the kind of specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		additive: [SpecimenDefinitionTypeTestedContainerAdditive]? = nil,
		cap: CodeableConcept? = nil,
		capacity: Quantity? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		material: CodeableConcept? = nil,
		minimumVolume: MinimumVolumeX? = nil,
		modifierExtension: [Extension]? = nil,
		preparation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.additive = additive
		self.cap = cap
		self.capacity = capacity
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.material = material
		self.minimumVolume = minimumVolume
		self.modifierExtension = modifierExtension
		self.preparation = preparation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case cap
		case capacity
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case material
		case minimumVolumeQuantity
		case minimumVolumeString; case _minimumVolumeString
		case modifierExtension
		case preparation; case _preparation
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [SpecimenDefinitionTypeTestedContainerAdditive](from: _container, forKeyIfPresent: .additive)
		self.cap = try CodeableConcept(from: _container, forKeyIfPresent: .cap)
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		self.minimumVolume = try Self._decodeMinimumVolume(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preparation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparation, auxiliaryKey: ._preparation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try cap?.encode(on: &_container, forKey: .cap)
		try capacity?.encode(on: &_container, forKey: .capacity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try material?.encode(on: &_container, forKey: .material)
		if let _enum = minimumVolume {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .minimumVolumeQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preparation?.encode(on: &_container, forKey: .preparation, auxiliaryKey: ._preparation)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMinimumVolume(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MinimumVolumeX? {
		var _t_minimumVolume: MinimumVolumeX? = nil
		if let minimumVolumeQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumVolumeQuantity) {
			_t_minimumVolume = .quantity(minimumVolumeQuantity)
		}
		if let minimumVolumeString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeString, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .string(minimumVolumeString)
		}
		return _t_minimumVolume
	}
}

/**
 Additive associated with container.
 
 Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
 Citrate, EDTA.
 */
public struct SpecimenDefinitionTypeTestedContainerAdditive: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		additive: AdditiveX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.additive = additive
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try Self._decodeAdditive(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch additive {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .additiveCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .additiveReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAdditive(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AdditiveX {
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		guard let _t_additive else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.additiveReference)
			throw DecodingError.valueNotFound(AdditiveX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"additive\" but have none"))
		}
		return _t_additive
	}
}

/**
 Specimen handling before testing.
 
 Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing
 process.
 */
public struct SpecimenDefinitionTypeTestedHandling: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Preservation instruction
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Maximum preservation time
	public var maxDuration: Duration?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Temperature qualifier
	public var temperatureQualifier: CodeableConcept?
	
	/// Temperature range
	public var temperatureRange: Range?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: FHIRPrimitive<FHIRString>? = nil,
		maxDuration: Duration? = nil,
		modifierExtension: [Extension]? = nil,
		temperatureQualifier: CodeableConcept? = nil,
		temperatureRange: Range? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.maxDuration = maxDuration
		self.modifierExtension = modifierExtension
		self.temperatureQualifier = temperatureQualifier
		self.temperatureRange = temperatureRange
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case instruction; case _instruction
		case maxDuration
		case modifierExtension
		case temperatureQualifier
		case temperatureRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.maxDuration = try Duration(from: _container, forKeyIfPresent: .maxDuration)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.temperatureQualifier = try CodeableConcept(from: _container, forKeyIfPresent: .temperatureQualifier)
		self.temperatureRange = try Range(from: _container, forKeyIfPresent: .temperatureRange)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try maxDuration?.encode(on: &_container, forKey: .maxDuration)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try temperatureQualifier?.encode(on: &_container, forKey: .temperatureQualifier)
		try temperatureRange?.encode(on: &_container, forKey: .temperatureRange)
	}
}
