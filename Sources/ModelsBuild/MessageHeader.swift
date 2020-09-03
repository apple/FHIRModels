//
//  MessageHeader.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MessageHeader)
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
 A resource that describes a message that is exchanged between systems.
 
 The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the
 subject of the action as well as other information related to the action are typically transmitted in a bundle in which
 the MessageHeader resource instance is the first resource in the bundle.
 */
open class MessageHeader: DomainResource {
	
	override open class var resourceType: ResourceType { return .messageHeader }
	
	/// All possible types for "event[x]"
	public enum EventX: Hashable {
		case coding(Coding)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Code for the event this message represents or link to event definition
	/// One of `event[x]`
	public var event: EventX
	
	/// Message destination application(s)
	public var destination: [MessageHeaderDestination]?
	
	/// Real world sender of the message
	public var sender: Reference?
	
	/// The source of the data entry
	public var enterer: Reference?
	
	/// The source of the decision
	public var author: Reference?
	
	/// Message source application
	public var source: MessageHeaderSource
	
	/// Final responsibility for event
	public var responsible: Reference?
	
	/// Cause of event
	public var reason: CodeableConcept?
	
	/// If this is a reply to prior message
	public var response: MessageHeaderResponse?
	
	/// The actual content of the message
	public var focus: [Reference]?
	
	/// Link to the definition for this message
	public var definition: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	public init(event: EventX, source: MessageHeaderSource) {
		self.event = event
		self.source = source
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							author: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							definition: FHIRPrimitive<Canonical>? = nil,
							destination: [MessageHeaderDestination]? = nil,
							enterer: Reference? = nil,
							event: EventX,
							`extension`: [Extension]? = nil,
							focus: [Reference]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							reason: CodeableConcept? = nil,
							response: MessageHeaderResponse? = nil,
							responsible: Reference? = nil,
							sender: Reference? = nil,
							source: MessageHeaderSource,
							text: Narrative? = nil)
	{
		self.init(event: event, source: source)
		self.author = author
		self.contained = contained
		self.definition = definition
		self.destination = destination
		self.enterer = enterer
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.response = response
		self.responsible = responsible
		self.sender = sender
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case definition; case _definition
		case destination
		case enterer
		case eventCoding
		case eventUri; case _eventUri
		case focus
		case reason
		case response
		case responsible
		case sender
		case source
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.eventCoding) || _container.contains(CodingKeys.eventUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.eventCoding, CodingKeys.eventUri], debugDescription: "Must have at least one value for \"event\" but have none"))
		}
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.definition = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .definition, auxiliaryKey: ._definition)
		self.destination = try [MessageHeaderDestination](from: _container, forKeyIfPresent: .destination)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		var _t_event: EventX? = nil
		if let eventCoding = try Coding(from: _container, forKeyIfPresent: .eventCoding) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventCoding, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .coding(eventCoding)
		}
		if let eventUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .eventUri, auxiliaryKey: ._eventUri) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventUri, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .uri(eventUri)
		}
		self.event = _t_event!
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.response = try MessageHeaderResponse(from: _container, forKeyIfPresent: .response)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.sender = try Reference(from: _container, forKeyIfPresent: .sender)
		self.source = try MessageHeaderSource(from: _container, forKey: .source)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try definition?.encode(on: &_container, forKey: .definition, auxiliaryKey: ._definition)
		try destination?.encode(on: &_container, forKey: .destination)
		try enterer?.encode(on: &_container, forKey: .enterer)
		
			switch event {
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .eventCoding)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .eventUri, auxiliaryKey: ._eventUri)
			}
		
		try focus?.encode(on: &_container, forKey: .focus)
		try reason?.encode(on: &_container, forKey: .reason)
		try response?.encode(on: &_container, forKey: .response)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try sender?.encode(on: &_container, forKey: .sender)
		try source.encode(on: &_container, forKey: .source)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageHeader else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && definition == _other.definition
		    && destination == _other.destination
		    && enterer == _other.enterer
		    && event == _other.event
		    && focus == _other.focus
		    && reason == _other.reason
		    && response == _other.response
		    && responsible == _other.responsible
		    && sender == _other.sender
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(definition)
		hasher.combine(destination)
		hasher.combine(enterer)
		hasher.combine(event)
		hasher.combine(focus)
		hasher.combine(reason)
		hasher.combine(response)
		hasher.combine(responsible)
		hasher.combine(sender)
		hasher.combine(source)
	}
}

/**
 Message destination application(s).
 
 The destination application which the message is intended for.
 */
open class MessageHeaderDestination: BackboneElement {
	
	/// Name of system
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Particular delivery destination within the destination
	public var target: Reference?
	
	/// Actual destination address or id
	public var endpoint: FHIRPrimitive<FHIRURI>
	
	/// Intended "real-world" recipient for the data
	public var receiver: Reference?
	
	/// Designated initializer taking all required properties
	public init(endpoint: FHIRPrimitive<FHIRURI>) {
		self.endpoint = endpoint
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							endpoint: FHIRPrimitive<FHIRURI>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							receiver: Reference? = nil,
							target: Reference? = nil)
	{
		self.init(endpoint: endpoint)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.receiver = receiver
		self.target = target
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endpoint; case _endpoint
		case name; case _name
		case receiver
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.receiver = try Reference(from: _container, forKeyIfPresent: .receiver)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endpoint.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageHeaderDestination else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endpoint == _other.endpoint
		    && name == _other.name
		    && receiver == _other.receiver
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endpoint)
		hasher.combine(name)
		hasher.combine(receiver)
		hasher.combine(target)
	}
}

/**
 If this is a reply to prior message.
 
 Information about the message that this message is a response to.  Only present if this message is a response.
 */
open class MessageHeaderResponse: BackboneElement {
	
	/// Id of original message
	public var identifier: FHIRPrimitive<FHIRString>
	
	/// Code that identifies the type of response to the message - whether it was successful or not, and whether it
	/// should be resent or not.
	public var code: FHIRPrimitive<ResponseType>
	
	/// Specific list of hints/warnings/errors
	public var details: Reference?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<ResponseType>, identifier: FHIRPrimitive<FHIRString>) {
		self.code = code
		self.identifier = identifier
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<ResponseType>,
							details: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: FHIRPrimitive<FHIRString>,
							modifierExtension: [Extension]? = nil)
	{
		self.init(code: code, identifier: identifier)
		self.details = details
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case details
		case identifier; case _identifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<ResponseType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.details = try Reference(from: _container, forKeyIfPresent: .details)
		self.identifier = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identifier, auxiliaryKey: ._identifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try details?.encode(on: &_container, forKey: .details)
		try identifier.encode(on: &_container, forKey: .identifier, auxiliaryKey: ._identifier)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageHeaderResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && details == _other.details
		    && identifier == _other.identifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(details)
		hasher.combine(identifier)
	}
}

/**
 Message source application.
 
 The source application from which this message originated.
 */
open class MessageHeaderSource: BackboneElement {
	
	/// Name of system
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name of software running the system
	public var software: FHIRPrimitive<FHIRString>?
	
	/// Version of software running
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Human contact for problems
	public var contact: ContactPoint?
	
	/// Actual message source address or id
	public var endpoint: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(endpoint: FHIRPrimitive<FHIRURI>) {
		self.endpoint = endpoint
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: ContactPoint? = nil,
							endpoint: FHIRPrimitive<FHIRURI>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							software: FHIRPrimitive<FHIRString>? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(endpoint: endpoint)
		self.contact = contact
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
		case name; case _name
		case software; case _software
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try ContactPoint(from: _container, forKeyIfPresent: .contact)
		self.endpoint = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.software = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .software, auxiliaryKey: ._software)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try endpoint.encode(on: &_container, forKey: .endpoint, auxiliaryKey: ._endpoint)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try software?.encode(on: &_container, forKey: .software, auxiliaryKey: ._software)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageHeaderSource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && endpoint == _other.endpoint
		    && name == _other.name
		    && software == _other.software
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(endpoint)
		hasher.combine(name)
		hasher.combine(software)
		hasher.combine(version)
	}
}
