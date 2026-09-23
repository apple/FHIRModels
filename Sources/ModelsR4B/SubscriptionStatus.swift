//
//  SubscriptionStatus.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/SubscriptionStatus)
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
 Status information about a Subscription provided during event notification.
 
 The SubscriptionStatus resource describes the state of a Subscription during notifications.
 */
public struct SubscriptionStatus: DomainResource {
	
	public static let resourceType: ResourceType = .subscriptionStatus
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// List of errors on the subscription
	public var error: [CodeableConcept]?
	
	/// Events since the Subscription was created
	public var eventsSinceSubscriptionStart: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Detailed information about any events relevant to this notification
	public var notificationEvent: [SubscriptionStatusNotificationEvent]?
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatusCodes>?
	
	/// Reference to the Subscription responsible for this notification
	public var subscription: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Reference to the SubscriptionTopic this notification relates to
	public var topic: FHIRPrimitive<Canonical>?
	
	/// The type of event being conveyed with this notificaiton.
	public var type: FHIRPrimitive<SubscriptionNotificationType>
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		error: [CodeableConcept]? = nil,
		eventsSinceSubscriptionStart: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		notificationEvent: [SubscriptionStatusNotificationEvent]? = nil,
		status: FHIRPrimitive<SubscriptionStatusCodes>? = nil,
		subscription: Reference,
		text: Narrative? = nil,
		topic: FHIRPrimitive<Canonical>? = nil,
		type: FHIRPrimitive<SubscriptionNotificationType>
	) {
		self.contained = contained
		self.error = error
		self.eventsSinceSubscriptionStart = eventsSinceSubscriptionStart
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notificationEvent = notificationEvent
		self.status = status
		self.subscription = subscription
		self.text = text
		self.topic = topic
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case error
		case eventsSinceSubscriptionStart; case _eventsSinceSubscriptionStart
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case notificationEvent
		case status; case _status
		case subscription
		case text
		case topic; case _topic
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.error = try [CodeableConcept](from: _container, forKeyIfPresent: .error)
		self.eventsSinceSubscriptionStart = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .eventsSinceSubscriptionStart, auxiliaryKey: ._eventsSinceSubscriptionStart)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notificationEvent = try [SubscriptionStatusNotificationEvent](from: _container, forKeyIfPresent: .notificationEvent)
		self.status = try FHIRPrimitive<SubscriptionStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subscription = try Reference(from: _container, forKey: .subscription)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.topic = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .topic, auxiliaryKey: ._topic)
		self.type = try FHIRPrimitive<SubscriptionNotificationType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try error?.encode(on: &_container, forKey: .error)
		try eventsSinceSubscriptionStart?.encode(on: &_container, forKey: .eventsSinceSubscriptionStart, auxiliaryKey: ._eventsSinceSubscriptionStart)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notificationEvent?.encode(on: &_container, forKey: .notificationEvent)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subscription.encode(on: &_container, forKey: .subscription)
		try text?.encode(on: &_container, forKey: .text)
		try topic?.encode(on: &_container, forKey: .topic, auxiliaryKey: ._topic)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Detailed information about any events relevant to this notification.
 
 Detailed information about events relevant to this subscription notification.
 */
public struct SubscriptionStatusNotificationEvent: BackboneElement {
	
	/// Additional context for this event
	public var additionalContext: [Reference]?
	
	/// Event number
	public var eventNumber: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The focus of this event
	public var focus: Reference?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The instant this event occurred
	public var timestamp: FHIRPrimitive<Instant>?
	
	/// Designated initializer
	public init(
		additionalContext: [Reference]? = nil,
		eventNumber: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timestamp: FHIRPrimitive<Instant>? = nil
	) {
		self.additionalContext = additionalContext
		self.eventNumber = eventNumber
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.modifierExtension = modifierExtension
		self.timestamp = timestamp
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalContext
		case eventNumber; case _eventNumber
		case `extension` = "extension"
		case focus
		case id; case _id
		case modifierExtension
		case timestamp; case _timestamp
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalContext = try [Reference](from: _container, forKeyIfPresent: .additionalContext)
		self.eventNumber = try FHIRPrimitive<FHIRString>(from: _container, forKey: .eventNumber, auxiliaryKey: ._eventNumber)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .timestamp, auxiliaryKey: ._timestamp)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalContext?.encode(on: &_container, forKey: .additionalContext)
		try eventNumber.encode(on: &_container, forKey: .eventNumber, auxiliaryKey: ._eventNumber)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try timestamp?.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
	}
}
