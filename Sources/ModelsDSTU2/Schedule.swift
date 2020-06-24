//
//  Schedule.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Schedule)
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
 A container for slot(s) of time that may be available for booking appointments.
 */
open class Schedule: DomainResource {
	
	override open class var resourceType: ResourceType { return .schedule }
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// The schedule type can be used for the categorization of healthcare services or other appointment types
	public var type: [CodeableConcept]?
	
	/// The resource this Schedule resource is providing availability information for. These are expected to usually be
	/// one of HealthcareService, Location, Practitioner, Device, Patient or RelatedPerson
	public var actor: Reference
	
	/// The period of time that the slots that are attached to this Schedule resource cover (even if none exist). These
	/// cover the amount of time that an organization's planning horizon; the interval for which they are currently
	/// accepting appointments. This does not define a "template" for planning outside these dates
	public var planningHorizon: Period?
	
	/// Comments on the availability to describe any extended information. Such as custom constraints on the slot(s)
	/// that may be associated
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
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
							text: Narrative? = nil,
							type: [CodeableConcept]? = nil)
	{
		self.init(actor: actor)
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
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case comment; case _comment
		case identifier
		case planningHorizon
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.planningHorizon = try Period(from: _container, forKeyIfPresent: .planningHorizon)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try planningHorizon?.encode(on: &_container, forKey: .planningHorizon)
		try type?.encode(on: &_container, forKey: .type)
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
		return actor == _other.actor
		    && comment == _other.comment
		    && identifier == _other.identifier
		    && planningHorizon == _other.planningHorizon
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(comment)
		hasher.combine(identifier)
		hasher.combine(planningHorizon)
		hasher.combine(type)
	}
}
