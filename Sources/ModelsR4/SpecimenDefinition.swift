//
//  SpecimenDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition)
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
 Kind of specimen.
 
 A kind of specimen with associated set of requirements.
 */
open class SpecimenDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .specimenDefinition }
	
	/// Business identifier of a kind of specimen
	public var identifier: Identifier?
	
	/// Kind of material to collect
	public var typeCollected: CodeableConcept?
	
	/// Patient preparation for collection
	public var patientPreparation: [CodeableConcept]?
	
	/// Time aspect for collection
	public var timeAspect: FHIRPrimitive<FHIRString>?
	
	/// Specimen collection procedure
	public var collection: [CodeableConcept]?
	
	/// Specimen in container intended for testing by lab
	public var typeTested: [SpecimenDefinitionTypeTested]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							typeTested: [SpecimenDefinitionTypeTested]? = nil)
	{
		self.init()
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
		case collection
		case identifier
		case patientPreparation
		case timeAspect; case _timeAspect
		case typeCollected
		case typeTested
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.collection = try [CodeableConcept](from: _container, forKeyIfPresent: .collection)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.patientPreparation = try [CodeableConcept](from: _container, forKeyIfPresent: .patientPreparation)
		self.timeAspect = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .timeAspect, auxiliaryKey: ._timeAspect)
		self.typeCollected = try CodeableConcept(from: _container, forKeyIfPresent: .typeCollected)
		self.typeTested = try [SpecimenDefinitionTypeTested](from: _container, forKeyIfPresent: .typeTested)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try collection?.encode(on: &_container, forKey: .collection)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patientPreparation?.encode(on: &_container, forKey: .patientPreparation)
		try timeAspect?.encode(on: &_container, forKey: .timeAspect, auxiliaryKey: ._timeAspect)
		try typeCollected?.encode(on: &_container, forKey: .typeCollected)
		try typeTested?.encode(on: &_container, forKey: .typeTested)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return collection == _other.collection
		    && identifier == _other.identifier
		    && patientPreparation == _other.patientPreparation
		    && timeAspect == _other.timeAspect
		    && typeCollected == _other.typeCollected
		    && typeTested == _other.typeTested
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(collection)
		hasher.combine(identifier)
		hasher.combine(patientPreparation)
		hasher.combine(timeAspect)
		hasher.combine(typeCollected)
		hasher.combine(typeTested)
	}
}

/**
 Specimen in container intended for testing by lab.
 
 Specimen conditioned in a container as expected by the testing laboratory.
 */
open class SpecimenDefinitionTypeTested: BackboneElement {
	
	/// Primary or secondary specimen
	public var isDerived: FHIRPrimitive<FHIRBool>?
	
	/// Type of intended specimen
	public var type: CodeableConcept?
	
	/// The preference for this type of conditioned specimen.
	public var preference: FHIRPrimitive<SpecimenContainedPreference>
	
	/// The specimen's container
	public var container: SpecimenDefinitionTypeTestedContainer?
	
	/// Specimen requirements
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// Specimen retention time
	public var retentionTime: Duration?
	
	/// Rejection criterion
	public var rejectionCriterion: [CodeableConcept]?
	
	/// Specimen handling before testing
	public var handling: [SpecimenDefinitionTypeTestedHandling]?
	
	/// Designated initializer taking all required properties
	public init(preference: FHIRPrimitive<SpecimenContainedPreference>) {
		self.preference = preference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(preference: preference)
		self.container = container
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.isDerived = isDerived
		self.modifierExtension = modifierExtension
		self.rejectionCriterion = rejectionCriterion
		self.requirement = requirement
		self.retentionTime = retentionTime
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case container
		case handling
		case isDerived; case _isDerived
		case preference; case _preference
		case rejectionCriterion
		case requirement; case _requirement
		case retentionTime
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.container = try SpecimenDefinitionTypeTestedContainer(from: _container, forKeyIfPresent: .container)
		self.handling = try [SpecimenDefinitionTypeTestedHandling](from: _container, forKeyIfPresent: .handling)
		self.isDerived = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDerived, auxiliaryKey: ._isDerived)
		self.preference = try FHIRPrimitive<SpecimenContainedPreference>(from: _container, forKey: .preference, auxiliaryKey: ._preference)
		self.rejectionCriterion = try [CodeableConcept](from: _container, forKeyIfPresent: .rejectionCriterion)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.retentionTime = try Duration(from: _container, forKeyIfPresent: .retentionTime)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try container?.encode(on: &_container, forKey: .container)
		try handling?.encode(on: &_container, forKey: .handling)
		try isDerived?.encode(on: &_container, forKey: .isDerived, auxiliaryKey: ._isDerived)
		try preference.encode(on: &_container, forKey: .preference, auxiliaryKey: ._preference)
		try rejectionCriterion?.encode(on: &_container, forKey: .rejectionCriterion)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try retentionTime?.encode(on: &_container, forKey: .retentionTime)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTested else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return container == _other.container
		    && handling == _other.handling
		    && isDerived == _other.isDerived
		    && preference == _other.preference
		    && rejectionCriterion == _other.rejectionCriterion
		    && requirement == _other.requirement
		    && retentionTime == _other.retentionTime
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(container)
		hasher.combine(handling)
		hasher.combine(isDerived)
		hasher.combine(preference)
		hasher.combine(rejectionCriterion)
		hasher.combine(requirement)
		hasher.combine(retentionTime)
		hasher.combine(type)
	}
}

/**
 The specimen's container.
 */
open class SpecimenDefinitionTypeTestedContainer: BackboneElement {
	
	/// All possible types for "minimumVolume[x]"
	public enum MinimumVolumeX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Container material
	public var material: CodeableConcept?
	
	/// Kind of container associated with the kind of specimen
	public var type: CodeableConcept?
	
	/// Color of container cap
	public var cap: CodeableConcept?
	
	/// Container description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Container capacity
	public var capacity: Quantity?
	
	/// Minimum volume
	/// One of `minimumVolume[x]`
	public var minimumVolume: MinimumVolumeX?
	
	/// Additive associated with container
	public var additive: [SpecimenDefinitionTypeTestedContainerAdditive]?
	
	/// Specimen container preparation
	public var preparation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case material
		case minimumVolumeQuantity
		case minimumVolumeString; case _minimumVolumeString
		case preparation; case _preparation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try [SpecimenDefinitionTypeTestedContainerAdditive](from: _container, forKeyIfPresent: .additive)
		self.cap = try CodeableConcept(from: _container, forKeyIfPresent: .cap)
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		var _t_minimumVolume: MinimumVolumeX? = nil
		if let minimumVolumeQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumVolumeQuantity) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeQuantity, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .quantity(minimumVolumeQuantity)
		}
		if let minimumVolumeString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeString, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .string(minimumVolumeString)
		}
		self.minimumVolume = _t_minimumVolume
		self.preparation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparation, auxiliaryKey: ._preparation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try cap?.encode(on: &_container, forKey: .cap)
		try capacity?.encode(on: &_container, forKey: .capacity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try material?.encode(on: &_container, forKey: .material)
		if let _enum = minimumVolume {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .minimumVolumeQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString)
			}
		}
		try preparation?.encode(on: &_container, forKey: .preparation, auxiliaryKey: ._preparation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedContainer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && cap == _other.cap
		    && capacity == _other.capacity
		    && description_fhir == _other.description_fhir
		    && material == _other.material
		    && minimumVolume == _other.minimumVolume
		    && preparation == _other.preparation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(cap)
		hasher.combine(capacity)
		hasher.combine(description_fhir)
		hasher.combine(material)
		hasher.combine(minimumVolume)
		hasher.combine(preparation)
		hasher.combine(type)
	}
}

/**
 Additive associated with container.
 
 Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
 Citrate, EDTA.
 */
open class SpecimenDefinitionTypeTestedContainerAdditive: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX
	
	/// Designated initializer taking all required properties
	public init(additive: AdditiveX) {
		self.additive = additive
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additive: AdditiveX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(additive: additive)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.additiveCodeableConcept) || _container.contains(CodingKeys.additiveReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.additiveCodeableConcept, CodingKeys.additiveReference], debugDescription: "Must have at least one value for \"additive\" but have none"))
		}
		
		// Decode all our properties
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveCodeableConcept, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		self.additive = _t_additive!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch additive {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .additiveCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .additiveReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedContainerAdditive else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
	}
}

/**
 Specimen handling before testing.
 
 Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing
 process.
 */
open class SpecimenDefinitionTypeTestedHandling: BackboneElement {
	
	/// Temperature qualifier
	public var temperatureQualifier: CodeableConcept?
	
	/// Temperature range
	public var temperatureRange: Range?
	
	/// Maximum preservation time
	public var maxDuration: Duration?
	
	/// Preservation instruction
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instruction: FHIRPrimitive<FHIRString>? = nil,
							maxDuration: Duration? = nil,
							modifierExtension: [Extension]? = nil,
							temperatureQualifier: CodeableConcept? = nil,
							temperatureRange: Range? = nil)
	{
		self.init()
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
		case instruction; case _instruction
		case maxDuration
		case temperatureQualifier
		case temperatureRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.maxDuration = try Duration(from: _container, forKeyIfPresent: .maxDuration)
		self.temperatureQualifier = try CodeableConcept(from: _container, forKeyIfPresent: .temperatureQualifier)
		self.temperatureRange = try Range(from: _container, forKeyIfPresent: .temperatureRange)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try maxDuration?.encode(on: &_container, forKey: .maxDuration)
		try temperatureQualifier?.encode(on: &_container, forKey: .temperatureQualifier)
		try temperatureRange?.encode(on: &_container, forKey: .temperatureRange)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedHandling else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return instruction == _other.instruction
		    && maxDuration == _other.maxDuration
		    && temperatureQualifier == _other.temperatureQualifier
		    && temperatureRange == _other.temperatureRange
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(instruction)
		hasher.combine(maxDuration)
		hasher.combine(temperatureQualifier)
		hasher.combine(temperatureRange)
	}
}
