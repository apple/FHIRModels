//
//  MessageDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/MessageDefinition)
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
 A resource that defines a type of message that can be exchanged between systems.
 
 Defines the characteristics of a message that can be shared between systems, including the type of event that initiates
 the message, the content to be transmitted and what response(s), if any, are permitted.
 */
open class MessageDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .messageDefinition }
	
	/// Logical URI to reference this message definition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the message definition
	public var identifier: Identifier?
	
	/// Business version of the message definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this message definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this message definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this message definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the message definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for message definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this message definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Definition this one is based on
	public var base: Reference?
	
	/// Protocol/workflow this is part of
	public var parent: [Reference]?
	
	/// Takes the place of
	public var replaces: [Reference]?
	
	/// Event type
	public var event: Coding
	
	/// The impact of the content of the message.
	public var category: FHIRPrimitive<MessageSignificanceCategory>?
	
	/// Resource(s) that are the subject of the event
	public var focus: [MessageDefinitionFocus]?
	
	/// Is a response required?
	public var responseRequired: FHIRPrimitive<FHIRBool>?
	
	/// Responses to this message
	public var allowedResponse: [MessageDefinitionAllowedResponse]?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, event: Coding, status: FHIRPrimitive<PublicationStatus>) {
		self.date = date
		self.event = event
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allowedResponse: [MessageDefinitionAllowedResponse]? = nil,
							base: Reference? = nil,
							category: FHIRPrimitive<MessageSignificanceCategory>? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							event: Coding,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							focus: [MessageDefinitionFocus]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							parent: [Reference]? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							replaces: [Reference]? = nil,
							responseRequired: FHIRPrimitive<FHIRBool>? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(date: date, event: event, status: status)
		self.allowedResponse = allowedResponse
		self.base = base
		self.category = category
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.focus = focus
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
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowedResponse
		case base
		case category; case _category
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case event
		case experimental; case _experimental
		case focus
		case identifier
		case jurisdiction
		case name; case _name
		case parent
		case publisher; case _publisher
		case purpose; case _purpose
		case replaces
		case responseRequired; case _responseRequired
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allowedResponse = try [MessageDefinitionAllowedResponse](from: _container, forKeyIfPresent: .allowedResponse)
		self.base = try Reference(from: _container, forKeyIfPresent: .base)
		self.category = try FHIRPrimitive<MessageSignificanceCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.event = try Coding(from: _container, forKey: .event)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.focus = try [MessageDefinitionFocus](from: _container, forKeyIfPresent: .focus)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.responseRequired = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .responseRequired, auxiliaryKey: ._responseRequired)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allowedResponse?.encode(on: &_container, forKey: .allowedResponse)
		try base?.encode(on: &_container, forKey: .base)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try event.encode(on: &_container, forKey: .event)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try focus?.encode(on: &_container, forKey: .focus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parent?.encode(on: &_container, forKey: .parent)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try responseRequired?.encode(on: &_container, forKey: .responseRequired, auxiliaryKey: ._responseRequired)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allowedResponse == _other.allowedResponse
		    && base == _other.base
		    && category == _other.category
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && event == _other.event
		    && experimental == _other.experimental
		    && focus == _other.focus
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && parent == _other.parent
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && replaces == _other.replaces
		    && responseRequired == _other.responseRequired
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allowedResponse)
		hasher.combine(base)
		hasher.combine(category)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(event)
		hasher.combine(experimental)
		hasher.combine(focus)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(parent)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(replaces)
		hasher.combine(responseRequired)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Responses to this message.
 
 Indicates what types of messages may be sent as an application-level response to this message.
 */
open class MessageDefinitionAllowedResponse: BackboneElement {
	
	/// Reference to allowed message definition response
	public var message: Reference
	
	/// When should this response be used
	public var situation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(message: Reference) {
		self.message = message
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							message: Reference,
							modifierExtension: [Extension]? = nil,
							situation: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(message: message)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.situation = situation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case message
		case situation; case _situation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.message = try Reference(from: _container, forKey: .message)
		self.situation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .situation, auxiliaryKey: ._situation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try message.encode(on: &_container, forKey: .message)
		try situation?.encode(on: &_container, forKey: .situation, auxiliaryKey: ._situation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageDefinitionAllowedResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return message == _other.message
		    && situation == _other.situation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(message)
		hasher.combine(situation)
	}
}

/**
 Resource(s) that are the subject of the event.
 
 Identifies the resource (or resources) that are being addressed by the event.  For example, the Encounter for an admit
 message or two Account records for a merge.
 */
open class MessageDefinitionFocus: BackboneElement {
	
	/// The kind of resource that must be the focus for this message.
	public var code: FHIRPrimitive<ResourceType>
	
	/// Profile that must be adhered to by focus
	public var profile: Reference?
	
	/// Minimum number of focuses of this type
	public var min: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Maximum number of focuses of this type
	public var max: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<ResourceType>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<ResourceType>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							max: FHIRPrimitive<FHIRString>? = nil,
							min: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							modifierExtension: [Extension]? = nil,
							profile: Reference? = nil)
	{
		self.init(code: code)
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
		case max; case _max
		case min; case _min
		case profile
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<ResourceType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.max = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .max, auxiliaryKey: ._max)
		self.min = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .min, auxiliaryKey: ._min)
		self.profile = try Reference(from: _container, forKeyIfPresent: .profile)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try max?.encode(on: &_container, forKey: .max, auxiliaryKey: ._max)
		try min?.encode(on: &_container, forKey: .min, auxiliaryKey: ._min)
		try profile?.encode(on: &_container, forKey: .profile)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MessageDefinitionFocus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && max == _other.max
		    && min == _other.min
		    && profile == _other.profile
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(max)
		hasher.combine(min)
		hasher.combine(profile)
	}
}
