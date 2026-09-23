//
//  NamingSystem.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/NamingSystem)
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
 System of unique identification.
 
 A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
 devices, etc.  Represents a "System" used within the Identifier and Coding data types.
 */
public struct NamingSystem: DomainResource {
	
	public static let resourceType: ResourceType = .namingSystem
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Natural language description of the naming system
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for naming system (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Indicates the purpose for the naming system - what kinds of things does it make unique?
	public var kind: FHIRPrimitive<NamingSystemType>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this naming system (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Use this instead
	public var replacedBy: Reference?
	
	/// Who maintains system namespace?
	public var responsible: FHIRPrimitive<FHIRString>?
	
	/// The status of this naming system. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// e.g. driver,  provider,  patient, bank etc.
	public var type: CodeableConcept?
	
	/// Unique identifiers used for system
	public var uniqueId: [NamingSystemUniqueId]
	
	/// How/where is it used
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Designated initializer
	public init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		kind: FHIRPrimitive<NamingSystemType>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		replacedBy: Reference? = nil,
		responsible: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		uniqueId: [NamingSystemUniqueId],
		usage: FHIRPrimitive<FHIRString>? = nil,
		useContext: [UsageContext]? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.replacedBy = replacedBy
		self.responsible = responsible
		self.status = status
		self.text = text
		self.type = type
		self.uniqueId = uniqueId
		self.usage = usage
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case jurisdiction
		case kind; case _kind
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case replacedBy
		case responsible; case _responsible
		case status; case _status
		case text
		case type
		case uniqueId
		case usage; case _usage
		case useContext
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<NamingSystemType>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.replacedBy = try Reference(from: _container, forKeyIfPresent: .replacedBy)
		self.responsible = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.uniqueId = try [NamingSystemUniqueId](from: _container, forKey: .uniqueId)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try replacedBy?.encode(on: &_container, forKey: .replacedBy)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try uniqueId.encode(on: &_container, forKey: .uniqueId)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
	}
}

/**
 Unique identifiers used for system.
 
 Indicates how the system may be identified when referenced in electronic exchange.
 */
public struct NamingSystemUniqueId: BackboneElement {
	
	/// Notes about identifier usage
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// When is identifier valid?
	public var period: Period?
	
	/// Is this the id that should be used for this type
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Identifies the unique identifier scheme used for this particular identifier.
	public var type: FHIRPrimitive<NamingSystemIdentifierType>
	
	/// The unique identifier
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		preferred: FHIRPrimitive<FHIRBool>? = nil,
		type: FHIRPrimitive<NamingSystemIdentifierType>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.preferred = preferred
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case preferred; case _preferred
		case type; case _type
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.type = try FHIRPrimitive<NamingSystemIdentifierType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}
