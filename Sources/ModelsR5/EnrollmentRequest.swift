//
//  EnrollmentRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest)
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
 Enroll in coverage.
 
 This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
 */
public struct EnrollmentRequest: DomainResource {
	
	public static let resourceType: ResourceType = .enrollmentRequest
	
	/// The subject to be enrolled
	public var candidate: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Target
	public var insurer: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		candidate: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: Reference? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurer: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		provider: Reference? = nil,
		status: FHIRPrimitive<FinancialResourceStatusCodes>? = nil,
		text: Narrative? = nil
	) {
		self.candidate = candidate
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurer = insurer
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.provider = provider
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case candidate
		case contained
		case coverage
		case created; case _created
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurer
		case language; case _language
		case meta
		case modifierExtension
		case provider
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.candidate = try Reference(from: _container, forKeyIfPresent: .candidate)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try candidate?.encode(on: &_container, forKey: .candidate)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try provider?.encode(on: &_container, forKey: .provider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}
