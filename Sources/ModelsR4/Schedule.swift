//
//  Schedule.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Schedule)
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
 A container for slots of time that may be available for booking appointments.
 */
public struct Schedule: DomainResource {
	
	public static let resourceType: ResourceType = .schedule
	
	/// Whether this schedule is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Resource(s) that availability information is being provided for
	public var actor: [Reference]
	
	/// Comments on availability
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Period of time covered by schedule
	public var planningHorizon: Period?
	
	/// High-level category
	public var serviceCategory: [CodeableConcept]?
	
	/// Specific service
	public var serviceType: [CodeableConcept]?
	
	/// Type of specialty needed
	public var specialty: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		actor: [Reference],
		comment: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		planningHorizon: Period? = nil,
		serviceCategory: [CodeableConcept]? = nil,
		serviceType: [CodeableConcept]? = nil,
		specialty: [CodeableConcept]? = nil,
		text: Narrative? = nil
	) {
		self.active = active
		self.actor = actor
		self.comment = comment
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.planningHorizon = planningHorizon
		self.serviceCategory = serviceCategory
		self.serviceType = serviceType
		self.specialty = specialty
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case actor
		case comment; case _comment
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case planningHorizon
		case serviceCategory
		case serviceType
		case specialty
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.actor = try [Reference](from: _container, forKey: .actor)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.planningHorizon = try Period(from: _container, forKeyIfPresent: .planningHorizon)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceType)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try actor.encode(on: &_container, forKey: .actor)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try planningHorizon?.encode(on: &_container, forKey: .planningHorizon)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try text?.encode(on: &_container, forKey: .text)
	}
}
