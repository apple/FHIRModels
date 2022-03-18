//
//  SubscriptionStatus.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/SubscriptionStatus)
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
 Status information about a Subscription provided during event notification.
 
 The SubscriptionStatus resource describes the state of a Subscription during notifications.
 */
open class SubscriptionStatus: DomainResource {
	
	override open class var resourceType: ResourceType { return .subscriptionStatus }
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatusCodes>?
	
	/// The type of event being conveyed with this notificaiton.
	public var type: FHIRPrimitive<SubscriptionNotificationType>
	
	/// Events since the Subscription was created
	public var eventsSinceSubscriptionStart: FHIRPrimitive<FHIRInteger64>?
	
	/// Detailed information about any events relevant to this notification
	public var notificationEvent: [SubscriptionStatusNotificationEvent]?
	
	/// Reference to the Subscription responsible for this notification
	public var subscription: Reference
	
	/// Reference to the SubscriptionTopic this notification relates to
	public var topic: FHIRPrimitive<Canonical>?
	
	/// List of errors on the subscription
	public var error: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(subscription: Reference, type: FHIRPrimitive<SubscriptionNotificationType>) {
		self.subscription = subscription
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contained: [ResourceProxy]? = nil,
		error: [CodeableConcept]? = nil,
		eventsSinceSubscriptionStart: FHIRPrimitive<FHIRInteger64>? = nil,
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
		self.init(subscription: subscription, type: type)
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
		self.text = text
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case error
		case eventsSinceSubscriptionStart; case _eventsSinceSubscriptionStart
		case notificationEvent
		case status; case _status
		case subscription
		case topic; case _topic
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.error = try [CodeableConcept](from: _container, forKeyIfPresent: .error)
		self.eventsSinceSubscriptionStart = try FHIRPrimitive<FHIRInteger64>(from: _container, forKeyIfPresent: .eventsSinceSubscriptionStart, auxiliaryKey: ._eventsSinceSubscriptionStart)
		self.notificationEvent = try [SubscriptionStatusNotificationEvent](from: _container, forKeyIfPresent: .notificationEvent)
		self.status = try FHIRPrimitive<SubscriptionStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subscription = try Reference(from: _container, forKey: .subscription)
		self.topic = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .topic, auxiliaryKey: ._topic)
		self.type = try FHIRPrimitive<SubscriptionNotificationType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try error?.encode(on: &_container, forKey: .error)
		try eventsSinceSubscriptionStart?.encode(on: &_container, forKey: .eventsSinceSubscriptionStart, auxiliaryKey: ._eventsSinceSubscriptionStart)
		try notificationEvent?.encode(on: &_container, forKey: .notificationEvent)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subscription.encode(on: &_container, forKey: .subscription)
		try topic?.encode(on: &_container, forKey: .topic, auxiliaryKey: ._topic)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionStatus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return error == _other.error
		    && eventsSinceSubscriptionStart == _other.eventsSinceSubscriptionStart
		    && notificationEvent == _other.notificationEvent
		    && status == _other.status
		    && subscription == _other.subscription
		    && topic == _other.topic
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(error)
		hasher.combine(eventsSinceSubscriptionStart)
		hasher.combine(notificationEvent)
		hasher.combine(status)
		hasher.combine(subscription)
		hasher.combine(topic)
		hasher.combine(type)
	}
}

/**
 Detailed information about any events relevant to this notification.
 
 Detailed information about events relevant to this subscription notification.
 */
open class SubscriptionStatusNotificationEvent: BackboneElement {
	
	/// Event number
	public var eventNumber: FHIRPrimitive<FHIRInteger64>
	
	/// The instant this event occurred
	public var timestamp: FHIRPrimitive<Instant>?
	
	/// The focus of this event
	public var focus: Reference?
	
	/// Additional context for this event
	public var additionalContext: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(eventNumber: FHIRPrimitive<FHIRInteger64>) {
		self.eventNumber = eventNumber
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalContext: [Reference]? = nil,
		eventNumber: FHIRPrimitive<FHIRInteger64>,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timestamp: FHIRPrimitive<Instant>? = nil
	) {
		self.init(eventNumber: eventNumber)
		self.additionalContext = additionalContext
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
		case focus
		case timestamp; case _timestamp
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalContext = try [Reference](from: _container, forKeyIfPresent: .additionalContext)
		self.eventNumber = try FHIRPrimitive<FHIRInteger64>(from: _container, forKey: .eventNumber, auxiliaryKey: ._eventNumber)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .timestamp, auxiliaryKey: ._timestamp)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalContext?.encode(on: &_container, forKey: .additionalContext)
		try eventNumber.encode(on: &_container, forKey: .eventNumber, auxiliaryKey: ._eventNumber)
		try focus?.encode(on: &_container, forKey: .focus)
		try timestamp?.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionStatusNotificationEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalContext == _other.additionalContext
		    && eventNumber == _other.eventNumber
		    && focus == _other.focus
		    && timestamp == _other.timestamp
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalContext)
		hasher.combine(eventNumber)
		hasher.combine(focus)
		hasher.combine(timestamp)
	}
}
