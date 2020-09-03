//
//  Schedule.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Schedule)
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
 A container for slots of time that may be available for booking appointments.
 */
open class Schedule: DomainResource {
	
	override open class var resourceType: ResourceType { return .schedule }
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// Whether this schedule is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// High-level category
	public var serviceCategory: [CodeableConcept]?
	
	/// Specific service
	public var serviceType: [CodeableConcept]?
	
	/// Type of specialty needed
	public var specialty: [CodeableConcept]?
	
	/// Resource(s) that availability information is being provided for
	public var actor: [Reference]
	
	/// Period of time covered by schedule
	public var planningHorizon: Period?
	
	/// Comments on availability
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(actor: [Reference]) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(actor: actor)
		self.active = active
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
		case active; case _active
		case actor
		case comment; case _comment
		case identifier
		case planningHorizon
		case serviceCategory
		case serviceType
		case specialty
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.actor = try [Reference](from: _container, forKey: .actor)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.planningHorizon = try Period(from: _container, forKeyIfPresent: .planningHorizon)
		self.serviceCategory = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceCategory)
		self.serviceType = try [CodeableConcept](from: _container, forKeyIfPresent: .serviceType)
		self.specialty = try [CodeableConcept](from: _container, forKeyIfPresent: .specialty)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try actor.encode(on: &_container, forKey: .actor)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try planningHorizon?.encode(on: &_container, forKey: .planningHorizon)
		try serviceCategory?.encode(on: &_container, forKey: .serviceCategory)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try specialty?.encode(on: &_container, forKey: .specialty)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Schedule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return active == _other.active
		    && actor == _other.actor
		    && comment == _other.comment
		    && identifier == _other.identifier
		    && planningHorizon == _other.planningHorizon
		    && serviceCategory == _other.serviceCategory
		    && serviceType == _other.serviceType
		    && specialty == _other.specialty
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(active)
		hasher.combine(actor)
		hasher.combine(comment)
		hasher.combine(identifier)
		hasher.combine(planningHorizon)
		hasher.combine(serviceCategory)
		hasher.combine(serviceType)
		hasher.combine(specialty)
	}
}
