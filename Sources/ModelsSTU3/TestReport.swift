//
//  TestReport.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/TestReport)
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
 Describes the results of a TestScript execution.
 
 A summary of information based on the results of executing a TestScript.
 */
public struct TestReport: DomainResource {
	
	public static let resourceType: ResourceType = .testReport
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// When the TestScript was executed and this TestReport was generated
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Informal name of the executed TestScript
	public var name: FHIRPrimitive<FHIRString>?
	
	/// A participant in the test execution, either the execution engine, a client, or a server
	public var participant: [TestReportParticipant]?
	
	/// The overall result from the execution of the TestScript.
	public var result: FHIRPrimitive<TestReportResult>
	
	/// The final score (percentage of tests passed) resulting from the execution of the TestScript
	public var score: FHIRPrimitive<FHIRDecimal>?
	
	/// The results of the series of required setup operations before the tests were executed
	public var setup: TestReportSetup?
	
	/// The current state of this test report.
	public var status: FHIRPrimitive<TestReportStatus>
	
	/// The results of running the series of required clean up steps
	public var teardown: TestReportTeardown?
	
	/// A test executed from the test script
	public var test: [TestReportTest]?
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport
	public var testScript: Reference
	
	/// Name of the tester producing this report (Organization or individual)
	public var tester: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		issued: FHIRPrimitive<DateTime>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		participant: [TestReportParticipant]? = nil,
		result: FHIRPrimitive<TestReportResult>,
		score: FHIRPrimitive<FHIRDecimal>? = nil,
		setup: TestReportSetup? = nil,
		status: FHIRPrimitive<TestReportStatus>,
		teardown: TestReportTeardown? = nil,
		test: [TestReportTest]? = nil,
		testScript: Reference,
		tester: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issued = issued
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.participant = participant
		self.result = result
		self.score = score
		self.setup = setup
		self.status = status
		self.teardown = teardown
		self.test = test
		self.testScript = testScript
		self.tester = tester
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issued; case _issued
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case participant
		case result; case _result
		case score; case _score
		case setup
		case status; case _status
		case teardown
		case test
		case testScript
		case tester; case _tester
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.participant = try [TestReportParticipant](from: _container, forKeyIfPresent: .participant)
		self.result = try FHIRPrimitive<TestReportResult>(from: _container, forKey: .result, auxiliaryKey: ._result)
		self.score = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .score, auxiliaryKey: ._score)
		self.setup = try TestReportSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<TestReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestReportTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestReportTest](from: _container, forKeyIfPresent: .test)
		self.testScript = try Reference(from: _container, forKey: .testScript)
		self.tester = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .tester, auxiliaryKey: ._tester)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try participant?.encode(on: &_container, forKey: .participant)
		try result.encode(on: &_container, forKey: .result, auxiliaryKey: ._result)
		try score?.encode(on: &_container, forKey: .score, auxiliaryKey: ._score)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try testScript.encode(on: &_container, forKey: .testScript)
		try tester?.encode(on: &_container, forKey: .tester, auxiliaryKey: ._tester)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A participant in the test execution, either the execution engine, a client, or a server.
 */
public struct TestReportParticipant: BackboneElement {
	
	/// The display name of the participant
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The type of participant.
	public var type: FHIRPrimitive<TestReportParticipantType>
	
	/// The uri of the participant. An absolute URL is preferred
	public var uri: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		display: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<TestReportParticipantType>,
		uri: FHIRPrimitive<FHIRURI>
	) {
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type; case _type
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<TestReportParticipantType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 The results of the series of required setup operations before the tests were executed.
 */
public struct TestReportSetup: BackboneElement {
	
	/// A setup operation or assert that was executed
	public var action: [TestReportSetupAction]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: [TestReportSetupAction],
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
		self.action = try [TestReportSetupAction](from: _container, forKey: .action)
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
 A setup operation or assert that was executed.
 
 Action would contain either an operation or an assertion.
 */
public struct TestReportSetupAction: BackboneElement {
	
	/// The assertion to perform
	public var assert: TestReportSetupActionAssert?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The operation to perform
	public var operation: TestReportSetupActionOperation?
	
	/// Designated initializer
	public init(
		assert: TestReportSetupActionAssert? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestReportSetupActionOperation? = nil
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
		self.assert = try TestReportSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try TestReportSetupActionOperation(from: _container, forKeyIfPresent: .operation)
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
 
 The results of the assertion performed on the previous operations.
 */
public struct TestReportSetupActionAssert: BackboneElement {
	
	/// A link to further details on the result
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A message associated with the result
	public var message: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The result of this assertion.
	public var result: FHIRPrimitive<TestReportActionResult>
	
	/// Designated initializer
	public init(
		detail: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		message: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		result: FHIRPrimitive<TestReportActionResult>
	) {
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.message = message
		self.modifierExtension = modifierExtension
		self.result = result
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail; case _detail
		case `extension` = "extension"
		case id; case _id
		case message; case _message
		case modifierExtension
		case result; case _result
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.message = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .message, auxiliaryKey: ._message)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.result = try FHIRPrimitive<TestReportActionResult>(from: _container, forKey: .result, auxiliaryKey: ._result)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try message?.encode(on: &_container, forKey: .message, auxiliaryKey: ._message)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try result.encode(on: &_container, forKey: .result, auxiliaryKey: ._result)
	}
}

/**
 The operation to perform.
 
 The operation performed.
 */
public struct TestReportSetupActionOperation: BackboneElement {
	
	/// A link to further details on the result
	public var detail: FHIRPrimitive<FHIRURI>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A message associated with the result
	public var message: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The result of this operation.
	public var result: FHIRPrimitive<TestReportActionResult>
	
	/// Designated initializer
	public init(
		detail: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		message: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		result: FHIRPrimitive<TestReportActionResult>
	) {
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.message = message
		self.modifierExtension = modifierExtension
		self.result = result
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail; case _detail
		case `extension` = "extension"
		case id; case _id
		case message; case _message
		case modifierExtension
		case result; case _result
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.detail = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.message = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .message, auxiliaryKey: ._message)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.result = try FHIRPrimitive<TestReportActionResult>(from: _container, forKey: .result, auxiliaryKey: ._result)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try message?.encode(on: &_container, forKey: .message, auxiliaryKey: ._message)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try result.encode(on: &_container, forKey: .result, auxiliaryKey: ._result)
	}
}

/**
 The results of running the series of required clean up steps.
 
 The results of the series of operations required to clean up after the all the tests were executed (successfully or
 otherwise).
 */
public struct TestReportTeardown: BackboneElement {
	
	/// One or more teardown operations performed
	public var action: [TestReportTeardownAction]
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: [TestReportTeardownAction],
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
		self.action = try [TestReportTeardownAction](from: _container, forKey: .action)
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
 One or more teardown operations performed.
 
 The teardown action will only contain an operation.
 */
public struct TestReportTeardownAction: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The teardown operation performed
	public var operation: TestReportSetupActionOperation
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestReportSetupActionOperation
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
		self.operation = try TestReportSetupActionOperation(from: _container, forKey: .operation)
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
 A test executed from the test script.
 */
public struct TestReportTest: BackboneElement {
	
	/// A test operation or assert that was performed
	public var action: [TestReportTestAction]
	
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
		action: [TestReportTestAction],
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
		self.action = try [TestReportTestAction](from: _container, forKey: .action)
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
 A test operation or assert that was performed.
 
 Action would contain either an operation or an assertion.
 */
public struct TestReportTestAction: BackboneElement {
	
	/// The assertion performed
	public var assert: TestReportSetupActionAssert?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The operation performed
	public var operation: TestReportSetupActionOperation?
	
	/// Designated initializer
	public init(
		assert: TestReportSetupActionAssert? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestReportSetupActionOperation? = nil
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
		self.assert = try TestReportSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operation = try TestReportSetupActionOperation(from: _container, forKeyIfPresent: .operation)
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
