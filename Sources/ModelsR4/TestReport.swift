//
//  TestReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/TestReport)
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
 Describes the results of a TestScript execution.
 
 A summary of information based on the results of executing a TestScript.
 */
open class TestReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .testReport }
	
	/// External identifier
	public var identifier: Identifier?
	
	/// Informal name of the executed TestScript
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The current state of this test report.
	public var status: FHIRPrimitive<TestReportStatus>
	
	/// Reference to the  version-specific TestScript that was executed to produce this TestReport
	public var testScript: Reference
	
	/// The overall result from the execution of the TestScript.
	public var result: FHIRPrimitive<TestReportResult>
	
	/// The final score (percentage of tests passed) resulting from the execution of the TestScript
	public var score: FHIRPrimitive<FHIRDecimal>?
	
	/// Name of the tester producing this report (Organization or individual)
	public var tester: FHIRPrimitive<FHIRString>?
	
	/// When the TestScript was executed and this TestReport was generated
	public var issued: FHIRPrimitive<DateTime>?
	
	/// A participant in the test execution, either the execution engine, a client, or a server
	public var participant: [TestReportParticipant]?
	
	/// The results of the series of required setup operations before the tests were executed
	public var setup: TestReportSetup?
	
	/// A test executed from the test script
	public var test: [TestReportTest]?
	
	/// The results of running the series of required clean up steps
	public var teardown: TestReportTeardown?
	
	/// Designated initializer taking all required properties
	public init(result: FHIRPrimitive<TestReportResult>, status: FHIRPrimitive<TestReportStatus>, testScript: Reference) {
		self.result = result
		self.status = status
		self.testScript = testScript
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(result: result, status: status, testScript: testScript)
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
		self.score = score
		self.setup = setup
		self.teardown = teardown
		self.test = test
		self.tester = tester
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case issued; case _issued
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReport else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && issued == _other.issued
		    && name == _other.name
		    && participant == _other.participant
		    && result == _other.result
		    && score == _other.score
		    && setup == _other.setup
		    && status == _other.status
		    && teardown == _other.teardown
		    && test == _other.test
		    && testScript == _other.testScript
		    && tester == _other.tester
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(issued)
		hasher.combine(name)
		hasher.combine(participant)
		hasher.combine(result)
		hasher.combine(score)
		hasher.combine(setup)
		hasher.combine(status)
		hasher.combine(teardown)
		hasher.combine(test)
		hasher.combine(testScript)
		hasher.combine(tester)
	}
}

/**
 A participant in the test execution, either the execution engine, a client, or a server.
 */
open class TestReportParticipant: BackboneElement {
	
	/// The type of participant.
	public var type: FHIRPrimitive<TestReportParticipantType>
	
	/// The uri of the participant. An absolute URL is preferred
	public var uri: FHIRPrimitive<FHIRURI>
	
	/// The display name of the participant
	public var display: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<TestReportParticipantType>, uri: FHIRPrimitive<FHIRURI>) {
		self.type = type
		self.uri = uri
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							display: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: FHIRPrimitive<TestReportParticipantType>,
							uri: FHIRPrimitive<FHIRURI>)
	{
		self.init(type: type, uri: uri)
		self.display = display
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case display; case _display
		case type; case _type
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.display = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .display, auxiliaryKey: ._display)
		self.type = try FHIRPrimitive<TestReportParticipantType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try display?.encode(on: &_container, forKey: .display, auxiliaryKey: ._display)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try uri.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReportParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return display == _other.display
		    && type == _other.type
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(display)
		hasher.combine(type)
		hasher.combine(uri)
	}
}

/**
 The results of the series of required setup operations before the tests were executed.
 */
open class TestReportSetup: BackboneElement {
	
	/// A setup operation or assert that was executed
	public var action: [TestReportSetupAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestReportSetupAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestReportSetupAction],
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
		self.action = try [TestReportSetupAction](from: _container, forKey: .action)
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
		guard let _other = _other as? TestReportSetup else {
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
 A setup operation or assert that was executed.
 
 Action would contain either an operation or an assertion.
 */
open class TestReportSetupAction: BackboneElement {
	
	/// The operation to perform
	public var operation: TestReportSetupActionOperation?
	
	/// The assertion to perform
	public var assert: TestReportSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assert: TestReportSetupActionAssert? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestReportSetupActionOperation? = nil)
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
		self.assert = try TestReportSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.operation = try TestReportSetupActionOperation(from: _container, forKeyIfPresent: .operation)
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
		guard let _other = _other as? TestReportSetupAction else {
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
 
 The results of the assertion performed on the previous operations.
 */
open class TestReportSetupActionAssert: BackboneElement {
	
	/// The result of this assertion.
	public var result: FHIRPrimitive<TestReportActionResult>
	
	/// A message associated with the result
	public var message: FHIRPrimitive<FHIRString>?
	
	/// A link to further details on the result
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(result: FHIRPrimitive<TestReportActionResult>) {
		self.result = result
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							detail: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							message: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							result: FHIRPrimitive<TestReportActionResult>)
	{
		self.init(result: result)
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.message = message
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail; case _detail
		case message; case _message
		case result; case _result
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.message = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .message, auxiliaryKey: ._message)
		self.result = try FHIRPrimitive<TestReportActionResult>(from: _container, forKey: .result, auxiliaryKey: ._result)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try message?.encode(on: &_container, forKey: .message, auxiliaryKey: ._message)
		try result.encode(on: &_container, forKey: .result, auxiliaryKey: ._result)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReportSetupActionAssert else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return detail == _other.detail
		    && message == _other.message
		    && result == _other.result
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(detail)
		hasher.combine(message)
		hasher.combine(result)
	}
}

/**
 The operation to perform.
 
 The operation performed.
 */
open class TestReportSetupActionOperation: BackboneElement {
	
	/// The result of this operation.
	public var result: FHIRPrimitive<TestReportActionResult>
	
	/// A message associated with the result
	public var message: FHIRPrimitive<FHIRString>?
	
	/// A link to further details on the result
	public var detail: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(result: FHIRPrimitive<TestReportActionResult>) {
		self.result = result
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							detail: FHIRPrimitive<FHIRURI>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							message: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							result: FHIRPrimitive<TestReportActionResult>)
	{
		self.init(result: result)
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.message = message
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case detail; case _detail
		case message; case _message
		case result; case _result
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.detail = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.message = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .message, auxiliaryKey: ._message)
		self.result = try FHIRPrimitive<TestReportActionResult>(from: _container, forKey: .result, auxiliaryKey: ._result)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try message?.encode(on: &_container, forKey: .message, auxiliaryKey: ._message)
		try result.encode(on: &_container, forKey: .result, auxiliaryKey: ._result)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReportSetupActionOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return detail == _other.detail
		    && message == _other.message
		    && result == _other.result
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(detail)
		hasher.combine(message)
		hasher.combine(result)
	}
}

/**
 The results of running the series of required clean up steps.
 
 The results of the series of operations required to clean up after all the tests were executed (successfully or
 otherwise).
 */
open class TestReportTeardown: BackboneElement {
	
	/// One or more teardown operations performed
	public var action: [TestReportTeardownAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestReportTeardownAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestReportTeardownAction],
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
		self.action = try [TestReportTeardownAction](from: _container, forKey: .action)
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
		guard let _other = _other as? TestReportTeardown else {
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
 One or more teardown operations performed.
 
 The teardown action will only contain an operation.
 */
open class TestReportTeardownAction: BackboneElement {
	
	/// The teardown operation performed
	public var operation: TestReportSetupActionOperation
	
	/// Designated initializer taking all required properties
	public init(operation: TestReportSetupActionOperation) {
		self.operation = operation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestReportSetupActionOperation)
	{
		self.init(operation: operation)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.operation = try TestReportSetupActionOperation(from: _container, forKey: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try operation.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReportTeardownAction else {
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
 A test executed from the test script.
 */
open class TestReportTest: BackboneElement {
	
	/// Tracking/logging name of this test
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting short description of the test
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A test operation or assert that was performed
	public var action: [TestReportTestAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestReportTestAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [TestReportTestAction],
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(action: action)
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
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestReportTestAction](from: _container, forKey: .action)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestReportTest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && description_fhir == _other.description_fhir
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(description_fhir)
		hasher.combine(name)
	}
}

/**
 A test operation or assert that was performed.
 
 Action would contain either an operation or an assertion.
 */
open class TestReportTestAction: BackboneElement {
	
	/// The operation performed
	public var operation: TestReportSetupActionOperation?
	
	/// The assertion performed
	public var assert: TestReportSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							assert: TestReportSetupActionAssert? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							operation: TestReportSetupActionOperation? = nil)
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
		self.assert = try TestReportSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.operation = try TestReportSetupActionOperation(from: _container, forKeyIfPresent: .operation)
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
		guard let _other = _other as? TestReportTestAction else {
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
