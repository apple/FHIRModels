//
//  Subscription.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Subscription)
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
 Server push subscription criteria.
 
 The subscription resource is used to define a push-based subscription from a server to another system. Once a
 subscription is registered with the server, the server checks every resource that is created or updated, and if the
 resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an
 appropriate action.
 */
public struct Subscription: DomainResource {
	
	public static let resourceType: ResourceType = .subscription
	
	/// The channel on which to report matches to the criteria
	public var channel: SubscriptionChannel
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Rule for server push
	public var criteria: FHIRPrimitive<FHIRString>
	
	/// When to automatically delete the subscription
	public var end: FHIRPrimitive<Instant>?
	
	/// Latest error note
	public var error: FHIRPrimitive<FHIRString>?
	
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
	
	/// Description of why this subscription was created
	public var reason: FHIRPrimitive<FHIRString>
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: FHIRPrimitive<SubscriptionStatusCodes>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		status: FHIRPrimitive<SubscriptionStatusCodes>,
		text: Narrative? = nil
	) {
		self.channel = channel
		self.contact = contact
		self.contained = contained
		self.criteria = criteria
		self.end = end
		self.error = error
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case channel
		case contact
		case contained
		case criteria; case _criteria
		case end; case _end
		case error; case _error
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case reason; case _reason
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.channel = try SubscriptionChannel(from: _container, forKey: .channel)
		self.contact = try [ContactPoint](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.criteria = try FHIRPrimitive<FHIRString>(from: _container, forKey: .criteria, auxiliaryKey: ._criteria)
		self.end = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .end, auxiliaryKey: ._end)
		self.error = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .error, auxiliaryKey: ._error)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try FHIRPrimitive<FHIRString>(from: _container, forKey: .reason, auxiliaryKey: ._reason)
		self.status = try FHIRPrimitive<SubscriptionStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try channel.encode(on: &_container, forKey: .channel)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try criteria.encode(on: &_container, forKey: .criteria, auxiliaryKey: ._criteria)
		try end?.encode(on: &_container, forKey: .end, auxiliaryKey: ._end)
		try error?.encode(on: &_container, forKey: .error, auxiliaryKey: ._error)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 The channel on which to report matches to the criteria.
 
 Details where to send notifications when resources are received that meet the criteria.
 */
public struct SubscriptionChannel: BackboneElement {
	
	/// Where the channel points to
	public var endpoint: FHIRPrimitive<FHIRURI>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Usage depends on the channel type
	public var header: [FHIRPrimitive<FHIRString>]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// MIME type to send, or omit for no payload
	public var payload: FHIRPrimitive<FHIRString>?
	
	/// The type of channel to send notifications on.
	public var type: FHIRPrimitive<SubscriptionChannelType>
	
	/// Designated initializer
	public init(
		endpoint: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		header: [FHIRPrimitive<FHIRString>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		payload: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<SubscriptionChannelType>
	) {
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.header = header
		self.id = id
		self.modifierExtension = modifierExtension
		self.payload = payload
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint; case _endpoint
		case `extension` = "extension"
		case header; case _header
		case id; case _id
		case modifierExtension
		case payload; case _payload
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .endpoint, auxiliaryKey: ._endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.header = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .header, auxiliaryKey: ._header)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.payload = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .payload, auxiliaryKey: ._payload)
		self.type = try FHIRPrimitive<SubscriptionChannelType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try endpoint?.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try header?.encode(on: &_container, forKey: .header, auxiliaryKey: ._header)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try payload?.encode(on: &_container, forKey: .payload, auxiliaryKey: ._payload)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
