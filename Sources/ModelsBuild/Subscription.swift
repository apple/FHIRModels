//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/Subscription)
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
 Notification about a SubscriptionTopic.
 
 The subscription resource describes a particular client's request to be notified about a SubscriptionTopic.
 */
open class Subscription: DomainResource {
	
	override open class var resourceType: ResourceType { return .subscription }
	
	/// Additional identifiers (business identifier)
	public var identifier: [Identifier]?
	
	/// Human readable name for this subscription
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatusCodes>
	
	/// Reference to the subscription topic being subscribed to
	public var topic: FHIRPrimitive<Canonical>
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// When to automatically delete the subscription
	public var end: FHIRPrimitive<Instant>?
	
	/// Description of why this subscription was created
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// Criteria for narrowing the subscription topic stream
	public var filterBy: [SubscriptionFilterBy]?
	
	/// Channel type for notifications
	public var channelType: Coding
	
	/// Where the channel points to
	public var endpoint: FHIRPrimitive<FHIRURI>?
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Interval in seconds to send 'heartbeat' notification
	public var heartbeatPeriod: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Timeout in seconds to attempt notification delivery
	public var timeout: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// MIME type to send, or omit for no payload
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// How much of the resource content to deliver in the notification payload. The choices are an empty payload, only
	/// the resource id, or the full resource content.
	public var content: FHIRPrimitive<SubscriptionPayloadContent>?
	
	/// Maximum number of triggering resources included in notification bundles
	public var maxCount: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Designated initializer taking all required properties
	public init(channelType: Coding, status: FHIRPrimitive<SubscriptionStatusCodes>, topic: FHIRPrimitive<Canonical>) {
		self.channelType = channelType
		self.status = status
		self.topic = topic
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		channelType: Coding,
		contact: [ContactPoint]? = nil,
		contained: [ResourceProxy]? = nil,
		content: FHIRPrimitive<SubscriptionPayloadContent>? = nil,
		contentType: FHIRPrimitive<FHIRString>? = nil,
		end: FHIRPrimitive<Instant>? = nil,
		endpoint: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		filterBy: [SubscriptionFilterBy]? = nil,
		header: [FHIRPrimitive<FHIRString>]? = nil,
		heartbeatPeriod: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		maxCount: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		reason: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<SubscriptionStatusCodes>,
		text: Narrative? = nil,
		timeout: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		topic: FHIRPrimitive<Canonical>
	) {
		self.init(channelType: channelType, status: status, topic: topic)
		self.contact = contact
		self.contained = contained
		self.content = content
		self.contentType = contentType
		self.end = end
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.filterBy = filterBy
		self.header = header
		self.heartbeatPeriod = heartbeatPeriod
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.maxCount = maxCount
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.reason = reason
		self.text = text
		self.timeout = timeout
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case channelType
		case contact
		case content; case _content
		case contentType; case _contentType
		case end; case _end
		case endpoint; case _endpoint
		case filterBy
		case header; case _header
		case heartbeatPeriod; case _heartbeatPeriod
		case identifier
		case maxCount; case _maxCount
		case name; case _name
		case reason; case _reason
		case status; case _status
		case timeout; case _timeout
		case topic; case _topic
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.channelType = try Coding(from: _container, forKey: .channelType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.content = try FHIRPrimitive<SubscriptionPayloadContent>(from: _container, forKeyIfPresent: .content, auxiliaryKey: ._content)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .endpoint, auxiliaryKey: ._endpoint)
		self.filterBy = try [SubscriptionFilterBy](from: _container, forKeyIfPresent: .filterBy)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.heartbeatPeriod = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.maxCount = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxCount, auxiliaryKey: ._maxCount)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.status = try FHIRPrimitive<SubscriptionStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.timeout = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .timeout, auxiliaryKey: ._timeout)
		self.topic = try FHIRPrimitive<Canonical>(from: _container, forKey: .topic, auxiliaryKey: ._topic)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try channelType.encode(on: &_container, forKey: .channelType)
		try contact?.encode(on: &_container, forKey: .contact)
		try content?.encode(on: &_container, forKey: .content, auxiliaryKey: ._content)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try endpoint?.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try filterBy?.encode(on: &_container, forKey: .filterBy)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try heartbeatPeriod?.encode(on: &_container, forKey: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try maxCount?.encode(on: &_container, forKey: .maxCount, auxiliaryKey: ._maxCount)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try timeout?.encode(on: &_container, forKey: .timeout, auxiliaryKey: ._timeout)
		try topic.encode(on: &_container, forKey: .topic, auxiliaryKey: ._topic)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Subscription else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return channelType == _other.channelType
		    && contact == _other.contact
		    && content == _other.content
		    && contentType == _other.contentType
		    && end == _other.end
		    && endpoint == _other.endpoint
		    && filterBy == _other.filterBy
		    && header == _other.header
		    && heartbeatPeriod == _other.heartbeatPeriod
		    && identifier == _other.identifier
		    && maxCount == _other.maxCount
		    && name == _other.name
		    && reason == _other.reason
		    && status == _other.status
		    && timeout == _other.timeout
		    && topic == _other.topic
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(channelType)
		hasher.combine(contact)
		hasher.combine(content)
		hasher.combine(contentType)
		hasher.combine(end)
		hasher.combine(endpoint)
		hasher.combine(filterBy)
		hasher.combine(header)
		hasher.combine(heartbeatPeriod)
		hasher.combine(identifier)
		hasher.combine(maxCount)
		hasher.combine(name)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(timeout)
		hasher.combine(topic)
	}
}

/**
 Criteria for narrowing the subscription topic stream.
 
 The filter properties to be applied to narrow the subscription topic stream.  When multiple filters are applied,
 evaluates to true if all the conditions are met; otherwise it returns false.   (i.e., logical AND).
 */
open class SubscriptionFilterBy: BackboneElement {
	
	/// Allowed Data type or Resource (reference to definition) for this Subscription
	public var resourceType: FHIRPrimitive<FHIRURI>?
	
	/// Filter label defined in SubscriptionTopic
	public var filterParameter: FHIRPrimitive<FHIRString>
	
	/// Operator to apply when determining matches (Search Modifiers), from the list of allowed modifiers for this
	/// filter in the relevant SubscriptionTopic.
	public var modifier: FHIRPrimitive<SubscriptionSearchModifer>?
	
	/// Literal value or resource path
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(filterParameter: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.filterParameter = filterParameter
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		filterParameter: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: FHIRPrimitive<SubscriptionSearchModifer>? = nil,
		modifierExtension: [Extension]? = nil,
		resourceType: FHIRPrimitive<FHIRURI>? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(filterParameter: filterParameter, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.resourceType = resourceType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case filterParameter; case _filterParameter
		case modifier; case _modifier
		case resourceType; case _resourceType
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.filterParameter = try FHIRPrimitive<FHIRString>(from: _container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		self.modifier = try FHIRPrimitive<SubscriptionSearchModifer>(from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.resourceType = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resourceType, auxiliaryKey: ._resourceType)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try filterParameter.encode(on: &_container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try resourceType?.encode(on: &_container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionFilterBy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return filterParameter == _other.filterParameter
		    && modifier == _other.modifier
		    && resourceType == _other.resourceType
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(filterParameter)
		hasher.combine(modifier)
		hasher.combine(resourceType)
		hasher.combine(value)
	}
}
