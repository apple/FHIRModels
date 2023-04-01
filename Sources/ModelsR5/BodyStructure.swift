//
//  BodyStructure.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BodyStructure)
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
 Specific and identified anatomical structure.
 
 Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the
 necessary detail needed for the use case.
 */
open class BodyStructure: DomainResource {
	
	override open class var resourceType: ResourceType { return .bodyStructure }
	
	/// Bodystructure identifier
	public var identifier: [Identifier]?
	
	/// Whether this record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Kind of Structure
	public var morphology: CodeableConcept?
	
	/// Included anatomic location(s)
	public var includedStructure: [BodyStructureIncludedStructure]
	
	/// Excluded anatomic locations(s)
	public var excludedStructure: [BodyStructureIncludedStructure]?
	
	/// Text description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Attached images
	public var image: [Attachment]?
	
	/// Who this is about
	public var patient: Reference
	
	/// Designated initializer taking all required properties
	public init(includedStructure: [BodyStructureIncludedStructure], patient: Reference) {
		self.includedStructure = includedStructure
		self.patient = patient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		excludedStructure: [BodyStructureIncludedStructure]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		image: [Attachment]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		includedStructure: [BodyStructureIncludedStructure],
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		morphology: CodeableConcept? = nil,
		patient: Reference,
		text: Narrative? = nil
	) {
		self.init(includedStructure: includedStructure, patient: patient)
		self.active = active
		self.contained = contained
		self.description_fhir = description_fhir
		self.excludedStructure = excludedStructure
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.image = image
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.morphology = morphology
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case description_fhir = "description"; case _description_fhir = "_description"
		case excludedStructure
		case identifier
		case image
		case includedStructure
		case morphology
		case patient
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excludedStructure = try [BodyStructureIncludedStructure](from: _container, forKeyIfPresent: .excludedStructure)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.includedStructure = try [BodyStructureIncludedStructure](from: _container, forKey: .includedStructure)
		self.morphology = try CodeableConcept(from: _container, forKeyIfPresent: .morphology)
		self.patient = try Reference(from: _container, forKey: .patient)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excludedStructure?.encode(on: &_container, forKey: .excludedStructure)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try image?.encode(on: &_container, forKey: .image)
		try includedStructure.encode(on: &_container, forKey: .includedStructure)
		try morphology?.encode(on: &_container, forKey: .morphology)
		try patient.encode(on: &_container, forKey: .patient)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BodyStructure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && description_fhir == _other.description_fhir
		    && excludedStructure == _other.excludedStructure
		    && identifier == _other.identifier
		    && image == _other.image
		    && includedStructure == _other.includedStructure
		    && morphology == _other.morphology
		    && patient == _other.patient
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(description_fhir)
		hasher.combine(excludedStructure)
		hasher.combine(identifier)
		hasher.combine(image)
		hasher.combine(includedStructure)
		hasher.combine(morphology)
		hasher.combine(patient)
	}
}

/**
 Included anatomic location(s).
 
 The anatomical location(s) or region(s) of the specimen, lesion, or body structure.
 */
open class BodyStructureIncludedStructure: BackboneElement {
	
	/// Code that represents the included structure
	public var structure: CodeableConcept
	
	/// Code that represents the included structure laterality
	public var laterality: CodeableConcept?
	
	/// Landmark relative location
	public var bodyLandmarkOrientation: [BodyStructureIncludedStructureBodyLandmarkOrientation]?
	
	/// Cartesian reference for structure
	public var spatialReference: [Reference]?
	
	/// Code that represents the included structure qualifier
	public var qualifier: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(structure: CodeableConcept) {
		self.structure = structure
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		bodyLandmarkOrientation: [BodyStructureIncludedStructureBodyLandmarkOrientation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		laterality: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		qualifier: [CodeableConcept]? = nil,
		spatialReference: [Reference]? = nil,
		structure: CodeableConcept
	) {
		self.init(structure: structure)
		self.bodyLandmarkOrientation = bodyLandmarkOrientation
		self.`extension` = `extension`
		self.id = id
		self.laterality = laterality
		self.modifierExtension = modifierExtension
		self.qualifier = qualifier
		self.spatialReference = spatialReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodyLandmarkOrientation
		case laterality
		case qualifier
		case spatialReference
		case structure
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodyLandmarkOrientation = try [BodyStructureIncludedStructureBodyLandmarkOrientation](from: _container, forKeyIfPresent: .bodyLandmarkOrientation)
		self.laterality = try CodeableConcept(from: _container, forKeyIfPresent: .laterality)
		self.qualifier = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifier)
		self.spatialReference = try [Reference](from: _container, forKeyIfPresent: .spatialReference)
		self.structure = try CodeableConcept(from: _container, forKey: .structure)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodyLandmarkOrientation?.encode(on: &_container, forKey: .bodyLandmarkOrientation)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try qualifier?.encode(on: &_container, forKey: .qualifier)
		try spatialReference?.encode(on: &_container, forKey: .spatialReference)
		try structure.encode(on: &_container, forKey: .structure)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BodyStructureIncludedStructure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodyLandmarkOrientation == _other.bodyLandmarkOrientation
		    && laterality == _other.laterality
		    && qualifier == _other.qualifier
		    && spatialReference == _other.spatialReference
		    && structure == _other.structure
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodyLandmarkOrientation)
		hasher.combine(laterality)
		hasher.combine(qualifier)
		hasher.combine(spatialReference)
		hasher.combine(structure)
	}
}

/**
 Landmark relative location.
 
 Body locations in relation to a specific body landmark (tatoo, scar, other body structure).
 */
open class BodyStructureIncludedStructureBodyLandmarkOrientation: BackboneElement {
	
	/// Body ]andmark description
	public var landmarkDescription: [CodeableConcept]?
	
	/// Clockface orientation
	public var clockFacePosition: [CodeableConcept]?
	
	/// Landmark relative location
	public var distanceFromLandmark: [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark]?
	
	/// Relative landmark surface orientation
	public var surfaceOrientation: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		clockFacePosition: [CodeableConcept]? = nil,
		distanceFromLandmark: [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		landmarkDescription: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		surfaceOrientation: [CodeableConcept]? = nil
	) {
		self.init()
		self.clockFacePosition = clockFacePosition
		self.distanceFromLandmark = distanceFromLandmark
		self.`extension` = `extension`
		self.id = id
		self.landmarkDescription = landmarkDescription
		self.modifierExtension = modifierExtension
		self.surfaceOrientation = surfaceOrientation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case clockFacePosition
		case distanceFromLandmark
		case landmarkDescription
		case surfaceOrientation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.clockFacePosition = try [CodeableConcept](from: _container, forKeyIfPresent: .clockFacePosition)
		self.distanceFromLandmark = try [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark](from: _container, forKeyIfPresent: .distanceFromLandmark)
		self.landmarkDescription = try [CodeableConcept](from: _container, forKeyIfPresent: .landmarkDescription)
		self.surfaceOrientation = try [CodeableConcept](from: _container, forKeyIfPresent: .surfaceOrientation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try clockFacePosition?.encode(on: &_container, forKey: .clockFacePosition)
		try distanceFromLandmark?.encode(on: &_container, forKey: .distanceFromLandmark)
		try landmarkDescription?.encode(on: &_container, forKey: .landmarkDescription)
		try surfaceOrientation?.encode(on: &_container, forKey: .surfaceOrientation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BodyStructureIncludedStructureBodyLandmarkOrientation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return clockFacePosition == _other.clockFacePosition
		    && distanceFromLandmark == _other.distanceFromLandmark
		    && landmarkDescription == _other.landmarkDescription
		    && surfaceOrientation == _other.surfaceOrientation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(clockFacePosition)
		hasher.combine(distanceFromLandmark)
		hasher.combine(landmarkDescription)
		hasher.combine(surfaceOrientation)
	}
}

/**
 Landmark relative location.
 
 The distance in centimeters a certain observation is made from a body landmark.
 */
open class BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark: BackboneElement {
	
	/// Measurement device
	public var device: [CodeableReference]?
	
	/// Measured distance from body landmark
	public var value: [Quantity]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		device: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: [Quantity]? = nil
	) {
		self.init()
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.value = try [Quantity](from: _container, forKeyIfPresent: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try device?.encode(on: &_container, forKey: .device)
		try value?.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return device == _other.device
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(device)
		hasher.combine(value)
	}
}
