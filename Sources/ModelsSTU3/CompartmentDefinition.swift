//
//  CompartmentDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/CompartmentDefinition)
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
 Compartment Definition for a resource.
 
 A compartment definition that defines how resources are accessed on a server.
 */
open class CompartmentDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .compartmentDefinition }
	
	/// Logical URI to reference this compartment definition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Name for this compartment definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this compartment definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this compartment definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the compartment definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Why this compartment definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for compartment definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Which compartment this definition describes.
	public var code: FHIRPrimitive<CompartmentType>
	
	/// Whether the search syntax is supported
	public var search: FHIRPrimitive<FHIRBool>
	
	/// How a resource is related to the compartment
	public var resource: [CompartmentDefinitionResource]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<CompartmentType>, name: FHIRPrimitive<FHIRString>, search: FHIRPrimitive<FHIRBool>, status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.code = code
		self.name = name
		self.search = search
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<CompartmentType>,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							resource: [CompartmentDefinitionResource]? = nil,
							search: FHIRPrimitive<FHIRBool>,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil)
	{
		self.init(code: code, name: name, search: search, status: status, url: url)
		self.contact = contact
		self.contained = contained
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.resource = resource
		self.text = text
		self.title = title
		self.useContext = useContext
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case contact
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case jurisdiction
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case resource
		case search; case _search
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<CompartmentType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.resource = try [CompartmentDefinitionResource](from: _container, forKeyIfPresent: .resource)
		self.search = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .search, auxiliaryKey: ._search)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try contact?.encode(on: &_container, forKey: .contact)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try resource?.encode(on: &_container, forKey: .resource)
		try search.encode(on: &_container, forKey: .search, auxiliaryKey: ._search)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CompartmentDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && contact == _other.contact
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && resource == _other.resource
		    && search == _other.search
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(resource)
		hasher.combine(search)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
	}
}

/**
 How a resource is related to the compartment.
 
 Information about how a resource is related to the compartment.
 */
open class CompartmentDefinitionResource: BackboneElement {
	
	/// The name of a resource supported by the server.
	public var code: FHIRPrimitive<ResourceType>
	
	/// Search Parameter Name, or chained parameters
	public var param: [FHIRPrimitive<FHIRString>]?
	
	/// Additional documentation about the resource and compartment
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<ResourceType>) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<ResourceType>,
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							param: [FHIRPrimitive<FHIRString>]? = nil)
	{
		self.init(code: code)
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case documentation; case _documentation
		case param; case _param
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<ResourceType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.param = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .param, auxiliaryKey: ._param)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try param?.encode(on: &_container, forKey: .param, auxiliaryKey: ._param)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CompartmentDefinitionResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && documentation == _other.documentation
		    && param == _other.param
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(documentation)
		hasher.combine(param)
	}
}
