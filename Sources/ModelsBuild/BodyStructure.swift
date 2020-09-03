//
//  BodyStructure.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/BodyStructure)
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
	
	/// Body site
	public var location: CodeableConcept?
	
	/// Body site modifier
	public var locationQualifier: [CodeableConcept]?
	
	/// Text description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Attached images
	public var image: [Attachment]?
	
	/// Who this is about
	public var patient: Reference
	
	/// Designated initializer taking all required properties
	public init(patient: Reference) {
		self.patient = patient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							active: FHIRPrimitive<FHIRBool>? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							image: [Attachment]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: CodeableConcept? = nil,
							locationQualifier: [CodeableConcept]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							morphology: CodeableConcept? = nil,
							patient: Reference,
							text: Narrative? = nil)
	{
		self.init(patient: patient)
		self.active = active
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.image = image
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.locationQualifier = locationQualifier
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.morphology = morphology
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case active; case _active
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case image
		case location
		case locationQualifier
		case morphology
		case patient
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.image = try [Attachment](from: _container, forKeyIfPresent: .image)
		self.location = try CodeableConcept(from: _container, forKeyIfPresent: .location)
		self.locationQualifier = try [CodeableConcept](from: _container, forKeyIfPresent: .locationQualifier)
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
		try identifier?.encode(on: &_container, forKey: .identifier)
		try image?.encode(on: &_container, forKey: .image)
		try location?.encode(on: &_container, forKey: .location)
		try locationQualifier?.encode(on: &_container, forKey: .locationQualifier)
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
		    && identifier == _other.identifier
		    && image == _other.image
		    && location == _other.location
		    && locationQualifier == _other.locationQualifier
		    && morphology == _other.morphology
		    && patient == _other.patient
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(image)
		hasher.combine(location)
		hasher.combine(locationQualifier)
		hasher.combine(morphology)
		hasher.combine(patient)
	}
}
