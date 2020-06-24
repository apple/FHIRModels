//
//  OperationOutcome.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/OperationOutcome)
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
 Information about the success/failure of an action.
 
 A collection of error, warning or information messages that result from a system action.
 */
open class OperationOutcome: DomainResource {
	
	override open class var resourceType: ResourceType { return .operationOutcome }
	
	/// A single issue associated with the action
	public var issue: [OperationOutcomeIssue]
	
	/// Designated initializer taking all required properties
	public init(issue: [OperationOutcomeIssue]) {
		self.issue = issue
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							issue: [OperationOutcomeIssue],
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							text: Narrative? = nil)
	{
		self.init(issue: issue)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case issue
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.issue = try [OperationOutcomeIssue](from: _container, forKey: .issue)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try issue.encode(on: &_container, forKey: .issue)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationOutcome else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return issue == _other.issue
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(issue)
	}
}

/**
 A single issue associated with the action.
 
 An error, warning or information message that results from a system action.
 */
open class OperationOutcomeIssue: BackboneElement {
	
	/// Indicates whether the issue indicates a variation from successful processing.
	/// Restricted to: ['fatal', 'error', 'warning', 'information']
	public var severity: FHIRPrimitive<IssueSeverity>
	
	/// Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable
	/// code from the IssueType value set, and may additional provide its own code for the error in the details element.
	/// Restricted to: ['invalid', 'security', 'processing', 'transient', 'informational']
	public var code: FHIRPrimitive<IssueType>
	
	/// Additional details about the error
	public var details: CodeableConcept?
	
	/// Additional diagnostic information about the issue
	public var diagnostics: FHIRPrimitive<FHIRString>?
	
	/// XPath of element(s) related to issue
	public var location: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	public init(code: FHIRPrimitive<IssueType>, severity: FHIRPrimitive<IssueSeverity>) {
		self.code = code
		self.severity = severity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: FHIRPrimitive<IssueType>,
							details: CodeableConcept? = nil,
							diagnostics: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							location: [FHIRPrimitive<FHIRString>]? = nil,
							modifierExtension: [Extension]? = nil,
							severity: FHIRPrimitive<IssueSeverity>)
	{
		self.init(code: code, severity: severity)
		self.details = details
		self.diagnostics = diagnostics
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case details
		case diagnostics; case _diagnostics
		case location; case _location
		case severity; case _severity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try FHIRPrimitive<IssueType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.details = try CodeableConcept(from: _container, forKeyIfPresent: .details)
		self.diagnostics = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .diagnostics, auxiliaryKey: ._diagnostics)
		self.location = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .location, auxiliaryKey: ._location)
		self.severity = try FHIRPrimitive<IssueSeverity>(from: _container, forKey: .severity, auxiliaryKey: ._severity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try details?.encode(on: &_container, forKey: .details)
		try diagnostics?.encode(on: &_container, forKey: .diagnostics, auxiliaryKey: ._diagnostics)
		try location?.encode(on: &_container, forKey: .location, auxiliaryKey: ._location)
		try severity.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OperationOutcomeIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && details == _other.details
		    && diagnostics == _other.diagnostics
		    && location == _other.location
		    && severity == _other.severity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(details)
		hasher.combine(diagnostics)
		hasher.combine(location)
		hasher.combine(severity)
	}
}
