//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Subscription)
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
 Notification about a SubscriptionTopic.
 
 The subscription resource describes a particular client's request to be notified about a SubscriptionTopic.
 */
public struct Subscription: DomainResource {
	
	public static let resourceType: ResourceType = .subscription
	
	/// Channel type for notifications
	public var channelType: Coding
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// How much of the resource content to deliver in the notification payload. The choices are an empty payload, only
	/// the resource id, or the full resource content.
	public var content: FHIRPrimitive<SubscriptionPayloadContent>?
	
	/// MIME type to send, or omit for no payload
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// When to automatically delete the subscription
	public var end: FHIRPrimitive<Instant>?
	
	/// Where the channel points to
	public var endpoint: FHIRPrimitive<FHIRURI>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Criteria for narrowing the subscription topic stream
	public var filterBy: [SubscriptionFilterBy]?
	
	/// Interval in seconds to send 'heartbeat' notification
	public var heartbeatPeriod: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifiers (business identifier)
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Entity responsible for Subscription changes
	public var managingEntity: Reference?
	
	/// Maximum number of events that can be combined in a single notification
	public var maxCount: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Human readable name for this subscription
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Channel type
	public var parameter: [SubscriptionParameter]?
	
	/// Description of why this subscription was created
	public var reason: FHIRPrimitive<FHIRString>?
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatusCodes>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Timeout in seconds to attempt notification delivery
	public var timeout: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Reference to the subscription topic being subscribed to
	public var topic: FHIRPrimitive<Canonical>
	
	/// Designated initializer
	public init(
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
		self.channelType = channelType
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
		self.status = status
		self.text = text
		self.timeout = timeout
		self.topic = topic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case channelType
		case contact
		case contained
		case content; case _content
		case contentType; case _contentType
		case end; case _end
		case endpoint; case _endpoint
		case `extension` = "extension"
		case filterBy
		case heartbeatPeriod; case _heartbeatPeriod
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingEntity
		case maxCount; case _maxCount
		case meta
		case modifierExtension
		case name; case _name
		case parameter
		case reason; case _reason
		case status; case _status
		case text
		case timeout; case _timeout
		case topic; case _topic
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.channelType = try Coding(from: _container, forKey: .channelType)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.content = try FHIRPrimitive<SubscriptionPayloadContent>(from: _container, forKeyIfPresent: .content, auxiliaryKey: ._content)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .endpoint, auxiliaryKey: ._endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.filterBy = try [SubscriptionFilterBy](from: _container, forKeyIfPresent: .filterBy)
		self.heartbeatPeriod = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingEntity = try Reference(from: _container, forKeyIfPresent: .managingEntity)
		self.maxCount = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxCount, auxiliaryKey: ._maxCount)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parameter = try [SubscriptionParameter](from: _container, forKeyIfPresent: .parameter)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.status = try FHIRPrimitive<SubscriptionStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timeout = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .timeout, auxiliaryKey: ._timeout)
		self.topic = try FHIRPrimitive<Canonical>(from: _container, forKey: .topic, auxiliaryKey: ._topic)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try channelType.encode(on: &_container, forKey: .channelType)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try content?.encode(on: &_container, forKey: .content, auxiliaryKey: ._content)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try endpoint?.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try filterBy?.encode(on: &_container, forKey: .filterBy)
		try heartbeatPeriod?.encode(on: &_container, forKey: .heartbeatPeriod, auxiliaryKey: ._heartbeatPeriod)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingEntity?.encode(on: &_container, forKey: .managingEntity)
		try maxCount?.encode(on: &_container, forKey: .maxCount, auxiliaryKey: ._maxCount)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try timeout?.encode(on: &_container, forKey: .timeout, auxiliaryKey: ._timeout)
		try topic.encode(on: &_container, forKey: .topic, auxiliaryKey: ._topic)
	}
}

/**
 Criteria for narrowing the subscription topic stream.
 
 The filter properties to be applied to narrow the subscription topic stream.  When multiple filters are applied,
 evaluates to true if all the conditions applicable to that resource are met; otherwise it returns false (i.e., logical
 AND).
 */
public struct SubscriptionFilterBy: BackboneElement {
	
	/// Comparator applied to this filter parameter.
	public var comparator: FHIRPrimitive<SearchComparator>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Filter label defined in SubscriptionTopic
	public var filterParameter: FHIRPrimitive<FHIRString>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Modifier applied to this filter parameter.
	public var modifier: FHIRPrimitive<SearchModifierCode>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Allowed Resource (reference to definition) for this Subscription filter
	public var resourceType: FHIRPrimitive<FHIRURI>?
	
	/// Literal value or resource path
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		comparator: FHIRPrimitive<SearchComparator>? = nil,
		`extension`: [Extension]? = nil,
		filterParameter: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: FHIRPrimitive<SearchModifierCode>? = nil,
		modifierExtension: [Extension]? = nil,
		resourceType: FHIRPrimitive<FHIRURI>? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.comparator = comparator
		self.`extension` = `extension`
		self.filterParameter = filterParameter
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.resourceType = resourceType
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator; case _comparator
		case `extension` = "extension"
		case filterParameter; case _filterParameter
		case id; case _id
		case modifier; case _modifier
		case modifierExtension
		case resourceType; case _resourceType
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comparator = try FHIRPrimitive<SearchComparator>(from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.filterParameter = try FHIRPrimitive<FHIRString>(from: _container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try FHIRPrimitive<SearchModifierCode>(from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resourceType = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resourceType, auxiliaryKey: ._resourceType)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try filterParameter.encode(on: &_container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resourceType?.encode(on: &_container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Channel type.
 
 Channel-dependent information to send as part of the notification (e.g., HTTP Headers).
 */
public struct SubscriptionParameter: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name (key) of the parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value of the parameter to use or pass through
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}
