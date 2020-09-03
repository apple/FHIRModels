//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Subscription)
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
	public var status: FHIRPrimitive<SubscriptionState>
	
	/// Reference to the subscription topic being subscribed to
	public var topic: Reference
	
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
	
	/// Designated initializer taking all required properties
	public init(channelType: Coding, status: FHIRPrimitive<SubscriptionState>, topic: Reference) {
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
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							reason: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<SubscriptionState>,
							text: Narrative? = nil,
							timeout: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							topic: Reference)
	{
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
		case name; case _name
		case reason; case _reason
		case status; case _status
		case timeout; case _timeout
		case topic
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
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.status = try FHIRPrimitive<SubscriptionState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.timeout = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .timeout, auxiliaryKey: ._timeout)
		self.topic = try Reference(from: _container, forKey: .topic)
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
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try timeout?.encode(on: &_container, forKey: .timeout, auxiliaryKey: ._timeout)
		try topic.encode(on: &_container, forKey: .topic)
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
	
	/// Filter label defined in SubscriptionTopic
	public var searchParamName: FHIRPrimitive<FHIRString>
	
	/// The operator to apply to the filter value when determining matches (Search modifiers).
	public var searchModifier: FHIRPrimitive<SubscriptionSearchModifier>?
	
	/// Literal value or resource path
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(searchParamName: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.searchParamName = searchParamName
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							searchModifier: FHIRPrimitive<SubscriptionSearchModifier>? = nil,
							searchParamName: FHIRPrimitive<FHIRString>,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(searchParamName: searchParamName, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.searchModifier = searchModifier
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case searchModifier; case _searchModifier
		case searchParamName; case _searchParamName
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.searchModifier = try FHIRPrimitive<SubscriptionSearchModifier>(from: _container, forKeyIfPresent: .searchModifier, auxiliaryKey: ._searchModifier)
		self.searchParamName = try FHIRPrimitive<FHIRString>(from: _container, forKey: .searchParamName, auxiliaryKey: ._searchParamName)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try searchModifier?.encode(on: &_container, forKey: .searchModifier, auxiliaryKey: ._searchModifier)
		try searchParamName.encode(on: &_container, forKey: .searchParamName, auxiliaryKey: ._searchParamName)
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
		return searchModifier == _other.searchModifier
		    && searchParamName == _other.searchParamName
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(searchModifier)
		hasher.combine(searchParamName)
		hasher.combine(value)
	}
}
