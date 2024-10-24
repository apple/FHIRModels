//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Subscription)
//  Copyright 2024 Apple Inc.
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
	
	/// Entity responsible for Subscription changes
	public var managingEntity: Reference?
	
	/// Description of why this subscription was created
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// Criteria for narrowing the subscription topic stream
	public var filterBy: [SubscriptionFilterBy]?
	
	/// Channel type for notifications
	public var channelType: Coding
	
	/// Where the channel points to
	public var endpoint: FHIRPrimitive<FHIRURI>?
	
	/// Channel type
	public var parameter: [SubscriptionParameter]?
	
	/// Interval in seconds to send 'heartbeat' notification
	public var heartbeatPeriod: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Timeout in seconds to attempt notification delivery
	public var timeout: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// MIME type to send, or omit for no payload
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// How much of the resource content to deliver in the notification payload. The choices are an empty payload, only
	/// the resource id, or the full resource content.
	public var content: FHIRPrimitive<SubscriptionPayloadContent>?
	
	/// Maximum number of events that can be combined in a single notification
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
		heartbeatPeriod: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingEntity: Reference? = nil,
		maxCount: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		parameter: [SubscriptionParameter]? = nil,
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
		self.heartbeatPeriod = heartbeatPeriod
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingEntity = managingEntity
		self.maxCount = maxCount
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.parameter = parameter
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
		case heartbeatPeriod; case _heartbeatPeriod
		case identifier
		case managingEntity
		case maxCount; case _maxCount
		case name; case _name
		case parameter
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
		self.heartbeatPeriod = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingEntity = try Reference(from: _container, forKeyIfPresent: .managingEntity)
		self.maxCount = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxCount, auxiliaryKey: ._maxCount)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parameter = try [SubscriptionParameter](from: _container, forKeyIfPresent: .parameter)
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
		try heartbeatPeriod?.encode(on: &_container, forKey: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingEntity?.encode(on: &_container, forKey: .managingEntity)
		try maxCount?.encode(on: &_container, forKey: .maxCount, auxiliaryKey: ._maxCount)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parameter?.encode(on: &_container, forKey: .parameter)
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
		    && heartbeatPeriod == _other.heartbeatPeriod
		    && identifier == _other.identifier
		    && managingEntity == _other.managingEntity
		    && maxCount == _other.maxCount
		    && name == _other.name
		    && parameter == _other.parameter
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
		hasher.combine(heartbeatPeriod)
		hasher.combine(identifier)
		hasher.combine(managingEntity)
		hasher.combine(maxCount)
		hasher.combine(name)
		hasher.combine(parameter)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(timeout)
		hasher.combine(topic)
	}
}

/**
 Criteria for narrowing the subscription topic stream.
 
 The filter properties to be applied to narrow the subscription topic stream.  When multiple filters are applied,
 evaluates to true if all the conditions applicable to that resource are met; otherwise it returns false (i.e., logical
 AND).
 */
open class SubscriptionFilterBy: BackboneElement {
	
	/// Allowed Resource (reference to definition) for this Subscription filter
	public var resource: FHIRPrimitive<FHIRURI>?
	
	/// Filter label defined in SubscriptionTopic
	public var filterParameter: FHIRPrimitive<FHIRString>
	
	/// Comparator applied to this filter parameter.
	public var comparator: FHIRPrimitive<SearchComparator>?
	
	/// Modifier applied to this filter parameter.
	public var modifier: FHIRPrimitive<SearchModifierCode>?
	
	/// Literal value or resource path
	public var value: FHIRPrimitive<FHIRString>
	
	/// Event to filter by
	public var event: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(filterParameter: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.filterParameter = filterParameter
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comparator: FHIRPrimitive<SearchComparator>? = nil,
		event: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		filterParameter: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: FHIRPrimitive<SearchModifierCode>? = nil,
		modifierExtension: [Extension]? = nil,
		resource: FHIRPrimitive<FHIRURI>? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(filterParameter: filterParameter, value: value)
		self.comparator = comparator
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator; case _comparator
		case event
		case filterParameter; case _filterParameter
		case modifier; case _modifier
		case resource; case _resource
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comparator = try FHIRPrimitive<SearchComparator>(from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.event = try [CodeableConcept](from: _container, forKeyIfPresent: .event)
		self.filterParameter = try FHIRPrimitive<FHIRString>(from: _container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		self.modifier = try FHIRPrimitive<SearchModifierCode>(from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try event?.encode(on: &_container, forKey: .event)
		try filterParameter.encode(on: &_container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
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
		return comparator == _other.comparator
		    && event == _other.event
		    && filterParameter == _other.filterParameter
		    && modifier == _other.modifier
		    && resource == _other.resource
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comparator)
		hasher.combine(event)
		hasher.combine(filterParameter)
		hasher.combine(modifier)
		hasher.combine(resource)
		hasher.combine(value)
	}
}

/**
 Channel type.
 
 Channel-dependent information to send as part of the notification (e.g., HTTP Headers).
 */
open class SubscriptionParameter: BackboneElement {
	
	/// Name (key) of the parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value of the parameter to use or pass through
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.name = name
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(name: name, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(value)
	}
}
