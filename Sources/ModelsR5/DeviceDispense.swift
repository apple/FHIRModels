//
//  DeviceDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceDispense)
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
 A record of dispensation of a device.
 
 A record of dispensation of a device - i.e., assigning a device to a patient, or to a professional for their use.
 */
public struct DeviceDispense: DomainResource {
	
	public static let resourceType: ResourceType = .deviceDispense
	
	/// The order or request that this dispense is fulfilling
	public var basedOn: [Reference]?
	
	/// Type of device dispense
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where the device was sent or should be sent
	public var destination: Reference?
	
	/// What device was supplied
	public var device: CodeableReference
	
	/// Encounter associated with event
	public var encounter: Reference?
	
	/// A list of relevant lifecycle events
	public var eventHistory: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this dispensation
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the dispense
	public var note: [Annotation]?
	
	/// The bigger event that this dispense is a part of
	public var partOf: [Reference]?
	
	/// Who performed event
	public var performer: [DeviceDispensePerformer]?
	
	/// When product was packaged and reviewed
	public var preparedDate: FHIRPrimitive<DateTime>?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the device or where the medication was delivered
	public var receiver: Reference?
	
	/// A code specifying the state of the set of dispense events.
	public var status: FHIRPrimitive<DeviceDispenseStatusCodes>
	
	/// Why a dispense was or was not performed
	public var statusReason: CodeableReference?
	
	/// Who the dispense is for
	public var subject: Reference
	
	/// Information that supports the dispensing of the device
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Trial fill, partial fill, emergency fill, etc
	public var type: CodeableConcept?
	
	/// Full representation of the usage instructions
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
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
		receiver: Reference? = nil,
		status: FHIRPrimitive<DeviceDispenseStatusCodes>,
		statusReason: CodeableReference? = nil,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		usageInstruction: FHIRPrimitive<FHIRString>? = nil,
		whenHandedOver: FHIRPrimitive<DateTime>? = nil
	) {
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.destination = destination
		self.device = device
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
		self.receiver = receiver
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
		self.usageInstruction = usageInstruction
		self.whenHandedOver = whenHandedOver
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case category
		case contained
		case destination
		case device
		case encounter
		case eventHistory
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case note
		case partOf
		case performer
		case preparedDate; case _preparedDate
		case quantity
		case receiver
		case status; case _status
		case statusReason
		case subject
		case supportingInformation
		case text
		case type
		case usageInstruction; case _usageInstruction
		case whenHandedOver; case _whenHandedOver
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.device = try CodeableReference(from: _container, forKey: .device)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [DeviceDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.preparedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .preparedDate, auxiliaryKey: ._preparedDate)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try Reference(from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<DeviceDispenseStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableReference(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try destination?.encode(on: &_container, forKey: .destination)
		try device.encode(on: &_container, forKey: .device)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try preparedDate?.encode(on: &_container, forKey: .preparedDate, auxiliaryKey: ._preparedDate)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
	}
}

/**
 Who performed event.
 
 Indicates who or what performed the event.
 */
public struct DeviceDispensePerformer: BackboneElement {
	
	/// Individual who was performing
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Who performed the dispense and what they did
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
