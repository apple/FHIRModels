//
//  NamingSystem.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/NamingSystem)
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
 System of unique identification.
 
 A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
 devices, etc.  Represents a "System" used within the Identifier and Coding data types.
 */
open class NamingSystem: DomainResource {
	
	override open class var resourceType: ResourceType { return .namingSystem }
	
	/// Name for this naming system (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of this naming system. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Indicates the purpose for the naming system - what kinds of things does it make unique?
	public var kind: FHIRPrimitive<NamingSystemType>
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Who maintains system namespace?
	public var responsible: FHIRPrimitive<FHIRString>?
	
	/// e.g. driver,  provider,  patient, bank etc.
	public var type: CodeableConcept?
	
	/// Natural language description of the naming system
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for naming system (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// How/where is it used
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Unique identifiers used for system
	public var uniqueId: [NamingSystemUniqueId]
	
	/// Use this instead
	public var replacedBy: Reference?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, kind: FHIRPrimitive<NamingSystemType>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>, uniqueId: [NamingSystemUniqueId]) {
		self.date = date
		self.kind = kind
		self.name = name
		self.status = status
		self.uniqueId = uniqueId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							useContext: [UsageContext]? = nil)
	{
		self.init(date: date, kind: kind, name: name, status: status, uniqueId: uniqueId)
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.replacedBy = replacedBy
		self.responsible = responsible
		self.text = text
		self.type = type
		self.usage = usage
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case jurisdiction
		case kind; case _kind
		case name; case _name
		case publisher; case _publisher
		case replacedBy
		case responsible; case _responsible
		case status; case _status
		case type
		case uniqueId
		case usage; case _usage
		case useContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<NamingSystemType>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.replacedBy = try Reference(from: _container, forKeyIfPresent: .replacedBy)
		self.responsible = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.uniqueId = try [NamingSystemUniqueId](from: _container, forKey: .uniqueId)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try replacedBy?.encode(on: &_container, forKey: .replacedBy)
		try responsible?.encode(on: &_container, forKey: .responsible, auxiliaryKey: ._responsible)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type?.encode(on: &_container, forKey: .type)
		try uniqueId.encode(on: &_container, forKey: .uniqueId)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NamingSystem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && name == _other.name
		    && publisher == _other.publisher
		    && replacedBy == _other.replacedBy
		    && responsible == _other.responsible
		    && status == _other.status
		    && type == _other.type
		    && uniqueId == _other.uniqueId
		    && usage == _other.usage
		    && useContext == _other.useContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(replacedBy)
		hasher.combine(responsible)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(uniqueId)
		hasher.combine(usage)
		hasher.combine(useContext)
	}
}

/**
 Unique identifiers used for system.
 
 Indicates how the system may be identified when referenced in electronic exchange.
 */
open class NamingSystemUniqueId: BackboneElement {
	
	/// Identifies the unique identifier scheme used for this particular identifier.
	public var type: FHIRPrimitive<NamingSystemIdentifierType>
	
	/// The unique identifier
	public var value: FHIRPrimitive<FHIRString>
	
	/// Is this the id that should be used for this type
	public var preferred: FHIRPrimitive<FHIRBool>?
	
	/// Notes about identifier usage
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// When is identifier valid?
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<NamingSystemIdentifierType>, value: FHIRPrimitive<FHIRString>) {
		self.type = type
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comment: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							preferred: FHIRPrimitive<FHIRBool>? = nil,
							type: FHIRPrimitive<NamingSystemIdentifierType>,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(type: type, value: value)
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.preferred = preferred
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case period
		case preferred; case _preferred
		case type; case _type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.preferred = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .preferred, auxiliaryKey: ._preferred)
		self.type = try FHIRPrimitive<NamingSystemIdentifierType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try period?.encode(on: &_container, forKey: .period)
		try preferred?.encode(on: &_container, forKey: .preferred, auxiliaryKey: ._preferred)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NamingSystemUniqueId else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && period == _other.period
		    && preferred == _other.preferred
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(period)
		hasher.combine(preferred)
		hasher.combine(type)
		hasher.combine(value)
	}
}
