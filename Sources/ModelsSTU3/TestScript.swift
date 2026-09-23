//
//  TestScript.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/TestScript)
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
 Describes a set of tests.
 
 A structured set of tests against a FHIR server implementation to determine compliance against the FHIR specification.
 */
public struct TestScript: DomainResource {
	
	public static let resourceType: ResourceType = .testScript
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the test script
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// An abstract server representing a destination or receiver in a message exchange
	public var destination: [TestScriptDestination]?
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Fixture in the test script - by reference (uri)
	public var fixture: [TestScriptFixture]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Additional identifier for the test script
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for test script (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this test script (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// An abstract server representing a client or sender in a message exchange
	public var origin: [TestScriptOrigin]?
	
	/// Reference of the validation profile
	public var profile: [Reference]?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this test script is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Assert rule used within the test script
	public var rule: [TestScriptRule]?
	
	/// Assert ruleset used within the test script
	public var ruleset: [TestScriptRuleset]?
	
	/// A series of required setup operations before tests are executed
	public var setup: TestScriptSetup?
	
	/// The status of this test script. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// A series of required clean up steps
	public var teardown: TestScriptTeardown?
	
	/// A test in this script
	public var test: [TestScriptTest]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this test script (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Logical URI to reference this test script (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Placeholder for evaluated elements
	public var variable: [TestScriptVariable]?
	
	/// Business version of the test script
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: [TestScriptDestination]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fixture: [TestScriptFixture]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		origin: [TestScriptOrigin]? = nil,
		profile: [Reference]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		rule: [TestScriptRule]? = nil,
		ruleset: [TestScriptRuleset]? = nil,
		setup: TestScriptSetup? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		teardown: TestScriptTeardown? = nil,
		test: [TestScriptTest]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		variable: [TestScriptVariable]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.destination = destination
		self.experimental = experimental
		self.`extension` = `extension`
		self.fixture = fixture
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.metadata = metadata
		self.modifierExtension = modifierExtension
		self.name = name
		self.origin = origin
		self.profile = profile
		self.publisher = publisher
		self.purpose = purpose
		self.rule = rule
		self.ruleset = ruleset
		self.setup = setup
		self.status = status
		self.teardown = teardown
		self.test = test
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.variable = variable
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contact
		case contained
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination
		case experimental; case _experimental
		case `extension` = "extension"
		case fixture
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case meta
		case metadata
		case modifierExtension
		case name; case _name
		case origin
		case profile
		case publisher; case _publisher
		case purpose; case _purpose
		case rule
		case ruleset
		case setup
		case status; case _status
		case teardown
		case test
		case text
		case title; case _title
		case url; case _url
		case useContext
		case variable
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try [TestScriptDestination](from: _container, forKeyIfPresent: .destination)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fixture = try [TestScriptFixture](from: _container, forKeyIfPresent: .fixture)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.origin = try [TestScriptOrigin](from: _container, forKeyIfPresent: .origin)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.rule = try [TestScriptRule](from: _container, forKeyIfPresent: .rule)
		self.ruleset = try [TestScriptRuleset](from: _container, forKeyIfPresent: .ruleset)
		self.setup = try TestScriptSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestScriptTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestScriptTest](from: _container, forKeyIfPresent: .test)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variable = try [TestScriptVariable](from: _container, forKeyIfPresent: .variable)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fixture?.encode(on: &_container, forKey: .fixture)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try origin?.encode(on: &_container, forKey: .origin)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try rule?.encode(on: &_container, forKey: .rule)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variable?.encode(on: &_container, forKey: .variable)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 An abstract server representing a destination or receiver in a message exchange.
 
 An abstract server used in operations within this test script in the destination element.
 */
public struct TestScriptDestination: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The index of the abstract destination server starting at 1
	public var index: FHIRPrimitive<FHIRInteger>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor
	public var profile: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		index: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		profile: Coding
	) {
		self.`extension` = `extension`
		self.id = id
		self.index = index
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case index; case _index
		case modifierExtension
		case profile
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.index = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .index, auxiliaryKey: ._index)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Coding(from: _container, forKey: .profile)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try index.encode(on: &_container, forKey: .index, auxiliaryKey: ._index)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile.encode(on: &_container, forKey: .profile)
	}
}

/**
 Fixture in the test script - by reference (uri).
 
 Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
 */
public struct TestScriptFixture: BackboneElement {
	
	/// Whether or not to implicitly create the fixture during setup
	public var autocreate: FHIRPrimitive<FHIRBool>?
	
	/// Whether or not to implicitly delete the fixture during teardown
	public var autodelete: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Reference of the resource
	public var resource: Reference?
	
	/// Designated initializer
	public init(
		autocreate: FHIRPrimitive<FHIRBool>? = nil,
		autodelete: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		resource: Reference? = nil
	) {
		self.autocreate = autocreate
		self.autodelete = autodelete
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case autocreate; case _autocreate
		case autodelete; case _autodelete
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case resource
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.autocreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .autocreate, auxiliaryKey: ._autocreate)
		self.autodelete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .autodelete, auxiliaryKey: ._autodelete)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try autocreate?.encode(on: &_container, forKey: .autocreate, auxiliaryKey: ._autocreate)
		try autodelete?.encode(on: &_container, forKey: .autodelete, auxiliaryKey: ._autodelete)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resource?.encode(on: &_container, forKey: .resource)
	}
}

/**
 Required capability that is assumed to function correctly on the FHIR server being tested.
 
 The required capability must exist and are assumed to function correctly on the FHIR server being tested.
 */
public struct TestScriptMetadata: BackboneElement {
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested
	public var capability: [TestScriptMetadataCapability]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Links to the FHIR specification
	public var link: [TestScriptMetadataLink]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		capability: [TestScriptMetadataCapability],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [TestScriptMetadataLink]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.capability = capability
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capability
		case `extension` = "extension"
		case id; case _id
		case link
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.capability = try [TestScriptMetadataCapability](from: _container, forKey: .capability)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.link = try [TestScriptMetadataLink](from: _container, forKeyIfPresent: .link)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try capability.encode(on: &_container, forKey: .capability)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try link?.encode(on: &_container, forKey: .link)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Capabilities  that are assumed to function correctly on the FHIR server being tested.
 
 Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
public struct TestScriptMetadataCapability: BackboneElement {
	
	/// Required Capability Statement
	public var capabilities: Reference
	
	/// The expected capabilities of the server
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Which server these requirements apply to
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Links to the FHIR specification
	public var link: [FHIRPrimitive<FHIRURI>]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Which origin server these requirements apply to
	public var origin: [FHIRPrimitive<FHIRInteger>]?
	
	/// Are the capabilities required?
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Are the capabilities validated?
	public var validated: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		capabilities: Reference,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [FHIRPrimitive<FHIRURI>]? = nil,
		modifierExtension: [Extension]? = nil,
		origin: [FHIRPrimitive<FHIRInteger>]? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		validated: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.capabilities = capabilities
		self.description_fhir = description_fhir
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.required = required
		self.validated = validated
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capabilities
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination; case _destination
		case `extension` = "extension"
		case id; case _id
		case link; case _link
		case modifierExtension
		case origin; case _origin
		case required; case _required
		case validated; case _validated
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.capabilities = try Reference(from: _container, forKey: .capabilities)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.link = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .link, auxiliaryKey: ._link)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.origin = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .origin, auxiliaryKey: ._origin)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.validated = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .validated, auxiliaryKey: ._validated)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try capabilities.encode(on: &_container, forKey: .capabilities)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try link?.encode(on: &_container, forKey: .link, auxiliaryKey: ._link)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try origin?.encode(on: &_container, forKey: .origin, auxiliaryKey: ._origin)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try validated?.encode(on: &_container, forKey: .validated, auxiliaryKey: ._validated)
	}
}

/**
 Links to the FHIR specification.
 
 A link to the FHIR specification that this test is covering.
 */
public struct TestScriptMetadataLink: BackboneElement {
	
	/// Short description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// URL to the specification
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 An abstract server representing a client or sender in a message exchange.
 
 An abstract server used in operations within this test script in the origin element.
 */
public struct TestScriptOrigin: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The index of the abstract origin server starting at 1
	public var index: FHIRPrimitive<FHIRInteger>
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// FHIR-Client | FHIR-SDC-FormFiller
	public var profile: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		index: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		profile: Coding
	) {
		self.`extension` = `extension`
		self.id = id
		self.index = index
		self.modifierExtension = modifierExtension
		self.profile = profile
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case index; case _index
		case modifierExtension
		case profile
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.index = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .index, auxiliaryKey: ._index)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.profile = try Coding(from: _container, forKey: .profile)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try index.encode(on: &_container, forKey: .index, auxiliaryKey: ._index)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try profile.encode(on: &_container, forKey: .profile)
	}
}

/**
 Assert rule used within the test script.
 
 Assert rule to be used in one or more asserts within the test script.
 */
public struct TestScriptRule: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Rule parameter template
	public var param: [TestScriptRuleParam]?
	
	/// Assert rule resource reference
	public var resource: Reference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		param: [TestScriptRuleParam]? = nil,
		resource: Reference
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case param
		case resource
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.param = try [TestScriptRuleParam](from: _container, forKeyIfPresent: .param)
		self.resource = try Reference(from: _container, forKey: .resource)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try param?.encode(on: &_container, forKey: .param)
		try resource.encode(on: &_container, forKey: .resource)
	}
}

/**
 Rule parameter template.
 
 Each rule template can take one or more parameters for rule evaluation.
 */
public struct TestScriptRuleParam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Parameter name matching external assert rule parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parameter value defined either explicitly or dynamically
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 Assert ruleset used within the test script.
 
 Contains one or more rules.  Offers a way to group rules so assertions could reference the group of rules and have them
 all applied.
 */
public struct TestScriptRuleset: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Assert ruleset resource reference
	public var resource: Reference
	
	/// The referenced rule within the ruleset
	public var rule: [TestScriptRulesetRule]
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		resource: Reference,
		rule: [TestScriptRulesetRule]
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.resource = resource
		self.rule = rule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case resource
		case rule
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resource = try Reference(from: _container, forKey: .resource)
		self.rule = try [TestScriptRulesetRule](from: _container, forKey: .rule)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resource.encode(on: &_container, forKey: .resource)
		try rule.encode(on: &_container, forKey: .rule)
	}
}

/**
 The referenced rule within the ruleset.
 
 The referenced rule within the external ruleset template.
 */
public struct TestScriptRulesetRule: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Ruleset rule parameter template
	public var param: [TestScriptRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset
	public var ruleId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		param: [TestScriptRulesetRuleParam]? = nil,
		ruleId: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
		self.ruleId = ruleId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case param
		case ruleId; case _ruleId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.param = try [TestScriptRulesetRuleParam](from: _container, forKeyIfPresent: .param)
		self.ruleId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try param?.encode(on: &_container, forKey: .param)
		try ruleId.encode(on: &_container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
}

/**
 Ruleset rule parameter template.
 
 Each rule template can take one or more parameters for rule evaluation.
 */
public struct TestScriptRulesetRuleParam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Parameter name matching external assert ruleset rule parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parameter value defined either explicitly or dynamically
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 A series of required setup operations before tests are executed.
 */
public struct TestScriptSetup: BackboneElement {
	
	/// A setup operation or assert to perform
	public var action: [TestScriptSetupAction]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: [TestScriptSetupAction],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [TestScriptSetupAction](from: _container, forKey: .action)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 A setup operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
public struct TestScriptSetupAction: BackboneElement {
	
	/// The assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// Designated initializer
	public init(
		assert: TestScriptSetupActionAssert? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
	) {
		self.assert = assert
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case operation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assert?.encode(on: &_container, forKey: .assert)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
	}
}

/**
 The assertion to perform.
 
 Evaluates the results of previous operations to determine if the server under test behaves appropriately.
 */
public struct TestScriptSetupActionAssert: BackboneElement {
	
	/// The fluentpath expression to evaluate against the source fixture
	public var compareToSourceExpression: FHIRPrimitive<FHIRString>?
	
	/// Id of the source fixture to be evaluated
	public var compareToSourceId: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath expression to evaluate against the source fixture
	public var compareToSourcePath: FHIRPrimitive<FHIRString>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// Tracking/reporting assertion description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The direction to use for the assertion.
	public var direction: FHIRPrimitive<AssertionDirectionType>?
	
	/// The fluentpath expression to be evaluated
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// HTTP header field name
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Tracking/logging assertion label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of minimum content resource
	public var minimumId: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Perform validation on navigation links?
	public var navigationLinks: FHIRPrimitive<FHIRBool>?
	
	/// The operator type defines the conditional behavior of the assert. If not defined, the default is equals.
	public var `operator`: FHIRPrimitive<AssertionOperatorType>?
	
	/// XPath or JSONPath expression
	public var path: FHIRPrimitive<FHIRString>?
	
	/// The request method or HTTP operation code to compare against that used by the client system under test.
	public var requestMethod: FHIRPrimitive<TestScriptRequestMethodCode>?
	
	/// Request URL comparison value
	public var requestURL: FHIRPrimitive<FHIRString>?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRString>?
	
	/// None
	public var response: FHIRPrimitive<AssertionResponseTypes>?
	
	/// HTTP response code to test
	public var responseCode: FHIRPrimitive<FHIRString>?
	
	/// The reference to a TestScript.rule
	public var rule: TestScriptSetupActionAssertRule?
	
	/// The reference to a TestScript.ruleset
	public var ruleset: TestScriptSetupActionAssertRuleset?
	
	/// Fixture Id of source expression or headerField
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Profile Id of validation profile reference
	public var validateProfileId: FHIRPrimitive<FHIRString>?
	
	/// The value to compare to
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Will this assert produce a warning only on error?
	public var warningOnly: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		compareToSourceExpression: FHIRPrimitive<FHIRString>? = nil,
		compareToSourceId: FHIRPrimitive<FHIRString>? = nil,
		compareToSourcePath: FHIRPrimitive<FHIRString>? = nil,
		contentType: FHIRPrimitive<ContentType>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		direction: FHIRPrimitive<AssertionDirectionType>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		minimumId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		navigationLinks: FHIRPrimitive<FHIRBool>? = nil,
		`operator`: FHIRPrimitive<AssertionOperatorType>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		requestMethod: FHIRPrimitive<TestScriptRequestMethodCode>? = nil,
		requestURL: FHIRPrimitive<FHIRString>? = nil,
		resource: FHIRPrimitive<FHIRString>? = nil,
		response: FHIRPrimitive<AssertionResponseTypes>? = nil,
		responseCode: FHIRPrimitive<FHIRString>? = nil,
		rule: TestScriptSetupActionAssertRule? = nil,
		ruleset: TestScriptSetupActionAssertRuleset? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil,
		validateProfileId: FHIRPrimitive<FHIRString>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil,
		warningOnly: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.compareToSourceExpression = compareToSourceExpression
		self.compareToSourceId = compareToSourceId
		self.compareToSourcePath = compareToSourcePath
		self.contentType = contentType
		self.description_fhir = description_fhir
		self.direction = direction
		self.expression = expression
		self.`extension` = `extension`
		self.headerField = headerField
		self.id = id
		self.label = label
		self.minimumId = minimumId
		self.modifierExtension = modifierExtension
		self.navigationLinks = navigationLinks
		self.`operator` = `operator`
		self.path = path
		self.requestMethod = requestMethod
		self.requestURL = requestURL
		self.resource = resource
		self.response = response
		self.responseCode = responseCode
		self.rule = rule
		self.ruleset = ruleset
		self.sourceId = sourceId
		self.validateProfileId = validateProfileId
		self.value = value
		self.warningOnly = warningOnly
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compareToSourceExpression; case _compareToSourceExpression
		case compareToSourceId; case _compareToSourceId
		case compareToSourcePath; case _compareToSourcePath
		case contentType; case _contentType
		case description_fhir = "description"; case _description_fhir = "_description"
		case direction; case _direction
		case expression; case _expression
		case `extension` = "extension"
		case headerField; case _headerField
		case id; case _id
		case label; case _label
		case minimumId; case _minimumId
		case modifierExtension
		case navigationLinks; case _navigationLinks
		case `operator` = "operator"; case _operator = "_operator"
		case path; case _path
		case requestMethod; case _requestMethod
		case requestURL; case _requestURL
		case resource; case _resource
		case response; case _response
		case responseCode; case _responseCode
		case rule
		case ruleset
		case sourceId; case _sourceId
		case validateProfileId; case _validateProfileId
		case value; case _value
		case warningOnly; case _warningOnly
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.compareToSourceExpression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceExpression, auxiliaryKey: ._compareToSourceExpression)
		self.compareToSourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		self.compareToSourcePath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		self.contentType = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.direction = try FHIRPrimitive<AssertionDirectionType>(from: _container, forKeyIfPresent: .direction, auxiliaryKey: ._direction)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.minimumId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumId, auxiliaryKey: ._minimumId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.navigationLinks = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .navigationLinks, auxiliaryKey: ._navigationLinks)
		self.`operator` = try FHIRPrimitive<AssertionOperatorType>(from: _container, forKeyIfPresent: .`operator`, auxiliaryKey: ._operator)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.requestMethod = try FHIRPrimitive<TestScriptRequestMethodCode>(from: _container, forKeyIfPresent: .requestMethod, auxiliaryKey: ._requestMethod)
		self.requestURL = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestURL, auxiliaryKey: ._requestURL)
		self.resource = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.response = try FHIRPrimitive<AssertionResponseTypes>(from: _container, forKeyIfPresent: .response, auxiliaryKey: ._response)
		self.responseCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseCode, auxiliaryKey: ._responseCode)
		self.rule = try TestScriptSetupActionAssertRule(from: _container, forKeyIfPresent: .rule)
		self.ruleset = try TestScriptSetupActionAssertRuleset(from: _container, forKeyIfPresent: .ruleset)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.validateProfileId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .validateProfileId, auxiliaryKey: ._validateProfileId)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		self.warningOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .warningOnly, auxiliaryKey: ._warningOnly)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try compareToSourceExpression?.encode(on: &_container, forKey: .compareToSourceExpression, auxiliaryKey: ._compareToSourceExpression)
		try compareToSourceId?.encode(on: &_container, forKey: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		try compareToSourcePath?.encode(on: &_container, forKey: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try direction?.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try minimumId?.encode(on: &_container, forKey: .minimumId, auxiliaryKey: ._minimumId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try navigationLinks?.encode(on: &_container, forKey: .navigationLinks, auxiliaryKey: ._navigationLinks)
		try `operator`?.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try requestMethod?.encode(on: &_container, forKey: .requestMethod, auxiliaryKey: ._requestMethod)
		try requestURL?.encode(on: &_container, forKey: .requestURL, auxiliaryKey: ._requestURL)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try response?.encode(on: &_container, forKey: .response, auxiliaryKey: ._response)
		try responseCode?.encode(on: &_container, forKey: .responseCode, auxiliaryKey: ._responseCode)
		try rule?.encode(on: &_container, forKey: .rule)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try validateProfileId?.encode(on: &_container, forKey: .validateProfileId, auxiliaryKey: ._validateProfileId)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try warningOnly?.encode(on: &_container, forKey: .warningOnly, auxiliaryKey: ._warningOnly)
	}
}

/**
 The reference to a TestScript.rule.
 
 The TestScript.rule this assert will evaluate.
 */
public struct TestScriptSetupActionAssertRule: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Rule parameter template
	public var param: [TestScriptSetupActionAssertRuleParam]?
	
	/// Id of the TestScript.rule
	public var ruleId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		param: [TestScriptSetupActionAssertRuleParam]? = nil,
		ruleId: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
		self.ruleId = ruleId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case param
		case ruleId; case _ruleId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.param = try [TestScriptSetupActionAssertRuleParam](from: _container, forKeyIfPresent: .param)
		self.ruleId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try param?.encode(on: &_container, forKey: .param)
		try ruleId.encode(on: &_container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
}

/**
 Rule parameter template.
 
 Each rule template can take one or more parameters for rule evaluation.
 */
public struct TestScriptSetupActionAssertRuleParam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Parameter name matching external assert rule parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parameter value defined either explicitly or dynamically
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 The reference to a TestScript.ruleset.
 
 The TestScript.ruleset this assert will evaluate.
 */
public struct TestScriptSetupActionAssertRuleset: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The referenced rule within the ruleset
	public var rule: [TestScriptSetupActionAssertRulesetRule]?
	
	/// Id of the TestScript.ruleset
	public var rulesetId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rule: [TestScriptSetupActionAssertRulesetRule]? = nil,
		rulesetId: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.rulesetId = rulesetId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case rule
		case rulesetId; case _rulesetId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rule = try [TestScriptSetupActionAssertRulesetRule](from: _container, forKeyIfPresent: .rule)
		self.rulesetId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .rulesetId, auxiliaryKey: ._rulesetId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rule?.encode(on: &_container, forKey: .rule)
		try rulesetId.encode(on: &_container, forKey: .rulesetId, auxiliaryKey: ._rulesetId)
	}
}

/**
 The referenced rule within the ruleset.
 
 The referenced rule within the external ruleset template.
 */
public struct TestScriptSetupActionAssertRulesetRule: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Rule parameter template
	public var param: [TestScriptSetupActionAssertRulesetRuleParam]?
	
	/// Id of referenced rule within the ruleset
	public var ruleId: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		param: [TestScriptSetupActionAssertRulesetRuleParam]? = nil,
		ruleId: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.param = param
		self.ruleId = ruleId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case param
		case ruleId; case _ruleId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.param = try [TestScriptSetupActionAssertRulesetRuleParam](from: _container, forKeyIfPresent: .param)
		self.ruleId = try FHIRPrimitive<FHIRString>(from: _container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try param?.encode(on: &_container, forKey: .param)
		try ruleId.encode(on: &_container, forKey: .ruleId, auxiliaryKey: ._ruleId)
	}
}

/**
 Rule parameter template.
 
 Each rule template can take one or more parameters for rule evaluation.
 */
public struct TestScriptSetupActionAssertRulesetRuleParam: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Parameter name matching external assert ruleset rule parameter
	public var name: FHIRPrimitive<FHIRString>
	
	/// Parameter value defined either explicitly or dynamically
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 The setup operation to perform.
 
 The operation to perform.
 */
public struct TestScriptSetupActionOperation: BackboneElement {
	
	/// The content-type or mime-type to use for RESTful operation in the 'Accept' header.
	public var accept: FHIRPrimitive<ContentType>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// Tracking/reporting operation description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Server responding to the request
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Whether or not to send the request url in encoded format
	public var encodeRequestUrl: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Tracking/logging operation label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Server initiating the request
	public var origin: FHIRPrimitive<FHIRInteger>?
	
	/// Explicitly defined path parameters
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Each operation can have one or more header elements
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Fixture Id of mapped request
	public var requestId: FHIRPrimitive<FHIRString>?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of mapped response
	public var responseId: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of body for PUT and POST requests
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests
	public var targetId: FHIRPrimitive<FHIRString>?
	
	/// The operation code type that will be executed
	public var type: Coding?
	
	/// Request URL
	public var url: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		accept: FHIRPrimitive<ContentType>? = nil,
		contentType: FHIRPrimitive<ContentType>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: FHIRPrimitive<FHIRInteger>? = nil,
		encodeRequestUrl: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		origin: FHIRPrimitive<FHIRInteger>? = nil,
		params: FHIRPrimitive<FHIRString>? = nil,
		requestHeader: [TestScriptSetupActionOperationRequestHeader]? = nil,
		requestId: FHIRPrimitive<FHIRString>? = nil,
		resource: FHIRPrimitive<FHIRString>? = nil,
		responseId: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil,
		targetId: FHIRPrimitive<FHIRString>? = nil,
		type: Coding? = nil,
		url: FHIRPrimitive<FHIRString>? = nil
	) {
		self.accept = accept
		self.contentType = contentType
		self.description_fhir = description_fhir
		self.destination = destination
		self.encodeRequestUrl = encodeRequestUrl
		self.`extension` = `extension`
		self.id = id
		self.label = label
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.params = params
		self.requestHeader = requestHeader
		self.requestId = requestId
		self.resource = resource
		self.responseId = responseId
		self.sourceId = sourceId
		self.targetId = targetId
		self.type = type
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accept; case _accept
		case contentType; case _contentType
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination; case _destination
		case encodeRequestUrl; case _encodeRequestUrl
		case `extension` = "extension"
		case id; case _id
		case label; case _label
		case modifierExtension
		case origin; case _origin
		case params; case _params
		case requestHeader
		case requestId; case _requestId
		case resource; case _resource
		case responseId; case _responseId
		case sourceId; case _sourceId
		case targetId; case _targetId
		case type
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accept = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .accept, auxiliaryKey: ._accept)
		self.contentType = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.encodeRequestUrl = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.origin = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .origin, auxiliaryKey: ._origin)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.requestHeader = try [TestScriptSetupActionOperationRequestHeader](from: _container, forKeyIfPresent: .requestHeader)
		self.requestId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestId, auxiliaryKey: ._requestId)
		self.resource = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.responseId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseId, auxiliaryKey: ._responseId)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetId, auxiliaryKey: ._targetId)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try accept?.encode(on: &_container, forKey: .accept, auxiliaryKey: ._accept)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try encodeRequestUrl?.encode(on: &_container, forKey: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try origin?.encode(on: &_container, forKey: .origin, auxiliaryKey: ._origin)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try requestHeader?.encode(on: &_container, forKey: .requestHeader)
		try requestId?.encode(on: &_container, forKey: .requestId, auxiliaryKey: ._requestId)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try responseId?.encode(on: &_container, forKey: .responseId, auxiliaryKey: ._responseId)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try targetId?.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 Each operation can have one or more header elements.
 
 Header elements would be used to set HTTP headers.
 */
public struct TestScriptSetupActionOperationRequestHeader: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// HTTP header field name
	public var field: FHIRPrimitive<FHIRString>
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// HTTP headerfield value
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		field: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.field = field
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case field; case _field
		case id; case _id
		case modifierExtension
		case value; case _value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.field = try FHIRPrimitive<FHIRString>(from: _container, forKey: .field, auxiliaryKey: ._field)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try field.encode(on: &_container, forKey: .field, auxiliaryKey: ._field)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
	}
}

/**
 A series of required clean up steps.
 
 A series of operations required to clean up after the all the tests are executed (successfully or otherwise).
 */
public struct TestScriptTeardown: BackboneElement {
	
	/// One or more teardown operations to perform
	public var action: [TestScriptTeardownAction]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: [TestScriptTeardownAction],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [TestScriptTeardownAction](from: _container, forKey: .action)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 One or more teardown operations to perform.
 
 The teardown action will only contain an operation.
 */
public struct TestScriptTeardownAction: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The teardown operation to perform
	public var operation: TestScriptSetupActionOperation
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case operation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKey: .operation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation.encode(on: &_container, forKey: .operation)
	}
}

/**
 A test in this script.
 */
public struct TestScriptTest: BackboneElement {
	
	/// A test operation or assert to perform
	public var action: [TestScriptTestAction]
	
	/// Tracking/reporting short description of the test
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Tracking/logging name of this test
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		action: [TestScriptTestAction],
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
	) {
		self.action = action
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [TestScriptTestAction](from: _container, forKey: .action)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
	}
}

/**
 A test operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
public struct TestScriptTestAction: BackboneElement {
	
	/// The setup assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// Designated initializer
	public init(
		assert: TestScriptSetupActionAssert? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
	) {
		self.assert = assert
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case operation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try assert?.encode(on: &_container, forKey: .assert)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
	}
}

/**
 Placeholder for evaluated elements.
 
 Variable is set based either on element value in response body or on header field value in the response headers.
 */
public struct TestScriptVariable: BackboneElement {
	
	/// Default, hard-coded, or user-defined value for this variable
	public var defaultValue: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The fluentpath expression against the fixture body
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// HTTP header field name for source
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// Hint help text for default value to enter
	public var hint: FHIRPrimitive<FHIRString>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Descriptive name for this variable
	public var name: FHIRPrimitive<FHIRString>
	
	/// XPath or JSONPath against the fixture body
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of source expression or headerField within this variable
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		defaultValue: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		hint: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		path: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.defaultValue = defaultValue
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.headerField = headerField
		self.hint = hint
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.path = path
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case defaultValue; case _defaultValue
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case `extension` = "extension"
		case headerField; case _headerField
		case hint; case _hint
		case id; case _id
		case modifierExtension
		case name; case _name
		case path; case _path
		case sourceId; case _sourceId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.defaultValue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValue, auxiliaryKey: ._defaultValue)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.hint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .hint, auxiliaryKey: ._hint)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try defaultValue?.encode(on: &_container, forKey: .defaultValue, auxiliaryKey: ._defaultValue)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try hint?.encode(on: &_container, forKey: .hint, auxiliaryKey: ._hint)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
	}
}
