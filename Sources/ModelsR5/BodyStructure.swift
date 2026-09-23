//
//  BodyStructure.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BodyStructure)
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
 Specific and identified anatomical structure.
 
 Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the
 necessary detail needed for the use case.
 */
public struct BodyStructure: DomainResource {
	
	public static let resourceType: ResourceType = .bodyStructure
	
	/// Whether this record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Text description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Excluded anatomic locations(s)
	public var excludedStructure: [BodyStructureIncludedStructure]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Bodystructure identifier
	public var identifier: [Identifier]?
	
	/// Attached images
	public var image: [Attachment]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Included anatomic location(s)
	public var includedStructure: [BodyStructureIncludedStructure]
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Kind of Structure
	public var morphology: CodeableConcept?
	
	/// Who this is about
	public var patient: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		self.active = active
		self.contained = contained
		self.description_fhir = description_fhir
		self.excludedStructure = excludedStructure
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.image = image
		self.implicitRules = implicitRules
		self.includedStructure = includedStructure
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.morphology = morphology
		self.patient = patient
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case excludedStructure
		case `extension` = "extension"
		case id; case _id
		case identifier
		case image
		case implicitRules; case _implicitRules
		case includedStructure
		case language; case _language
		case meta
		case modifierExtension
		case morphology
		case patient
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.excludedStructure = try [BodyStructureIncludedStructure](from: _container, forKeyIfPresent: .excludedStructure)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.includedStructure = try [BodyStructureIncludedStructure](from: _container, forKey: .includedStructure)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.morphology = try CodeableConcept(from: _container, forKeyIfPresent: .morphology)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try excludedStructure?.encode(on: &_container, forKey: .excludedStructure)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try image?.encode(on: &_container, forKey: .image)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try includedStructure.encode(on: &_container, forKey: .includedStructure)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try morphology?.encode(on: &_container, forKey: .morphology)
		try patient.encode(on: &_container, forKey: .patient)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Included anatomic location(s).
 
 The anatomical location(s) or region(s) of the specimen, lesion, or body structure.
 */
public struct BodyStructureIncludedStructure: BackboneElement {
	
	/// Landmark relative location
	public var bodyLandmarkOrientation: [BodyStructureIncludedStructureBodyLandmarkOrientation]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Code that represents the included structure laterality
	public var laterality: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Code that represents the included structure qualifier
	public var qualifier: [CodeableConcept]?
	
	/// Cartesian reference for structure
	public var spatialReference: [Reference]?
	
	/// Code that represents the included structure
	public var structure: CodeableConcept
	
	/// Designated initializer
	public init(
		bodyLandmarkOrientation: [BodyStructureIncludedStructureBodyLandmarkOrientation]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		laterality: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		qualifier: [CodeableConcept]? = nil,
		spatialReference: [Reference]? = nil,
		structure: CodeableConcept
	) {
		self.bodyLandmarkOrientation = bodyLandmarkOrientation
		self.`extension` = `extension`
		self.id = id
		self.laterality = laterality
		self.modifierExtension = modifierExtension
		self.qualifier = qualifier
		self.spatialReference = spatialReference
		self.structure = structure
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodyLandmarkOrientation
		case `extension` = "extension"
		case id; case _id
		case laterality
		case modifierExtension
		case qualifier
		case spatialReference
		case structure
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodyLandmarkOrientation = try [BodyStructureIncludedStructureBodyLandmarkOrientation](from: _container, forKeyIfPresent: .bodyLandmarkOrientation)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.laterality = try CodeableConcept(from: _container, forKeyIfPresent: .laterality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.qualifier = try [CodeableConcept](from: _container, forKeyIfPresent: .qualifier)
		self.spatialReference = try [Reference](from: _container, forKeyIfPresent: .spatialReference)
		self.structure = try CodeableConcept(from: _container, forKey: .structure)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodyLandmarkOrientation?.encode(on: &_container, forKey: .bodyLandmarkOrientation)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try laterality?.encode(on: &_container, forKey: .laterality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try qualifier?.encode(on: &_container, forKey: .qualifier)
		try spatialReference?.encode(on: &_container, forKey: .spatialReference)
		try structure.encode(on: &_container, forKey: .structure)
	}
}

/**
 Landmark relative location.
 
 Body locations in relation to a specific body landmark (tatoo, scar, other body structure).
 */
public struct BodyStructureIncludedStructureBodyLandmarkOrientation: BackboneElement {
	
	/// Clockface orientation
	public var clockFacePosition: [CodeableConcept]?
	
	/// Landmark relative location
	public var distanceFromLandmark: [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Body ]andmark description
	public var landmarkDescription: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Relative landmark surface orientation
	public var surfaceOrientation: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		clockFacePosition: [CodeableConcept]? = nil,
		distanceFromLandmark: [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		landmarkDescription: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		surfaceOrientation: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case landmarkDescription
		case modifierExtension
		case surfaceOrientation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.clockFacePosition = try [CodeableConcept](from: _container, forKeyIfPresent: .clockFacePosition)
		self.distanceFromLandmark = try [BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark](from: _container, forKeyIfPresent: .distanceFromLandmark)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.landmarkDescription = try [CodeableConcept](from: _container, forKeyIfPresent: .landmarkDescription)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.surfaceOrientation = try [CodeableConcept](from: _container, forKeyIfPresent: .surfaceOrientation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try clockFacePosition?.encode(on: &_container, forKey: .clockFacePosition)
		try distanceFromLandmark?.encode(on: &_container, forKey: .distanceFromLandmark)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try landmarkDescription?.encode(on: &_container, forKey: .landmarkDescription)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try surfaceOrientation?.encode(on: &_container, forKey: .surfaceOrientation)
	}
}

/**
 Landmark relative location.
 
 The distance in centimeters a certain observation is made from a body landmark.
 */
public struct BodyStructureIncludedStructureBodyLandmarkOrientationDistanceFromLandmark: BackboneElement {
	
	/// Measurement device
	public var device: [CodeableReference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Measured distance from body landmark
	public var value: [Quantity]?
	
	/// Designated initializer
	public init(
		device: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: [Quantity]? = nil
	) {
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try [Quantity](from: _container, forKeyIfPresent: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value?.encode(on: &_container, forKey: .value)
	}
}
