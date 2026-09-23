//
//  OperationOutcome.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/OperationOutcome)
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
 Information about the success/failure of an action.
 
 A collection of error, warning or information messages that result from a system action.
 */
public struct OperationOutcome: DomainResource {
	
	public static let resourceType: ResourceType = .operationOutcome
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// A single issue associated with the action
	public var issue: [OperationOutcomeIssue]
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		issue: [OperationOutcomeIssue],
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.issue = issue
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case issue
		case language; case _language
		case meta
		case modifierExtension
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
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issue = try [OperationOutcomeIssue](from: _container, forKey: .issue)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issue.encode(on: &_container, forKey: .issue)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A single issue associated with the action.
 
 An error, warning or information message that results from a system action.
 */
public struct OperationOutcomeIssue: BackboneElement {
	
	/// Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable
	/// code from the IssueType value set, and may additional provide its own code for the error in the details element.
	/// Restricted to: ['invalid', 'security', 'processing', 'transient', 'informational']
	public var code: FHIRPrimitive<IssueType>
	
	/// Additional details about the error
	public var details: CodeableConcept?
	
	/// Additional diagnostic information about the issue
	public var diagnostics: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// XPath of element(s) related to issue
	public var location: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates whether the issue indicates a variation from successful processing.
	/// Restricted to: ['fatal', 'error', 'warning', 'information']
	public var severity: FHIRPrimitive<IssueSeverity>
	
	/// Designated initializer
	public init(
		code: FHIRPrimitive<IssueType>,
		details: CodeableConcept? = nil,
		diagnostics: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		severity: FHIRPrimitive<IssueSeverity>
	) {
		self.code = code
		self.details = details
		self.diagnostics = diagnostics
		self.`extension` = `extension`
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
		self.severity = severity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code; case _code
		case details
		case diagnostics; case _diagnostics
		case `extension` = "extension"
		case id; case _id
		case location; case _location
		case modifierExtension
		case severity; case _severity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try FHIRPrimitive<IssueType>(from: _container, forKey: .code, auxiliaryKey: ._code)
		self.details = try CodeableConcept(from: _container, forKeyIfPresent: .details)
		self.diagnostics = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .diagnostics, auxiliaryKey: ._diagnostics)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .location, auxiliaryKey: ._location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.severity = try FHIRPrimitive<IssueSeverity>(from: _container, forKey: .severity, auxiliaryKey: ._severity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code, auxiliaryKey: ._code)
		try details?.encode(on: &_container, forKey: .details)
		try diagnostics?.encode(on: &_container, forKey: .diagnostics, auxiliaryKey: ._diagnostics)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location?.encode(on: &_container, forKey: .location, auxiliaryKey: ._location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try severity.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
	}
}
