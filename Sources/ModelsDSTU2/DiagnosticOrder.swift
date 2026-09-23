//
//  DiagnosticOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DiagnosticOrder)
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
 A request for a diagnostic service.
 
 A record of a request for a diagnostic investigation service to be performed.
 */
public struct DiagnosticOrder: DomainResource {
	
	public static let resourceType: ResourceType = .diagnosticOrder
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The encounter that this diagnostic order is associated with
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle
	public var event: [DiagnosticOrderEvent]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The items the orderer requested
	public var item: [DiagnosticOrderItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Other notes and comments
	public var note: [Annotation]?
	
	/// Who ordered the test
	public var orderer: Reference?
	
	/// The clinical priority associated with this order.
	/// Restricted to: ['routine', 'urgent', 'stat', 'asap']
	public var priority: FHIRPrimitive<DiagnosticOrderPriority>?
	
	/// Explanation/Justification for test
	public var reason: [CodeableConcept]?
	
	/// If the whole order relates to specific specimens
	public var specimen: [Reference]?
	
	/// The status of the order.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>?
	
	/// Who and/or what test is about
	public var subject: Reference
	
	/// Additional clinical information
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case encounter
		case event
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case item
		case language; case _language
		case meta
		case modifierExtension
		case note
		case orderer
		case priority; case _priority
		case reason
		case specimen
		case status; case _status
		case subject
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.event = try [DiagnosticOrderEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.item = try [DiagnosticOrderItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.priority = try FHIRPrimitive<DiagnosticOrderPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try orderer?.encode(on: &_container, forKey: .orderer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A list of events of interest in the lifecycle.
 
 A summary of the events of interest that have occurred as the request is processed; e.g. when the order was made,
 various processing steps (specimens received), when it was completed.
 */
public struct DiagnosticOrderEvent: BackboneElement {
	
	/// Who recorded or did this
	public var actor: Reference?
	
	/// The date at which the event happened
	public var dateTime: FHIRPrimitive<DateTime>
	
	/// More information about the event and its context
	public var description_fhir: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The status for the event.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
		dateTime: FHIRPrimitive<DateTime>,
		description_fhir: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: FHIRPrimitive<DiagnosticOrderStatus>
	) {
		self.actor = actor
		self.dateTime = dateTime
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case dateTime; case _dateTime
		case description_fhir = "description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.description_fhir = try CodeableConcept(from: _container, forKeyIfPresent: .description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 The items the orderer requested.
 
 The specific diagnostic investigations that are requested as part of this request. Sometimes, there can only be one
 item per request, but in most contexts, more than one investigation can be requested.
 */
public struct DiagnosticOrderItem: BackboneElement {
	
	/// Location of requested test (if applicable)
	public var bodySite: CodeableConcept?
	
	/// Code to indicate the item (test or panel) being ordered
	public var code: CodeableConcept
	
	/// Events specific to this item
	public var event: [DiagnosticOrderEvent]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// If this item relates to specific specimens
	public var specimen: [Reference]?
	
	/// The status of this individual item within the order.
	/// Restricted to: ['proposed', 'draft', 'planned', 'requested', 'received', 'accepted', 'in-progress', 'review',
	/// 'completed', 'cancelled', 'suspended', 'rejected', 'failed']
	public var status: FHIRPrimitive<DiagnosticOrderStatus>?
	
	/// Designated initializer
	public init(
		bodySite: CodeableConcept? = nil,
		code: CodeableConcept,
		event: [DiagnosticOrderEvent]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<DiagnosticOrderStatus>? = nil
	) {
		self.bodySite = bodySite
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case specimen
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.event = try [DiagnosticOrderEvent](from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<DiagnosticOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code.encode(on: &_container, forKey: .code)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}
