//
//  NamingSystem.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/NamingSystem)
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
	
	/// Human-readable label
	public var name: FHIRPrimitive<FHIRString>
	
	/// Indicates whether the naming system is "ready for use" or not.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// Indicates the purpose for the naming system - what kinds of things does it make unique?
	/// Restricted to: ['codesystem', 'identifier', 'root']
	public var kind: FHIRPrimitive<NamingSystemType>
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [NamingSystemContact]?
	
	/// Who maintains system namespace?
	public var responsible: FHIRPrimitive<FHIRString>?
	
	/// Publication Date(/time)
	public var date: FHIRPrimitive<DateTime>
	
	/// e.g. driver,  provider,  patient, bank etc.
	public var type: CodeableConcept?
	
	/// What does naming system identify?
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// How/where is it used
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// Unique identifiers used for system
	public var uniqueId: [NamingSystemUniqueId]
	
	/// Use this instead
	public var replacedBy: Reference?
	
	/// Designated initializer taking all required properties
	public init(date: FHIRPrimitive<DateTime>, kind: FHIRPrimitive<NamingSystemType>, name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<ConformanceResourceStatus>, uniqueId: [NamingSystemUniqueId]) {
		self.date = date
		self.kind = kind
		self.name = name
		self.status = status
		self.uniqueId = uniqueId
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [NamingSystemContact]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							kind: FHIRPrimitive<NamingSystemType>,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							replacedBy: Reference? = nil,
							responsible: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<ConformanceResourceStatus>,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							uniqueId: [NamingSystemUniqueId],
							usage: FHIRPrimitive<FHIRString>? = nil,
							useContext: [CodeableConcept]? = nil)
	{
		self.init(date: date, kind: kind, name: name, status: status, uniqueId: uniqueId)
		self.contact = contact
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
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
		self.contact = try [NamingSystemContact](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKey: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.kind = try FHIRPrimitive<NamingSystemType>(from: _container, forKey: .kind, auxiliaryKey: ._kind)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.replacedBy = try Reference(from: _container, forKeyIfPresent: .replacedBy)
		self.responsible = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responsible, auxiliaryKey: ._responsible)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.uniqueId = try [NamingSystemUniqueId](from: _container, forKey: .uniqueId)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try date.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
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
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class NamingSystemContact: BackboneElement {
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							telecom: [ContactPoint]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NamingSystemContact else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(telecom)
	}
}

/**
 Unique identifiers used for system.
 
 Indicates how the system may be identified when referenced in electronic exchange.
 */
open class NamingSystemUniqueId: BackboneElement {
	
	/// Identifies the unique identifier scheme used for this particular identifier.
	/// Restricted to: ['oid', 'uuid', 'uri', 'other']
	public var type: FHIRPrimitive<NamingSystemIdentifierType>
	
	/// The unique identifier
	public var value: FHIRPrimitive<FHIRString>
	
	/// Is this the id that should be used for this type
	public var preferred: FHIRPrimitive<FHIRBool>?
	
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
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							preferred: FHIRPrimitive<FHIRBool>? = nil,
							type: FHIRPrimitive<NamingSystemIdentifierType>,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(type: type, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.preferred = preferred
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case period
		case preferred; case _preferred
		case type; case _type
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
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
		return period == _other.period
		    && preferred == _other.preferred
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(period)
		hasher.combine(preferred)
		hasher.combine(type)
		hasher.combine(value)
	}
}
