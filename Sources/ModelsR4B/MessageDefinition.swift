//
//  MessageDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/MessageDefinition)
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
 A resource that defines a type of message that can be exchanged between systems.
 
 Defines the characteristics of a message that can be shared between systems, including the type of event that initiates
 the message, the content to be transmitted and what response(s), if any, are permitted.
 */
public struct MessageDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .messageDefinition
	
	/// All possible types for "event[x]"
	public enum EventX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Responses to this message
	public var allowedResponse: [MessageDefinitionAllowedResponse]?
	
	/// Definition this one is based on
	public var base: FHIRPrimitive<Canonical>?
	
	/// The impact of the content of the message.
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Natural language description of the message definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Event code  or link to the EventDefinition
	/// One of `event[x]`
	public var event: EventX
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Resource(s) that are the subject of the event
	public var focus: [MessageDefinitionFocus]?
	
	/// Canonical reference to a GraphDefinition
	public var graph: [FHIRPrimitive<Canonical>]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Primary key for the message definition on a given server
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for message definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this message definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Protocol/workflow this is part of
	public var parent: [FHIRPrimitive<Canonical>]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this message definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Takes the place of
	public var replaces: [FHIRPrimitive<Canonical>]?
	
	/// Declare at a message definition level whether a response is required or only upon error or success, or never.
	public var responseRequired: FHIRPrimitive<MessageheaderResponseRequest>?
	
	/// The status of this message definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this message definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for a given MessageDefinition
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Business version of the message definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		allowedResponse: [MessageDefinitionAllowedResponse]? = nil,
		base: FHIRPrimitive<Canonical>? = nil,
		category: FHIRPrimitive<MessageSignificanceCategory>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		event: EventX,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		focus: [MessageDefinitionFocus]? = nil,
		graph: [FHIRPrimitive<Canonical>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		parent: [FHIRPrimitive<Canonical>]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		replaces: [FHIRPrimitive<Canonical>]? = nil,
		responseRequired: FHIRPrimitive<MessageheaderResponseRequest>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.allowedResponse = allowedResponse
		self.base = base
		self.category = category
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.event = event
		self.experimental = experimental
		self.`extension` = `extension`
		self.focus = focus
		self.graph = graph
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.parent = parent
		self.publisher = publisher
		self.purpose = purpose
		self.replaces = replaces
		self.responseRequired = responseRequired
		self.status = status
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case allowedResponse
		case base; case _base
		case category; case _category
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case eventCoding
		case eventUri; case _eventUri
		case experimental; case _experimental
		case `extension` = "extension"
		case focus
		case graph; case _graph
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case parent; case _parent
		case publisher; case _publisher
		case purpose; case _purpose
		case replaces; case _replaces
		case responseRequired; case _responseRequired
		case status; case _status
		case text
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allowedResponse = try [MessageDefinitionAllowedResponse](from: _container, forKeyIfPresent: .allowedResponse)
		self.base = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.category = try FHIRPrimitive<MessageSignificanceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.event = try Self._decodeEvent(from: _container)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [MessageDefinitionFocus](from: _container, forKeyIfPresent: .focus)
		self.graph = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .graph, auxiliaryKey: ._graph)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parent = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .parent, auxiliaryKey: ._parent)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.replaces = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .replaces, auxiliaryKey: ._replaces)
		self.responseRequired = try FHIRPrimitive<MessageheaderResponseRequest>(from: _container, forKeyIfPresent: .responseRequired, auxiliaryKey: ._responseRequired)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try allowedResponse?.encode(on: &_container, forKey: .allowedResponse)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		
		switch event {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .eventCoding)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .eventUri, auxiliaryKey: ._eventUri)
		}
		
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try graph?.encode(on: &_container, forKey: .graph, auxiliaryKey: ._graph)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parent?.encode(on: &_container, forKey: .parent, auxiliaryKey: ._parent)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try replaces?.encode(on: &_container, forKey: .replaces, auxiliaryKey: ._replaces)
		try responseRequired?.encode(on: &_container, forKey: .responseRequired, auxiliaryKey: ._responseRequired)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEvent(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EventX {
		var _t_event: EventX? = nil
		if let eventCoding = try Coding(from: _container, forKeyIfPresent: .eventCoding) {
			_t_event = .coding(eventCoding)
		}
		if let eventUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .eventUri, auxiliaryKey: ._eventUri) {
			if _t_event != nil {
				throw DecodingError.dataCorruptedError(forKey: .eventUri, in: _container, debugDescription: "More than one value provided for \"event\"")
			}
			_t_event = .uri(eventUri)
		}
		guard let _t_event else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.eventUri)
			throw DecodingError.valueNotFound(EventX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"event\" but have none"))
		}
		return _t_event
	}
}

/**
 Responses to this message.
 
 Indicates what types of messages may be sent as an application-level response to this message.
 */
public struct MessageDefinitionAllowedResponse: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Reference to allowed message definition response
	public var message: FHIRPrimitive<Canonical>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When should this response be used
	public var situation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		message: FHIRPrimitive<Canonical>,
		modifierExtension: [Extension]? = nil,
		situation: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.message = message
		self.modifierExtension = modifierExtension
		self.situation = situation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case message; case _message
		case modifierExtension
		case situation; case _situation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.message = try FHIRPrimitive<Canonical>(from: _container, forKey: .message, auxiliaryKey: ._message)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.situation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .situation, auxiliaryKey: ._situation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try message.encode(on: &_container, forKey: .message, auxiliaryKey: ._message)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try situation?.encode(on: &_container, forKey: .situation, auxiliaryKey: ._situation)
	}
}

/**
 Resource(s) that are the subject of the event.
 
 Identifies the resource (or resources) that are being addressed by the event.  For example, the Encounter for an admit
 message or two Account records for a merge.
 */
public struct MessageDefinitionFocus: BackboneElement {
	
	/// The kind of resource that must be the focus for this message.
	public var code: FHIRPrimitive<ResourceType>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum number of focuses of this type
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Minimum number of focuses of this type
	public var min: FHIRPrimitive<FHIRUnsignedInteger>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Profile that must be adhered to by focus
	public var profile: FHIRPrimitive<Canonical>?
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<ResourceType>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		max: FHIRPrimitive<FHIRString>? = nil,
		min: FHIRPrimitive<FHIRUnsignedInteger>,
		modifierExtension: [Extension]? = nil,
		profile: FHIRPrimitive<Canonical>? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.max = max
		self.min = min
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case `extension` = "extension"
		case id; case _id
		case max; case _max
		case min; case _min
		case modifierExtension
		case profile; case _profile
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<ResourceType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKey: .min, auxiliaryKey: ._min)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
	}
}
