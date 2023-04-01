//
//  TestPlan.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/TestPlan)
//  Copyright 2023 Apple Inc.
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
 Description of intented testing.
 
 A plan for executing testing on an artifact or specifications.
 */
open class TestPlan: DomainResource {
	
	override open class var resourceType: ResourceType { return .testPlan }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this test plan, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business identifier identifier for the test plan
	public var identifier: [Identifier]?
	
	/// Business version of the test plan
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this test plan (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this test plan (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this test plan. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the test plan
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction where the test plan applies (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this test plan is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// The category of the Test Plan - can be acceptance, unit, performance
	public var category: [CodeableConcept]?
	
	/// What is being tested with this Test Plan - a conformance resource, or narrative criteria, or an external
	/// reference
	public var scope: [Reference]?
	
	/// A description of test tools to be used in the test plan - narrative for now
	public var testTools: FHIRPrimitive<FHIRString>?
	
	/// The required criteria to execute the test plan - e.g. preconditions, previous tests
	public var dependency: [TestPlanDependency]?
	
	/// The threshold or criteria for the test plan to be considered successfully executed - narrative
	public var exitCriteria: FHIRPrimitive<FHIRString>?
	
	/// The test cases that constitute this plan
	public var testCase: [TestPlanTestCase]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: [CodeableConcept]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		dependency: [TestPlanDependency]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		exitCriteria: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		scope: [Reference]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		testCase: [TestPlanTestCase]? = nil,
		testTools: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(status: status)
		self.category = category
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.dependency = dependency
		self.description_fhir = description_fhir
		self.exitCriteria = exitCriteria
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.scope = scope
		self.testCase = testCase
		self.testTools = testTools
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case dependency
		case description_fhir = "description"; case _description_fhir = "_description"
		case exitCriteria; case _exitCriteria
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case scope
		case status; case _status
		case testCase
		case testTools; case _testTools
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.dependency = try [TestPlanDependency](from: _container, forKeyIfPresent: .dependency)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.exitCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .exitCriteria, auxiliaryKey: ._exitCriteria)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.scope = try [Reference](from: _container, forKeyIfPresent: .scope)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.testCase = try [TestPlanTestCase](from: _container, forKeyIfPresent: .testCase)
		self.testTools = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .testTools, auxiliaryKey: ._testTools)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try dependency?.encode(on: &_container, forKey: .dependency)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try exitCriteria?.encode(on: &_container, forKey: .exitCriteria, auxiliaryKey: ._exitCriteria)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try scope?.encode(on: &_container, forKey: .scope)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try testCase?.encode(on: &_container, forKey: .testCase)
		try testTools?.encode(on: &_container, forKey: .testTools, auxiliaryKey: ._testTools)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlan else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && dependency == _other.dependency
		    && description_fhir == _other.description_fhir
		    && exitCriteria == _other.exitCriteria
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && scope == _other.scope
		    && status == _other.status
		    && testCase == _other.testCase
		    && testTools == _other.testTools
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(dependency)
		hasher.combine(description_fhir)
		hasher.combine(exitCriteria)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(scope)
		hasher.combine(status)
		hasher.combine(testCase)
		hasher.combine(testTools)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 The required criteria to execute the test plan - e.g. preconditions, previous tests.
 
 The required criteria to execute the test plan - e.g. preconditions, previous tests...
 */
open class TestPlanDependency: BackboneElement {
	
	/// Description of the dependency criterium
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Link to predecessor test plans
	public var predecessor: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		predecessor: Reference? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.predecessor = predecessor
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case predecessor
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.predecessor = try Reference(from: _container, forKeyIfPresent: .predecessor)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanDependency else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && predecessor == _other.predecessor
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(predecessor)
	}
}

/**
 The test cases that constitute this plan.
 
 The individual test cases that are part of this plan, when they they are made explicit.
 */
open class TestPlanTestCase: BackboneElement {
	
	/// Sequence of test case in the test plan
	public var sequence: FHIRPrimitive<FHIRInteger>?
	
	/// The scope or artifact covered by the case
	public var scope: [Reference]?
	
	/// Required criteria to execute the test case
	public var dependency: [TestPlanTestCaseDependency]?
	
	/// The actual test to be executed
	public var testRun: [TestPlanTestCaseTestRun]?
	
	/// The test data used in the test case
	public var testData: [TestPlanTestCaseTestData]?
	
	/// Test assertions or expectations
	public var assertion: [TestPlanTestCaseAssertion]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		assertion: [TestPlanTestCaseAssertion]? = nil,
		dependency: [TestPlanTestCaseDependency]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		scope: [Reference]? = nil,
		sequence: FHIRPrimitive<FHIRInteger>? = nil,
		testData: [TestPlanTestCaseTestData]? = nil,
		testRun: [TestPlanTestCaseTestRun]? = nil
	) {
		self.init()
		self.assertion = assertion
		self.dependency = dependency
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.scope = scope
		self.sequence = sequence
		self.testData = testData
		self.testRun = testRun
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assertion
		case dependency
		case scope
		case sequence; case _sequence
		case testData
		case testRun
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assertion = try [TestPlanTestCaseAssertion](from: _container, forKeyIfPresent: .assertion)
		self.dependency = try [TestPlanTestCaseDependency](from: _container, forKeyIfPresent: .dependency)
		self.scope = try [Reference](from: _container, forKeyIfPresent: .scope)
		self.sequence = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.testData = try [TestPlanTestCaseTestData](from: _container, forKeyIfPresent: .testData)
		self.testRun = try [TestPlanTestCaseTestRun](from: _container, forKeyIfPresent: .testRun)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assertion?.encode(on: &_container, forKey: .assertion)
		try dependency?.encode(on: &_container, forKey: .dependency)
		try scope?.encode(on: &_container, forKey: .scope)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try testData?.encode(on: &_container, forKey: .testData)
		try testRun?.encode(on: &_container, forKey: .testRun)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCase else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assertion == _other.assertion
		    && dependency == _other.dependency
		    && scope == _other.scope
		    && sequence == _other.sequence
		    && testData == _other.testData
		    && testRun == _other.testRun
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assertion)
		hasher.combine(dependency)
		hasher.combine(scope)
		hasher.combine(sequence)
		hasher.combine(testData)
		hasher.combine(testRun)
	}
}

/**
 Test assertions or expectations.
 
 The test assertions - the expectations of test results from the execution of the test case.
 */
open class TestPlanTestCaseAssertion: BackboneElement {
	
	/// Assertion type - for example 'informative' or 'required'
	public var type: [CodeableConcept]?
	
	/// The focus or object of the assertion
	public var object: [CodeableReference]?
	
	/// The actual result assertion
	public var result: [CodeableReference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		object: [CodeableReference]? = nil,
		result: [CodeableReference]? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.object = object
		self.result = result
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case object
		case result
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.object = try [CodeableReference](from: _container, forKeyIfPresent: .object)
		self.result = try [CodeableReference](from: _container, forKeyIfPresent: .result)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try object?.encode(on: &_container, forKey: .object)
		try result?.encode(on: &_container, forKey: .result)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCaseAssertion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return object == _other.object
		    && result == _other.result
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(object)
		hasher.combine(result)
		hasher.combine(type)
	}
}

/**
 Required criteria to execute the test case.
 
 The required criteria to execute the test case - e.g. preconditions, previous tests.
 */
open class TestPlanTestCaseDependency: BackboneElement {
	
	/// Description of the criteria
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Link to predecessor test plans
	public var predecessor: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		predecessor: Reference? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.predecessor = predecessor
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case predecessor
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.predecessor = try Reference(from: _container, forKeyIfPresent: .predecessor)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try predecessor?.encode(on: &_container, forKey: .predecessor)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCaseDependency else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && predecessor == _other.predecessor
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(predecessor)
	}
}

/**
 The test data used in the test case.
 */
open class TestPlanTestCaseTestData: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The type of test data description, e.g. 'synthea'
	public var type: Coding
	
	/// The actual test resources when they exist
	public var content: Reference?
	
	/// Pointer to a definition of test resources - narrative or structured e.g. synthetic data generation, etc
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Designated initializer taking all required properties
	public init(type: Coding) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		content: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		source: SourceX? = nil,
		type: Coding
	) {
		self.init(type: type)
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case content
		case sourceReference
		case sourceString; case _sourceString
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.content = try Reference(from: _container, forKeyIfPresent: .content)
		var _t_source: SourceX? = nil
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceString, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .string(sourceString)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source
		self.type = try Coding(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try content?.encode(on: &_container, forKey: .content)
		if let _enum = source {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		}
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCaseTestData else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
		hasher.combine(source)
		hasher.combine(type)
	}
}

/**
 The actual test to be executed.
 */
open class TestPlanTestCaseTestRun: BackboneElement {
	
	/// The narrative description of the tests
	public var narrative: FHIRPrimitive<FHIRString>?
	
	/// The test cases in a structured language e.g. gherkin, Postman, or FHIR TestScript
	public var script: TestPlanTestCaseTestRunScript?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		narrative: FHIRPrimitive<FHIRString>? = nil,
		script: TestPlanTestCaseTestRunScript? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.narrative = narrative
		self.script = script
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case narrative; case _narrative
		case script
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.narrative = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .narrative, auxiliaryKey: ._narrative)
		self.script = try TestPlanTestCaseTestRunScript(from: _container, forKeyIfPresent: .script)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try narrative?.encode(on: &_container, forKey: .narrative, auxiliaryKey: ._narrative)
		try script?.encode(on: &_container, forKey: .script)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCaseTestRun else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return narrative == _other.narrative
		    && script == _other.script
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(narrative)
		hasher.combine(script)
	}
}

/**
 The test cases in a structured language e.g. gherkin, Postman, or FHIR TestScript.
 */
open class TestPlanTestCaseTestRunScript: BackboneElement {
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The language for the test cases e.g. 'gherkin', 'testscript'
	public var language: CodeableConcept?
	
	/// The actual content of the cases - references to TestScripts or externally defined content
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		language: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		source: SourceX? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.source = source
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case language
		case sourceReference
		case sourceString; case _sourceString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.language = try CodeableConcept(from: _container, forKeyIfPresent: .language)
		var _t_source: SourceX? = nil
		if let sourceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceString, auxiliaryKey: ._sourceString) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceString, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .string(sourceString)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try language?.encode(on: &_container, forKey: .language)
		if let _enum = source {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .sourceString, auxiliaryKey: ._sourceString)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestPlanTestCaseTestRunScript else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return language == _other.language
		    && source == _other.source
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(language)
		hasher.combine(source)
	}
}
