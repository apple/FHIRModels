//
//  DeviceDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/DeviceDispense)
//  Copyright 2022 Apple Inc.
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
 Device Dispense.
 
 A record of dispensation of a device.
 */
open class DeviceDispense: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceDispense }
	
	/// Business identifier for this dispensation
	public var identifier: [Identifier]?
	
	/// The order or request that this dispense is fulfilling
	public var basedOn: [Reference]?
	
	/// The bigger event that this dispense is a part of
	public var partOf: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	public var status: FHIRPrimitive<DeviceDispenseStatusCodes>
	
	/// Why a dispense was or was not performed
	public var statusReason: CodeableReference?
	
	/// Type of device dispense
	public var category: [CodeableConcept]?
	
	/// What device was supplied
	public var device: CodeableReference
	
	/// Who the dispense is for
	public var subject: Reference
	
	/// Encounter associated with event
	public var encounter: Reference?
	
	/// Information that supports the dispensing of the device
	public var supportingInformation: [Reference]?
	
	/// Who performed event
	public var performer: [DeviceDispensePerformer]?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// When product was packaged and reviewed
	public var preparedDate: FHIRPrimitive<DateTime>?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Where the device was sent or should be sent
	public var destination: Reference?
	
	/// Information about the dispense
	public var note: [Annotation]?
	
	/// Full representation of the usage instructions
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// A list of relevant lifecycle events
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(device: CodeableReference, status: FHIRPrimitive<DeviceDispenseStatusCodes>, subject: Reference) {
		self.device = device
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		destination: Reference? = nil,
		device: CodeableReference,
		encounter: Reference? = nil,
		eventHistory: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		performer: [DeviceDispensePerformer]? = nil,
		preparedDate: FHIRPrimitive<DateTime>? = nil,
		quantity: Quantity? = nil,
		status: FHIRPrimitive<DeviceDispenseStatusCodes>,
		statusReason: CodeableReference? = nil,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		usageInstruction: FHIRPrimitive<FHIRString>? = nil,
		whenHandedOver: FHIRPrimitive<DateTime>? = nil
	) {
		self.init(device: device, status: status, subject: subject)
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.destination = destination
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.preparedDate = preparedDate
		self.quantity = quantity
		self.statusReason = statusReason
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
		self.usageInstruction = usageInstruction
		self.whenHandedOver = whenHandedOver
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case destination
		case device
		case encounter
		case eventHistory
		case identifier
		case location
		case note
		case partOf
		case performer
		case preparedDate; case _preparedDate
		case quantity
		case status; case _status
		case statusReason
		case subject
		case supportingInformation
		case type
		case usageInstruction; case _usageInstruction
		case whenHandedOver; case _whenHandedOver
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.device = try CodeableReference(from: _container, forKey: .device)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [DeviceDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.preparedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .preparedDate, auxiliaryKey: ._preparedDate)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.status = try FHIRPrimitive<DeviceDispenseStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableReference(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try destination?.encode(on: &_container, forKey: .destination)
		try device.encode(on: &_container, forKey: .device)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try preparedDate?.encode(on: &_container, forKey: .preparedDate, auxiliaryKey: ._preparedDate)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try type?.encode(on: &_container, forKey: .type)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDispense else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && category == _other.category
		    && destination == _other.destination
		    && device == _other.device
		    && encounter == _other.encounter
		    && eventHistory == _other.eventHistory
		    && identifier == _other.identifier
		    && location == _other.location
		    && note == _other.note
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && preparedDate == _other.preparedDate
		    && quantity == _other.quantity
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
		    && type == _other.type
		    && usageInstruction == _other.usageInstruction
		    && whenHandedOver == _other.whenHandedOver
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(destination)
		hasher.combine(device)
		hasher.combine(encounter)
		hasher.combine(eventHistory)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(preparedDate)
		hasher.combine(quantity)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(supportingInformation)
		hasher.combine(type)
		hasher.combine(usageInstruction)
		hasher.combine(whenHandedOver)
	}
}

/**
 Who performed event.
 
 Indicates who or what performed the event.
 */
open class DeviceDispensePerformer: BackboneElement {
	
	/// Who performed the dispense and what they did
	public var function: CodeableConcept?
	
	/// Individual who was performing
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceDispensePerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}
