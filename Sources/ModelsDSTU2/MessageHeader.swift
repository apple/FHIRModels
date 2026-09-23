//
//  MessageHeader.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MessageHeader)
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
 A resource that describes a message that is exchanged between systems.
 
 The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the
 subject of the action as well as other information related to the action are typically transmitted in a bundle in which
 the MessageHeader resource instance is the first resource in the bundle.
 */
public struct MessageHeader: DomainResource {
	
	public static let resourceType: ResourceType = .messageHeader
	
	/// The source of the decision
	public var author: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The actual content of the message
	public var data: [Reference]?
	
	/// Message Destination Application(s)
	public var destination: [MessageHeaderDestination]?
	
	/// The source of the data entry
	public var enterer: Reference?
	
	/// Code for the event this message represents
	public var event: Coding
	
	/// Additional Content defined by implementations
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
	
	/// Cause of event
	public var reason: CodeableConcept?
	
	/// Intended "real-world" recipient for the data
	public var receiver: Reference?
	
	/// If this is a reply to prior message
	public var response: MessageHeaderResponse?
	
	/// Final responsibility for event
	public var responsible: Reference?
	
	/// Message Source Application
	public var source: MessageHeaderSource
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Time that the message was sent
	public var timestamp: FHIRPrimitive<Instant>
	
	/// Designated initializer
	public init(
		author: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		data: [Reference]? = nil,
		destination: [MessageHeaderDestination]? = nil,
		enterer: Reference? = nil,
		event: Coding,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		receiver: Reference? = nil,
		response: MessageHeaderResponse? = nil,
		responsible: Reference? = nil,
		source: MessageHeaderSource,
		text: Narrative? = nil,
		timestamp: FHIRPrimitive<Instant>
	) {
		self.author = author
		self.contained = contained
		self.data = data
		self.destination = destination
		self.enterer = enterer
		self.event = event
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.receiver = receiver
		self.response = response
		self.responsible = responsible
		self.source = source
		self.text = text
		self.timestamp = timestamp
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case contained
		case data
		case destination
		case enterer
		case event
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case reason
		case receiver
		case response
		case responsible
		case source
		case text
		case timestamp; case _timestamp
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.data = try [Reference](from: _container, forKeyIfPresent: .data)
		self.destination = try [MessageHeaderDestination](from: _container, forKeyIfPresent: .destination)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.event = try Coding(from: _container, forKey: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.receiver = try Reference(from: _container, forKeyIfPresent: .receiver)
		self.response = try MessageHeaderResponse(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.source = try MessageHeaderSource(from: _container, forKey: .source)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKey: .timestamp, auxiliaryKey: ._timestamp)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try contained?.encode(on: &_container, forKey: .contained)
		try data?.encode(on: &_container, forKey: .data)
		try destination?.encode(on: &_container, forKey: .destination)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try event.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try source.encode(on: &_container, forKey: .source)
		try text?.encode(on: &_container, forKey: .text)
		try timestamp.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
	}
}

/**
 Message Destination Application(s).
 
 The destination application which the message is intended for.
 */
public struct MessageHeaderDestination: BackboneElement {
	
	/// Actual destination address or id
	public var endpoint: FHIRPrimitive<FHIRURI>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of system
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Particular delivery destination within the destination
	public var target: Reference?
	
	/// Designated initializer
	public init(
		endpoint: FHIRPrimitive<FHIRURI>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		target: Reference? = nil
	) {
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint; case _endpoint
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case target
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try endpoint.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try target?.encode(on: &_container, forKey: .target)
	}
}

/**
 If this is a reply to prior message.
 
 Information about the message that this message is a response to.  Only present if this message is a response.
 */
public struct MessageHeaderResponse: BackboneElement {
	
	/// Code that identifies the type of response to the message - whether it was successful or not, and whether it
	/// should be resent or not.
	/// Restricted to: ['ok', 'transient-error', 'fatal-error']
	public var code: FHIRPrimitive<ResponseType>
	
	/// Specific list of hints/warnings/errors
	public var details: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Id of original message
	public var identifier: FHIRPrimitive<FHIRString>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<ResponseType>,
		details: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.details = details
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case details
		case `extension` = "extension"
		case id; case _id
		case identifier; case _identifier
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<ResponseType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.details = try Reference(from: _container, forKeyIfPresent: .details)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identifier, auxiliaryKey: ._identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try details?.encode(on: &_container, forKey: .details)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Message Source Application.
 
 The source application from which this message originated.
 */
public struct MessageHeaderSource: BackboneElement {
	
	/// Human contact for problems
	public var contact: ContactPoint?
	
	/// Actual message source address or id
	public var endpoint: FHIRPrimitive<FHIRURI>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of system
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of software running the system
	public var software: FHIRPrimitive<FHIRString>?
	
	/// Version of software running
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: ContactPoint? = nil,
		endpoint: FHIRPrimitive<FHIRURI>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		software: FHIRPrimitive<FHIRString>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.software = software
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case endpoint; case _endpoint
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case software; case _software
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try ContactPoint(from: _container, forKeyIfPresent: .contact)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.software = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .software, auxiliaryKey: ._software)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try endpoint.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try software?.encode(on: &_container, forKey: .software, auxiliaryKey: ._software)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}
