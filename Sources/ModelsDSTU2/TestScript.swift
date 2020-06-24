//
//  TestScript.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/TestScript)
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
 Describes a set of tests.
 
 TestScript is a resource that specifies a suite of tests against a FHIR server implementation to determine compliance
 against the FHIR specification.
 */
open class TestScript: DomainResource {
	
	override open class var resourceType: ResourceType { return .testScript }
	
	/// Absolute URL used to reference this TestScript
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Logical id for this version of the TestScript
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Informal name for this TestScript
	public var name: FHIRPrimitive<FHIRString>
	
	/// The status of the TestScript.
	/// Restricted to: ['draft', 'active', 'retired']
	public var status: FHIRPrimitive<ConformanceResourceStatus>
	
	/// External identifier
	public var identifier: Identifier?
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details of the publisher
	public var contact: [TestScriptContact]?
	
	/// Date for this version of the TestScript
	public var date: FHIRPrimitive<DateTime>?
	
	/// Natural language description of the TestScript
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Scope and Usage this Test Script is for
	public var requirements: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Whether or not the tests apply to more than one FHIR server
	public var multiserver: FHIRPrimitive<FHIRBool>?
	
	/// Fixture in the test script - by reference (uri)
	public var fixture: [TestScriptFixture]?
	
	/// Reference of the validation profile
	public var profile: [Reference]?
	
	/// Placeholder for evaluated elements
	public var variable: [TestScriptVariable]?
	
	/// A series of required setup operations before tests are executed
	public var setup: TestScriptSetup?
	
	/// A test in this script
	public var test: [TestScriptTest]?
	
	/// A series of required clean up steps
	public var teardown: TestScriptTeardown?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<ConformanceResourceStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.name = name
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name, status: status, url: url)
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
		self.profile = profile
		self.publisher = publisher
		self.requirements = requirements
		self.setup = setup
		self.teardown = teardown
		self.test = test
		self.text = text
		self.useContext = useContext
		self.variable = variable
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contact
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case fixture
		case identifier
		case metadata
		case multiserver; case _multiserver
		case name; case _name
		case profile
		case publisher; case _publisher
		case requirements; case _requirements
		case setup
		case status; case _status
		case teardown
		case test
		case url; case _url
		case useContext
		case variable
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.contact = try [TestScriptContact](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fixture = try [TestScriptFixture](from: _container, forKeyIfPresent: .fixture)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.multiserver = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multiserver, auxiliaryKey: ._multiserver)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.profile = try [Reference](from: _container, forKeyIfPresent: .profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.requirements = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirements, auxiliaryKey: ._requirements)
		self.setup = try TestScriptSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<ConformanceResourceStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestScriptTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestScriptTest](from: _container, forKeyIfPresent: .test)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [CodeableConcept](from: _container, forKeyIfPresent: .useContext)
		self.variable = try [TestScriptVariable](from: _container, forKeyIfPresent: .variable)
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
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fixture?.encode(on: &_container, forKey: .fixture)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try multiserver?.encode(on: &_container, forKey: .multiserver, auxiliaryKey: ._multiserver)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try profile?.encode(on: &_container, forKey: .profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try requirements?.encode(on: &_container, forKey: .requirements, auxiliaryKey: ._requirements)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variable?.encode(on: &_container, forKey: .variable)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScript else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && fixture == _other.fixture
		    && identifier == _other.identifier
		    && metadata == _other.metadata
		    && multiserver == _other.multiserver
		    && name == _other.name
		    && profile == _other.profile
		    && publisher == _other.publisher
		    && requirements == _other.requirements
		    && setup == _other.setup
		    && status == _other.status
		    && teardown == _other.teardown
		    && test == _other.test
		    && url == _other.url
		    && useContext == _other.useContext
		    && variable == _other.variable
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(fixture)
		hasher.combine(identifier)
		hasher.combine(metadata)
		hasher.combine(multiserver)
		hasher.combine(name)
		hasher.combine(profile)
		hasher.combine(publisher)
		hasher.combine(requirements)
		hasher.combine(setup)
		hasher.combine(status)
		hasher.combine(teardown)
		hasher.combine(test)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variable)
		hasher.combine(version)
	}
}

/**
 Contact details of the publisher.
 
 Contacts to assist a user in finding and communicating with the publisher.
 */
open class TestScriptContact: BackboneElement {
	
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
		guard let _other = _other as? TestScriptContact else {
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
 Fixture in the test script - by reference (uri).
 
 Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
 */
open class TestScriptFixture: BackboneElement {
	
	/// Whether or not to implicitly create the fixture during setup
	public var autocreate: FHIRPrimitive<FHIRBool>?
	
	/// Whether or not to implicitly delete the fixture during teardown
	public var autodelete: FHIRPrimitive<FHIRBool>?
	
	/// Reference of the resource
	public var resource: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							autocreate: FHIRPrimitive<FHIRBool>? = nil,
							autodelete: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							resource: Reference? = nil)
	{
		self.init()
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
		case resource
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.autocreate = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .autocreate, auxiliaryKey: ._autocreate)
		self.autodelete = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .autodelete, auxiliaryKey: ._autodelete)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try autocreate?.encode(on: &_container, forKey: .autocreate, auxiliaryKey: ._autocreate)
		try autodelete?.encode(on: &_container, forKey: .autodelete, auxiliaryKey: ._autodelete)
		try resource?.encode(on: &_container, forKey: .resource)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptFixture else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return autocreate == _other.autocreate
		    && autodelete == _other.autodelete
		    && resource == _other.resource
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(autocreate)
		hasher.combine(autodelete)
		hasher.combine(resource)
	}
}

/**
 Required capability that is assumed to function correctly on the FHIR server being tested.
 
 The required capability must exist and are assumed to function correctly on the FHIR server being tested.
 */
open class TestScriptMetadata: BackboneElement {
	
	/// Links to the FHIR specification
	public var link: [TestScriptMetadataLink]?
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested
	public var capability: [TestScriptMetadataCapability]
	
	/// Designated initializer taking all required properties
	public init(capability: [TestScriptMetadataCapability]) {
		self.capability = capability
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							capability: [TestScriptMetadataCapability],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							link: [TestScriptMetadataLink]? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(capability: capability)
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capability
		case link
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.capability = try [TestScriptMetadataCapability](from: _container, forKey: .capability)
		self.link = try [TestScriptMetadataLink](from: _container, forKeyIfPresent: .link)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try capability.encode(on: &_container, forKey: .capability)
		try link?.encode(on: &_container, forKey: .link)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadata else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return capability == _other.capability
		    && link == _other.link
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(capability)
		hasher.combine(link)
	}
}

/**
 Capabilities  that are assumed to function correctly on the FHIR server being tested.
 
 Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
open class TestScriptMetadataCapability: BackboneElement {
	
	/// Are the capabilities required?
	public var required: FHIRPrimitive<FHIRBool>?
	
	/// Are the capabilities validated?
	public var validated: FHIRPrimitive<FHIRBool>?
	
	/// The expected capabilities of the server
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Which server these requirements apply to
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Links to the FHIR specification
	public var link: [FHIRPrimitive<FHIRURI>]?
	
	/// Required Conformance
	public var conformance: Reference
	
	/// Designated initializer taking all required properties
	public init(conformance: Reference) {
		self.conformance = conformance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							conformance: Reference,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							destination: FHIRPrimitive<FHIRInteger>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							link: [FHIRPrimitive<FHIRURI>]? = nil,
							modifierExtension: [Extension]? = nil,
							required: FHIRPrimitive<FHIRBool>? = nil,
							validated: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init(conformance: conformance)
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
		case link; case _link
		case required; case _required
		case validated; case _validated
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conformance = try Reference(from: _container, forKey: .conformance)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.link = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .link, auxiliaryKey: ._link)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .required, auxiliaryKey: ._required)
		self.validated = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .validated, auxiliaryKey: ._validated)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try conformance.encode(on: &_container, forKey: .conformance)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try link?.encode(on: &_container, forKey: .link, auxiliaryKey: ._link)
		try required?.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try validated?.encode(on: &_container, forKey: .validated, auxiliaryKey: ._validated)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadataCapability else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conformance == _other.conformance
		    && description_fhir == _other.description_fhir
		    && destination == _other.destination
		    && link == _other.link
		    && required == _other.required
		    && validated == _other.validated
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(conformance)
		hasher.combine(description_fhir)
		hasher.combine(destination)
		hasher.combine(link)
		hasher.combine(required)
		hasher.combine(validated)
	}
}

/**
 Links to the FHIR specification.
 
 A link to the FHIR specification that this test is covering.
 */
open class TestScriptMetadataLink: BackboneElement {
	
	/// URL to the specification
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Short description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(url: FHIRPrimitive<FHIRURI>) {
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(url: url)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadataLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(url)
	}
}

/**
 A series of required setup operations before tests are executed.
 */
open class TestScriptSetup: BackboneElement {
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// A setup operation or assert to perform
	public var action: [TestScriptSetupAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestScriptSetupAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestScriptSetupAction],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							metadata: TestScriptMetadata? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(action: action)
		self.`extension` = `extension`
		self.id = id
		self.metadata = metadata
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case metadata
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptSetupAction](from: _container, forKey: .action)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && metadata == _other.metadata
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(metadata)
	}
}

/**
 A setup operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
open class TestScriptSetupAction: BackboneElement {
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// The assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assert: TestScriptSetupActionAssert? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestScriptSetupActionOperation? = nil)
	{
		self.init()
		self.assert = assert
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assert?.encode(on: &_container, forKey: .assert)
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assert == _other.assert
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assert)
		hasher.combine(operation)
	}
}

/**
 The assertion to perform.
 
 Evaluates the results of previous operations to determine if the server under test behaves appropriately.
 */
open class TestScriptSetupActionAssert: BackboneElement {
	
	/// Tracking/logging assertion label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting assertion description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The direction to use for the assertion.
	/// Restricted to: ['response', 'request']
	public var direction: FHIRPrimitive<AssertionDirectionType>?
	
	/// Id of fixture used to compare the "sourceId/path" evaluations to
	public var compareToSourceId: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath expression against fixture used to compare the "sourceId/path" evaluations to
	public var compareToSourcePath: FHIRPrimitive<FHIRString>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	/// Restricted to: ['xml', 'json']
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// HTTP header field name
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of minimum content resource
	public var minimumId: FHIRPrimitive<FHIRString>?
	
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
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							warningOnly: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init()
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
		case headerField; case _headerField
		case label; case _label
		case minimumId; case _minimumId
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compareToSourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		self.compareToSourcePath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		self.contentType = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.direction = try FHIRPrimitive<AssertionDirectionType>(from: _container, forKeyIfPresent: .direction, auxiliaryKey: ._direction)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.minimumId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumId, auxiliaryKey: ._minimumId)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try compareToSourceId?.encode(on: &_container, forKey: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		try compareToSourcePath?.encode(on: &_container, forKey: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try direction?.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try minimumId?.encode(on: &_container, forKey: .minimumId, auxiliaryKey: ._minimumId)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionAssert else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return compareToSourceId == _other.compareToSourceId
		    && compareToSourcePath == _other.compareToSourcePath
		    && contentType == _other.contentType
		    && description_fhir == _other.description_fhir
		    && direction == _other.direction
		    && headerField == _other.headerField
		    && label == _other.label
		    && minimumId == _other.minimumId
		    && navigationLinks == _other.navigationLinks
		    && `operator` == _other.`operator`
		    && path == _other.path
		    && resource == _other.resource
		    && response == _other.response
		    && responseCode == _other.responseCode
		    && sourceId == _other.sourceId
		    && validateProfileId == _other.validateProfileId
		    && value == _other.value
		    && warningOnly == _other.warningOnly
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(compareToSourceId)
		hasher.combine(compareToSourcePath)
		hasher.combine(contentType)
		hasher.combine(description_fhir)
		hasher.combine(direction)
		hasher.combine(headerField)
		hasher.combine(label)
		hasher.combine(minimumId)
		hasher.combine(navigationLinks)
		hasher.combine(`operator`)
		hasher.combine(path)
		hasher.combine(resource)
		hasher.combine(response)
		hasher.combine(responseCode)
		hasher.combine(sourceId)
		hasher.combine(validateProfileId)
		hasher.combine(value)
		hasher.combine(warningOnly)
	}
}

/**
 The setup operation to perform.
 
 The operation to perform.
 */
open class TestScriptSetupActionOperation: BackboneElement {
	
	/// The setup operation type that will be executed
	public var type: Coding?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRString>?
	
	/// Tracking/logging operation label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting operation description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Accept' header.
	/// Restricted to: ['xml', 'json']
	public var accept: FHIRPrimitive<ContentType>?
	
	/// The content-type or mime-type to use for RESTful operation in the 'Content-Type' header.
	/// Restricted to: ['xml', 'json']
	public var contentType: FHIRPrimitive<ContentType>?
	
	/// Which server to perform the operation on
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Whether or not to send the request url in encoded format
	public var encodeRequestUrl: FHIRPrimitive<FHIRBool>?
	
	/// Explicitly defined path parameters
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Each operation can have one ore more header elements
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Fixture Id of mapped response
	public var responseId: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of body for PUT and POST requests
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests
	public var targetId: FHIRPrimitive<FHIRString>?
	
	/// Request URL
	public var url: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							url: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case label; case _label
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accept = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .accept, auxiliaryKey: ._accept)
		self.contentType = try FHIRPrimitive<ContentType>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.encodeRequestUrl = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.requestHeader = try [TestScriptSetupActionOperationRequestHeader](from: _container, forKeyIfPresent: .requestHeader)
		self.resource = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.responseId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseId, auxiliaryKey: ._responseId)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetId, auxiliaryKey: ._targetId)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accept?.encode(on: &_container, forKey: .accept, auxiliaryKey: ._accept)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try encodeRequestUrl?.encode(on: &_container, forKey: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try requestHeader?.encode(on: &_container, forKey: .requestHeader)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try responseId?.encode(on: &_container, forKey: .responseId, auxiliaryKey: ._responseId)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try targetId?.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accept == _other.accept
		    && contentType == _other.contentType
		    && description_fhir == _other.description_fhir
		    && destination == _other.destination
		    && encodeRequestUrl == _other.encodeRequestUrl
		    && label == _other.label
		    && params == _other.params
		    && requestHeader == _other.requestHeader
		    && resource == _other.resource
		    && responseId == _other.responseId
		    && sourceId == _other.sourceId
		    && targetId == _other.targetId
		    && type == _other.type
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accept)
		hasher.combine(contentType)
		hasher.combine(description_fhir)
		hasher.combine(destination)
		hasher.combine(encodeRequestUrl)
		hasher.combine(label)
		hasher.combine(params)
		hasher.combine(requestHeader)
		hasher.combine(resource)
		hasher.combine(responseId)
		hasher.combine(sourceId)
		hasher.combine(targetId)
		hasher.combine(type)
		hasher.combine(url)
	}
}

/**
 Each operation can have one ore more header elements.
 
 Header elements would be used to set HTTP headers.
 */
open class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	
	/// HTTP header field name
	public var field: FHIRPrimitive<FHIRString>
	
	/// HTTP headerfield value
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(field: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.field = field
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							field: FHIRPrimitive<FHIRString>,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: FHIRPrimitive<FHIRString>)
	{
		self.init(field: field, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case field; case _field
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.field = try FHIRPrimitive<FHIRString>(from: _container, forKey: .field, auxiliaryKey: ._field)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try field.encode(on: &_container, forKey: .field, auxiliaryKey: ._field)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionOperationRequestHeader else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return field == _other.field
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(field)
		hasher.combine(value)
	}
}

/**
 A series of required clean up steps.
 
 A series of operations required to clean up after the all the tests are executed (successfully or otherwise).
 */
open class TestScriptTeardown: BackboneElement {
	
	/// One or more teardown operations to perform
	public var action: [TestScriptTeardownAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestScriptTeardownAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestScriptTeardownAction],
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(action: action)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptTeardownAction](from: _container, forKey: .action)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTeardown else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
	}
}

/**
 One or more teardown operations to perform.
 
 The teardown action will only contain an operation.
 */
open class TestScriptTeardownAction: BackboneElement {
	
	/// The teardown operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestScriptSetupActionOperation? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTeardownAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(operation)
	}
}

/**
 A test in this script.
 */
open class TestScriptTest: BackboneElement {
	
	/// Tracking/logging name of this test
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting short description of the test
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Capabilities  that are expected to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// A test operation or assert to perform
	public var action: [TestScriptTestAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestScriptTestAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestScriptTestAction],
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							metadata: TestScriptMetadata? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(action: action)
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
		case metadata
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptTestAction](from: _container, forKey: .action)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && description_fhir == _other.description_fhir
		    && metadata == _other.metadata
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(description_fhir)
		hasher.combine(metadata)
		hasher.combine(name)
	}
}

/**
 A test operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
open class TestScriptTestAction: BackboneElement {
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// The setup assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assert: TestScriptSetupActionAssert? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestScriptSetupActionOperation? = nil)
	{
		self.init()
		self.assert = assert
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assert?.encode(on: &_container, forKey: .assert)
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTestAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assert == _other.assert
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assert)
		hasher.combine(operation)
	}
}

/**
 Placeholder for evaluated elements.
 
 Variable is set based either on element value in response body or on header field value in the response headers.
 */
open class TestScriptVariable: BackboneElement {
	
	/// Descriptive name for this variable
	public var name: FHIRPrimitive<FHIRString>
	
	/// HTTP header field name for source
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath against the fixture body
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of source expression or headerField within this variable
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							headerField: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>,
							path: FHIRPrimitive<FHIRString>? = nil,
							sourceId: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(name: name)
		self.`extension` = `extension`
		self.headerField = headerField
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case headerField; case _headerField
		case name; case _name
		case path; case _path
		case sourceId; case _sourceId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return headerField == _other.headerField
		    && name == _other.name
		    && path == _other.path
		    && sourceId == _other.sourceId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(headerField)
		hasher.combine(name)
		hasher.combine(path)
		hasher.combine(sourceId)
	}
}
