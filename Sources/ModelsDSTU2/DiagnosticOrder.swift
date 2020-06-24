//
//  DiagnosticOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DiagnosticOrder)
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
 A request for a diagnostic service.
 
 A record of a request for a diagnostic investigation service to be performed.
 */
open class DiagnosticOrder: DomainResource {
	
	override open class var resourceType: ResourceType { return .diagnosticOrder }
	
	/// Who and/or what test is about
	public var subject: Reference
	
	/// Who ordered the test
	public var orderer: Reference?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// The encounter that this diagnostic order is associated with
	public var encounter: Reference?
	
	/// Explanation/Justification for test
	public var reason: [CodeableConcept]?
	
	/// Additional clinical information
	public var supportingInformation: [Reference]?
	
	/// If the whole order relates to specific specimens
	public var specimen: [Reference]?
	
	/// The status of the order.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>?
	
	/// The clinical priority associated with this order.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<DiagnosticOrderPriority>?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// The items the orderer requested
	public var item: [DiagnosticOrderItem]?
	
	/// Other notes and comments
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(subject: Reference) {
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							event: [DiagnosticOrderEvent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							item: [DiagnosticOrderItem]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							orderer: Reference? = nil,
							priority: FHIRPrimitive<DiagnosticOrderPriority>? = nil,
							reason: [CodeableConcept]? = nil,
							specimen: [Reference]? = nil,
							status: FHIRPrimitive<DiagnosticOrderStatus>? = nil,
							subject: Reference,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(subject: subject)
		self.contained = contained
		self.encounter = encounter
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.orderer = orderer
		self.priority = priority
		self.reason = reason
		self.specimen = specimen
		self.status = status
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case encounter
		case event
		case identifier
		case item
		case note
		case orderer
		case priority; case _priority
		case reason
		case specimen
		case status; case _status
		case subject
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try [DiagnosticOrderEvent](from: _container, forKeyIfPresent: .event)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.item = try [DiagnosticOrderItem](from: _container, forKeyIfPresent: .item)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.priority = try FHIRPrimitive<DiagnosticOrderPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try item?.encode(on: &_container, forKey: .item)
		try note?.encode(on: &_container, forKey: .note)
		try orderer?.encode(on: &_container, forKey: .orderer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DiagnosticOrder else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return encounter == _other.encounter
		    && event == _other.event
		    && identifier == _other.identifier
		    && item == _other.item
		    && note == _other.note
		    && orderer == _other.orderer
		    && priority == _other.priority
		    && reason == _other.reason
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(encounter)
		hasher.combine(event)
		hasher.combine(identifier)
		hasher.combine(item)
		hasher.combine(note)
		hasher.combine(orderer)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInformation)
	}
}

/**
 A list of events of interest in the lifecycle.
 
 A summary of the events of interest that have occurred as the request is processed; e.g. when the order was made,
 various processing steps (specimens received), when it was completed.
 */
open class DiagnosticOrderEvent: BackboneElement {
	
	/// The status for the event.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>
	
	/// More information about the event and its context
	public var description_fhir: CodeableConcept?
	
	/// The date at which the event happened
	public var dateTime: FHIRPrimitive<DateTime>
	
	/// Who recorded or did this
	public var actor: Reference?
	
	/// Designated initializer taking all required properties
	public init(dateTime: FHIRPrimitive<DateTime>, status: FHIRPrimitive<DiagnosticOrderStatus>) {
		self.dateTime = dateTime
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference? = nil,
							dateTime: FHIRPrimitive<DateTime>,
							description_fhir: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							status: FHIRPrimitive<DiagnosticOrderStatus>)
	{
		self.init(dateTime: dateTime, status: status)
		self.actor = actor
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case dateTime; case _dateTime
		case description_fhir = "description"
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.description_fhir = try CodeableConcept(from: _container, forKeyIfPresent: .description_fhir)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DiagnosticOrderEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && dateTime == _other.dateTime
		    && description_fhir == _other.description_fhir
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(dateTime)
		hasher.combine(description_fhir)
		hasher.combine(status)
	}
}

/**
 The items the orderer requested.
 
 The specific diagnostic investigations that are requested as part of this request. Sometimes, there can only be one
 item per request, but in most contexts, more than one investigation can be requested.
 */
open class DiagnosticOrderItem: BackboneElement {
	
	/// Code to indicate the item (test or panel) being ordered
	public var code: CodeableConcept
	
	/// If this item relates to specific specimens
	public var specimen: [Reference]?
	
	/// Location of requested test (if applicable)
	public var bodySite: CodeableConcept?
	
	/// The status of this individual item within the order.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>?
	
	/// Events specific to this item
	public var event: [DiagnosticOrderEvent]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: CodeableConcept? = nil,
							code: CodeableConcept,
							event: [DiagnosticOrderEvent]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							specimen: [Reference]? = nil,
							status: FHIRPrimitive<DiagnosticOrderStatus>? = nil)
	{
		self.init(code: code)
		self.bodySite = bodySite
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.specimen = specimen
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case code
		case event
		case specimen
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.event = try [DiagnosticOrderEvent](from: _container, forKeyIfPresent: .event)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code.encode(on: &_container, forKey: .code)
		try event?.encode(on: &_container, forKey: .event)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DiagnosticOrderItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && code == _other.code
		    && event == _other.event
		    && specimen == _other.specimen
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(code)
		hasher.combine(event)
		hasher.combine(specimen)
		hasher.combine(status)
	}
}
