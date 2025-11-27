//
//  SubscriptionStatus.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/SubscriptionStatus)
//  Copyright 2025 Apple Inc.
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
	
	/// The type of event being conveyed with this notification.
	public var type: FHIRPrimitive<SubscriptionNotificationType>
	
	/// Events since the Subscription was created
	public var eventsSinceSubscriptionStart: FHIRInteger64?
	
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
		eventsSinceSubscriptionStart: FHIRInteger64? = nil,
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
		case eventsSinceSubscriptionStart
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
		self.eventsSinceSubscriptionStart = try FHIRInteger64(from: _container, forKeyIfPresent: .eventsSinceSubscriptionStart)
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
		try eventsSinceSubscriptionStart?.encode(on: &_container, forKey: .eventsSinceSubscriptionStart)
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
	
	/// Sequencing index of this event
	public var eventNumber: FHIRInteger64
	
	/// Event that triggered this notification
	public var triggerEvent: [CodeableConcept]?
	
	/// The instant this event occurred
	public var timestamp: FHIRPrimitive<Instant>?
	
	/// Reference to the primary resource or information of this event
	public var focus: Reference?
	
	/// References related to the focus resource and/or context of this event
	public var additionalContext: [Reference]?
	
	/// Query describing data relevant to this notification
	public var relatedQuery: [SubscriptionStatusNotificationEventRelatedQuery]?
	
	/// Authorization information relevant to a notification
	public var authorizationHint: [SubscriptionStatusNotificationEventAuthorizationHint]?
	
	/// Designated initializer taking all required properties
	public init(eventNumber: FHIRInteger64) {
		self.eventNumber = eventNumber
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalContext: [Reference]? = nil,
		authorizationHint: [SubscriptionStatusNotificationEventAuthorizationHint]? = nil,
		eventNumber: FHIRInteger64,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relatedQuery: [SubscriptionStatusNotificationEventRelatedQuery]? = nil,
		timestamp: FHIRPrimitive<Instant>? = nil,
		triggerEvent: [CodeableConcept]? = nil
	) {
		self.init(eventNumber: eventNumber)
		self.additionalContext = additionalContext
		self.authorizationHint = authorizationHint
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.modifierExtension = modifierExtension
		self.relatedQuery = relatedQuery
		self.timestamp = timestamp
		self.triggerEvent = triggerEvent
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalContext
		case authorizationHint
		case eventNumber
		case focus
		case relatedQuery
		case timestamp; case _timestamp
		case triggerEvent
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalContext = try [Reference](from: _container, forKeyIfPresent: .additionalContext)
		self.authorizationHint = try [SubscriptionStatusNotificationEventAuthorizationHint](from: _container, forKeyIfPresent: .authorizationHint)
		self.eventNumber = try FHIRInteger64(from: _container, forKey: .eventNumber)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.relatedQuery = try [SubscriptionStatusNotificationEventRelatedQuery](from: _container, forKeyIfPresent: .relatedQuery)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .timestamp, auxiliaryKey: ._timestamp)
		self.triggerEvent = try [CodeableConcept](from: _container, forKeyIfPresent: .triggerEvent)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalContext?.encode(on: &_container, forKey: .additionalContext)
		try authorizationHint?.encode(on: &_container, forKey: .authorizationHint)
		try eventNumber.encode(on: &_container, forKey: .eventNumber)
		try focus?.encode(on: &_container, forKey: .focus)
		try relatedQuery?.encode(on: &_container, forKey: .relatedQuery)
		try timestamp?.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try triggerEvent?.encode(on: &_container, forKey: .triggerEvent)
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
		    && authorizationHint == _other.authorizationHint
		    && eventNumber == _other.eventNumber
		    && focus == _other.focus
		    && relatedQuery == _other.relatedQuery
		    && timestamp == _other.timestamp
		    && triggerEvent == _other.triggerEvent
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalContext)
		hasher.combine(authorizationHint)
		hasher.combine(eventNumber)
		hasher.combine(focus)
		hasher.combine(relatedQuery)
		hasher.combine(timestamp)
		hasher.combine(triggerEvent)
	}
}

/**
 Authorization information relevant to a notification.
 
 Authorization context information and value (e.g., token).
 */
open class SubscriptionStatusNotificationEventAuthorizationHint: BackboneElement {
	
	/// Classification of the authorization hint, e.g., 'oAuthChallengeToken'
	public var authorizationType: Coding
	
	/// Authorization value, as defined by the 'authorizationType'
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(authorizationType: Coding) {
		self.authorizationType = authorizationType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		authorizationType: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(authorizationType: authorizationType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorizationType
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorizationType = try Coding(from: _container, forKey: .authorizationType)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorizationType.encode(on: &_container, forKey: .authorizationType)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionStatusNotificationEventAuthorizationHint else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorizationType == _other.authorizationType
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorizationType)
		hasher.combine(value)
	}
}

/**
 Query describing data relevant to this notification.
 
 Queries and codes that could be included with notifications of this shape. Servers MAY include these queries if
 supported and desired in the workflow.
 */
open class SubscriptionStatusNotificationEventRelatedQuery: BackboneElement {
	
	/// Coded information describing the type of data this query provides
	public var queryType: Coding?
	
	/// Query to perform
	public var query: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(query: FHIRPrimitive<FHIRString>) {
		self.query = query
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		query: FHIRPrimitive<FHIRString>,
		queryType: Coding? = nil
	) {
		self.init(query: query)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.queryType = queryType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case query; case _query
		case queryType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.query = try FHIRPrimitive<FHIRString>(from: _container, forKey: .query, auxiliaryKey: ._query)
		self.queryType = try Coding(from: _container, forKeyIfPresent: .queryType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try query.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try queryType?.encode(on: &_container, forKey: .queryType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionStatusNotificationEventRelatedQuery else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return query == _other.query
		    && queryType == _other.queryType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(query)
		hasher.combine(queryType)
	}
}
