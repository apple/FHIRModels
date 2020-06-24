//
//  DataElement.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DataElement)
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
 Resource data element.
 
 The formal description of a single piece of information that can be gathered and reported.
 */
open class DataElement: DomainResource {
	
	override open class var resourceType: ResourceType { return .dataElement }
	
	/// Globally unique logical id for data element
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Logical id to reference this data element
	public var identifier: [Identifier]?
	
	/// Logical id for this version of the data element
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Descriptive label for this element definition
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The status of the data element.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [DataElementContact]?
	
	/// Date for this version of the data element
	public var date: FHIRPrimitive<DateTime>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Identifies how precise the data element is in its definition.
	/// Restricted to: ['comparable', 'flexible']
	public var stringency: FHIRPrimitive<DataElementStringency>?
	
	/// External specification mapped to
	public var mapping: [DataElementMapping]?
	
	/// Definition of element
	public var element: [ElementDefinition]
	
	/// Designated initializer taking all required properties
	public init(element: [ElementDefinition], status: FHIRPrimitive<ConformanceResourceStatus>) {
		self.element = element
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contact: [DataElementContact]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							element: [ElementDefinition],
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							mapping: [DataElementMapping]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<ConformanceResourceStatus>,
							stringency: FHIRPrimitive<DataElementStringency>? = nil,
							text: Narrative? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [CodeableConcept]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(element: element, status: status)
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.mapping = mapping
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.stringency = stringency
		self.text = text
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case date; case _date
		case element
		case experimental; case _experimental
		case identifier
		case mapping
		case name; case _name
		case publisher; case _publisher
		case status; case _status
		case stringency; case _stringency
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [DataElementContact](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.element = try [ElementDefinition](from: _container, forKey: .element)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.mapping = try [DataElementMapping](from: _container, forKeyIfPresent: .mapping)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.stringency = try FHIRPrimitive<DataElementStringency>(from: _container, forKeyIfPresent: .stringency, auxiliaryKey: ._stringency)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try element.encode(on: &_container, forKey: .element)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try mapping?.encode(on: &_container, forKey: .mapping)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try stringency?.encode(on: &_container, forKey: .stringency, auxiliaryKey: ._stringency)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataElement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && element == _other.element
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && mapping == _other.mapping
		    && name == _other.name
		    && publisher == _other.publisher
		    && status == _other.status
		    && stringency == _other.stringency
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(element)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(mapping)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(status)
		hasher.combine(stringency)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class DataElementContact: BackboneElement {
	
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
		guard let _other = _other as? DataElementContact else {
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
 External specification mapped to.
 
 Identifies a specification (other than a terminology) that the elements which make up the DataElement have some
 correspondence with.
 */
open class DataElementMapping: BackboneElement {
	
	/// Internal id when this mapping is used
	public var identity: FHIRPrimitive<FHIRString>
	
	/// Identifies what this mapping refers to
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Names what this mapping refers to
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Versions, Issues, Scope limitations etc.
	public var comments: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(identity: FHIRPrimitive<FHIRString>) {
		self.identity = identity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							comments: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identity: FHIRPrimitive<FHIRString>,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							uri: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init(identity: identity)
		self.comments = comments
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comments; case _comments
		case identity; case _identity
		case name; case _name
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comments = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comments, auxiliaryKey: ._comments)
		self.identity = try FHIRPrimitive<FHIRString>(from: _container, forKey: .identity, auxiliaryKey: ._identity)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comments?.encode(on: &_container, forKey: .comments, auxiliaryKey: ._comments)
		try identity.encode(on: &_container, forKey: .identity, auxiliaryKey: ._identity)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DataElementMapping else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comments == _other.comments
		    && identity == _other.identity
		    && name == _other.name
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comments)
		hasher.combine(identity)
		hasher.combine(name)
		hasher.combine(uri)
	}
}
