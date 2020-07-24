//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Subscription)
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
 A server push subscription criteria.
 
 The subscription resource is used to define a push based subscription from a server to another system. Once a
 subscription is registered with the server, the server checks every resource that is created or updated, and if the
 resource matches the given criteria, it sends a message on the defined "channel" so that another system is able to take
 an appropriate action.
 */
open class Subscription: DomainResource {
	
	override open class var resourceType: ResourceType { return .subscription }
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatus>
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// When to automatically delete the subscription
	public var end: FHIRPrimitive<Instant>?
	
	/// Description of why this subscription was created
	public var reason: FHIRPrimitive<FHIRString>
	
	/// Rule for server push criteria
	public var criteria: FHIRPrimitive<FHIRString>
	
	/// Latest error note
	public var error: FHIRPrimitive<FHIRString>?
	
	/// The channel on which to report matches to the criteria
	public var channel: SubscriptionChannel
	
	/// A tag to add to matching resources
	public var tag: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(channel: SubscriptionChannel, criteria: FHIRPrimitive<FHIRString>, reason: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<SubscriptionStatus>) {
		self.channel = channel
		self.criteria = criteria
		self.reason = reason
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							channel: SubscriptionChannel,
							contact: [ContactPoint]? = nil,
							contained: [ResourceProxy]? = nil,
							criteria: FHIRPrimitive<FHIRString>,
							end: FHIRPrimitive<Instant>? = nil,
							error: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							reason: FHIRPrimitive<FHIRString>,
							status: FHIRPrimitive<SubscriptionStatus>,
							tag: [Coding]? = nil,
							text: Narrative? = nil)
	{
		self.init(channel: channel, criteria: criteria, reason: reason, status: status)
		self.contact = contact
		self.contained = contained
		self.end = end
		self.error = error
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.tag = tag
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case channel
		case contact
		case criteria; case _criteria
		case end; case _end
		case error; case _error
		case reason; case _reason
		case status; case _status
		case tag
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.channel = try SubscriptionChannel(from: _container, forKey: .channel)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.criteria = try FHIRPrimitive<FHIRString>(from: _container, forKey: .criteria, auxiliaryKey: ._criteria)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.error = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .error, auxiliaryKey: ._error)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKey: .reason, auxiliaryKey: ._reason)
		self.status = try FHIRPrimitive<SubscriptionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.tag = try [Coding](from: _container, forKeyIfPresent: .tag)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try channel.encode(on: &_container, forKey: .channel)
		try contact?.encode(on: &_container, forKey: .contact)
		try criteria.encode(on: &_container, forKey: .criteria, auxiliaryKey: ._criteria)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try error?.encode(on: &_container, forKey: .error, auxiliaryKey: ._error)
		try reason.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try tag?.encode(on: &_container, forKey: .tag)
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
		return channel == _other.channel
		    && contact == _other.contact
		    && criteria == _other.criteria
		    && end == _other.end
		    && error == _other.error
		    && reason == _other.reason
		    && status == _other.status
		    && tag == _other.tag
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(channel)
		hasher.combine(contact)
		hasher.combine(criteria)
		hasher.combine(end)
		hasher.combine(error)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(tag)
	}
}

/**
 The channel on which to report matches to the criteria.
 
 Details where to send notifications when resources are received that meet the criteria.
 */
open class SubscriptionChannel: BackboneElement {
	
	/// The type of channel to send notifications on.
	public var type: FHIRPrimitive<SubscriptionChannelType>
	
	/// Where the channel points to
	public var endpoint: FHIRPrimitive<FHIRURI>?
	
	/// Mimetype to send, or omit for no payload
	public var payload: FHIRPrimitive<FHIRString>?
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<SubscriptionChannelType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							endpoint: FHIRPrimitive<FHIRURI>? = nil,
							`extension`: [Extension]? = nil,
							header: [FHIRPrimitive<FHIRString>]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							payload: FHIRPrimitive<FHIRString>? = nil,
							type: FHIRPrimitive<SubscriptionChannelType>)
	{
		self.init(type: type)
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.header = header
		self.id = id
		self.modifierExtension = modifierExtension
		self.payload = payload
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint; case _endpoint
		case header; case _header
		case payload; case _payload
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .endpoint, auxiliaryKey: ._endpoint)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.payload = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .payload, auxiliaryKey: ._payload)
		self.type = try FHIRPrimitive<SubscriptionChannelType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endpoint?.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try payload?.encode(on: &_container, forKey: .payload, auxiliaryKey: ._payload)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionChannel else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endpoint == _other.endpoint
		    && header == _other.header
		    && payload == _other.payload
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endpoint)
		hasher.combine(header)
		hasher.combine(payload)
		hasher.combine(type)
	}
}
