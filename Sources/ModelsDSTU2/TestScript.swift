//
//  TestScript.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/TestScript)
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
 
 TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine compliance
 against the FHIR specification.
 */
public struct TestScript: DomainResource {
	
	public static let resourceType: ResourceType = .testScript
	
	/// Contact details of the publisher
	public var contact: [TestScriptContact]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Date for this version of the TestScript
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the TestScript
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Fixture in the test script - by reference (uri)
	public var fixture: [TestScriptFixture]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Whether or not the tests apply to more than one FHIR server
	public var multiserver: FHIRPrimitive<FHIRBool>?
	
	/// Informal name for this TestScript
	public var name: FHIRPrimitive<FHIRString>
	
	/// Reference of the validation profile
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Scope and Usage this Test Script is for
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// A series of required setup operations before tests are executed
	public var setup: TestScriptSetup?
	
	/// The status of the TestScript.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// A series of required clean up steps
	public var teardown: TestScriptTeardown?
	
	/// A test in this script
	public var test: [TestScriptTest]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Absolute URL used to reference this TestScript
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Placeholder for evaluated elements
	public var variable: [TestScriptVariable]?
	
	/// Logical id for this version of the TestScript
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		contact: [TestScriptContact]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fixture: [TestScriptFixture]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil,
		multiserver: FHIRPrimitive<FHIRBool>? = nil,
		name: FHIRPrimitive<FHIRString>,
		profile: [Reference]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		requirements: FHIRPrimitive<FHIRString>? = nil,
		setup: TestScriptSetup? = nil,
		status: FHIRPrimitive<ConformanceResourceStatus>,
		teardown: TestScriptTeardown? = nil,
		test: [TestScriptTest]? = nil,
		text: Narrative? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [CodeableConcept]? = nil,
		variable: [TestScriptVariable]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.fixture = fixture
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.metadata = metadata
		self.modifierExtension = modifierExtension
		self.multiserver = multiserver
		self.name = name
		self.profile = profile
		self.publisher = publisher
		self.requirements = requirements
		self.setup = setup
		self.status = status
		self.teardown = teardown
		self.test = test
		self.text = text
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
		case experimental; case _experimental
		case `extension` = "extension"
		case fixture
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case metadata
		case modifierExtension
		case multiserver; case _multiserver
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case setup
		case status; case _status
		case teardown
		case test
		case text
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
		self.contact = try [TestScriptContact](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fixture = try [TestScriptFixture](from: _container, forKeyIfPresent: .fixture)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.multiserver = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multiserver, auxiliaryKey: ._multiserver)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.setup = try TestScriptSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestScriptTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestScriptTest](from: _container, forKeyIfPresent: .test)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
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
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fixture?.encode(on: &_container, forKey: .fixture)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try multiserver?.encode(on: &_container, forKey: .multiserver, auxiliaryKey: ._multiserver)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try text?.encode(on: &_container, forKey: .text)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variable?.encode(on: &_container, forKey: .variable)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
public struct TestScriptContact: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of a individual to contact
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		telecom: [ContactPoint]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.telecom = telecom
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case name; case _name
		case telecom
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try telecom?.encode(on: &_container, forKey: .telecom)
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
	
	/// Required Conformance
	public var conformance: Reference
	
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
	
	/// Are the capabilities required?
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Are the capabilities validated?
	public var validated: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		conformance: Reference,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [FHIRPrimitive<FHIRURI>]? = nil,
		modifierExtension: [Extension]? = nil,
		required: FHIRPrimitive<FHIRBool>? = nil,
		validated: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.conformance = conformance
		self.description_fhir = description_fhir
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.required = required
		self.validated = validated
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conformance
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination; case _destination
		case `extension` = "extension"
		case id; case _id
		case link; case _link
		case modifierExtension
		case required; case _required
		case validated; case _validated
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.conformance = try Reference(from: _container, forKey: .conformance)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.link = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .link, auxiliaryKey: ._link)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.validated = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .validated, auxiliaryKey: ._validated)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try conformance.encode(on: &_container, forKey: .conformance)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try link?.encode(on: &_container, forKey: .link, auxiliaryKey: ._link)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
 A series of required setup operations before tests are executed.
 */
public struct TestScriptSetup: BackboneElement {
	
	/// A setup operation or assert to perform
	public var action: [TestScriptSetupAction]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: [TestScriptSetupAction],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.metadata = metadata
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case `extension` = "extension"
		case id; case _id
		case metadata
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
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try metadata?.encode(on: &_container, forKey: .metadata)
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
	
	/// Id of fixture used to compare the "sourceId/path" evaluations to
	public var compareToSourceId: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath expression against fixture used to compare the "sourceId/path" evaluations to
	public var compareToSourcePath: FHIRPrimitive<FHIRString>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	/// Restricted to: ['xml', 'json']
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// Tracking/reporting assertion description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The direction to use for the assertion.
	/// Restricted to: ['response', 'request']
	public var direction: FHIRPrimitive<AssertionDirectionType>?
	
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
	
	/// The operator type.
	/// Restricted to: ['equals', 'notEquals', 'in', 'notIn', 'greaterThan', 'lessThan', 'empty', 'notEmpty',
	/// 'contains', 'notContains']
	public var `operator`: FHIRPrimitive<AssertionOperatorType>?
	
	/// XPath or JSONPath expression
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRString>?
	
	/// 
	/// Restricted to: ['okay', 'created', 'noContent', 'notModified', 'bad', 'forbidden', 'notFound',
	/// 'methodNotAllowed', 'conflict', 'gone', 'preconditionFailed', 'unprocessable']
	public var response: FHIRPrimitive<AssertionResponseTypes>?
	
	/// HTTP response code to test
	public var responseCode: FHIRPrimitive<FHIRString>?
	
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
		compareToSourceId: FHIRPrimitive<FHIRString>? = nil,
		compareToSourcePath: FHIRPrimitive<FHIRString>? = nil,
		contentType: FHIRPrimitive<ContentType>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		direction: FHIRPrimitive<AssertionDirectionType>? = nil,
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		minimumId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		navigationLinks: FHIRPrimitive<FHIRBool>? = nil,
		`operator`: FHIRPrimitive<AssertionOperatorType>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		resource: FHIRPrimitive<FHIRString>? = nil,
		response: FHIRPrimitive<AssertionResponseTypes>? = nil,
		responseCode: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil,
		validateProfileId: FHIRPrimitive<FHIRString>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil,
		warningOnly: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.compareToSourceId = compareToSourceId
		self.compareToSourcePath = compareToSourcePath
		self.contentType = contentType
		self.description_fhir = description_fhir
		self.direction = direction
		self.`extension` = `extension`
		self.headerField = headerField
		self.id = id
		self.label = label
		self.minimumId = minimumId
		self.modifierExtension = modifierExtension
		self.navigationLinks = navigationLinks
		self.`operator` = `operator`
		self.path = path
		self.resource = resource
		self.response = response
		self.responseCode = responseCode
		self.sourceId = sourceId
		self.validateProfileId = validateProfileId
		self.value = value
		self.warningOnly = warningOnly
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compareToSourceId; case _compareToSourceId
		case compareToSourcePath; case _compareToSourcePath
		case contentType; case _contentType
		case description_fhir = "description"; case _description_fhir = "_description"
		case direction; case _direction
		case `extension` = "extension"
		case headerField; case _headerField
		case id; case _id
		case label; case _label
		case minimumId; case _minimumId
		case modifierExtension
		case navigationLinks; case _navigationLinks
		case `operator` = "operator"; case _operator = "_operator"
		case path; case _path
		case resource; case _resource
		case response; case _response
		case responseCode; case _responseCode
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
		self.compareToSourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		self.compareToSourcePath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		self.contentType = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.direction = try FHIRPrimitive<AssertionDirectionType>(from: _container, forKeyIfPresent: .direction, auxiliaryKey: ._direction)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.minimumId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumId, auxiliaryKey: ._minimumId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.navigationLinks = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .navigationLinks, auxiliaryKey: ._navigationLinks)
		self.`operator` = try FHIRPrimitive<AssertionOperatorType>(from: _container, forKeyIfPresent: .`operator`, auxiliaryKey: ._operator)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.resource = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.response = try FHIRPrimitive<AssertionResponseTypes>(from: _container, forKeyIfPresent: .response, auxiliaryKey: ._response)
		self.responseCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseCode, auxiliaryKey: ._responseCode)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.validateProfileId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .validateProfileId, auxiliaryKey: ._validateProfileId)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		self.warningOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .warningOnly, auxiliaryKey: ._warningOnly)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try compareToSourceId?.encode(on: &_container, forKey: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		try compareToSourcePath?.encode(on: &_container, forKey: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try direction?.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try minimumId?.encode(on: &_container, forKey: .minimumId, auxiliaryKey: ._minimumId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try navigationLinks?.encode(on: &_container, forKey: .navigationLinks, auxiliaryKey: ._navigationLinks)
		try `operator`?.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try response?.encode(on: &_container, forKey: .response, auxiliaryKey: ._response)
		try responseCode?.encode(on: &_container, forKey: .responseCode, auxiliaryKey: ._responseCode)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try validateProfileId?.encode(on: &_container, forKey: .validateProfileId, auxiliaryKey: ._validateProfileId)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try warningOnly?.encode(on: &_container, forKey: .warningOnly, auxiliaryKey: ._warningOnly)
	}
}

/**
 The setup operation to perform.
 
 The operation to perform.
 */
public struct TestScriptSetupActionOperation: BackboneElement {
	
	/// The content-type or mime-type to use for RESTful operation in the 'Accept' header.
	/// Restricted to: ['xml', 'json']
	public var accept: FHIRPrimitive<ContentType>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	/// Restricted to: ['xml', 'json']
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// Tracking/reporting operation description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Which server to perform the operation on
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
	
	/// Explicitly defined path parameters
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Each operation can have one ore more header elements
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of mapped response
	public var responseId: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of body for PUT and POST requests
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests
	public var targetId: FHIRPrimitive<FHIRString>?
	
	/// The setup operation type that will be executed
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
		params: FHIRPrimitive<FHIRString>? = nil,
		requestHeader: [TestScriptSetupActionOperationRequestHeader]? = nil,
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
		self.params = params
		self.requestHeader = requestHeader
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
		case params; case _params
		case requestHeader
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
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.requestHeader = try [TestScriptSetupActionOperationRequestHeader](from: _container, forKeyIfPresent: .requestHeader)
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
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try requestHeader?.encode(on: &_container, forKey: .requestHeader)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try responseId?.encode(on: &_container, forKey: .responseId, auxiliaryKey: ._responseId)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try targetId?.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 Each operation can have one ore more header elements.
 
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
	public var operation: TestScriptSetupActionOperation?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
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
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operation?.encode(on: &_container, forKey: .operation)
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
	
	/// Capabilities  that are expected to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
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
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
	) {
		self.action = action
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.metadata = metadata
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case metadata
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
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
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
		try metadata?.encode(on: &_container, forKey: .metadata)
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// HTTP header field name for source
	public var headerField: FHIRPrimitive<FHIRString>?
	
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
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		path: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.`extension` = `extension`
		self.headerField = headerField
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.path = path
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case headerField; case _headerField
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
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
	}
}
