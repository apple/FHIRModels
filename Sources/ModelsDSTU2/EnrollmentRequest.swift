//
//  EnrollmentRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest)
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
 Enrollment request.
 
 This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
 */
open class EnrollmentRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .enrollmentRequest }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Insurer
	public var target: Reference?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// The subject of the Products and Services
	public var subject: Reference
	
	/// Insurance information
	public var coverage: Reference
	
	/// Patient relationship to subscriber
	public var relationship: Coding
	
	/// Designated initializer taking all required properties
	public init(coverage: Reference, relationship: Coding, subject: Reference) {
		self.coverage = coverage
		self.relationship = relationship
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							coverage: Reference,
							created: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							originalRuleset: Coding? = nil,
							provider: Reference? = nil,
							relationship: Coding,
							ruleset: Coding? = nil,
							subject: Reference,
							target: Reference? = nil,
							text: Narrative? = nil)
	{
		self.init(coverage: coverage, relationship: relationship, subject: subject)
		self.contained = contained
		self.created = created
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.originalRuleset = originalRuleset
		self.provider = provider
		self.ruleset = ruleset
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coverage
		case created; case _created
		case identifier
		case organization
		case originalRuleset
		case provider
		case relationship
		case ruleset
		case subject
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coverage = try Reference(from: _container, forKey: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.relationship = try Coding(from: _container, forKey: .relationship)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coverage.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try provider?.encode(on: &_container, forKey: .provider)
		try relationship.encode(on: &_container, forKey: .relationship)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
		try subject.encode(on: &_container, forKey: .subject)
		try target?.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EnrollmentRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coverage == _other.coverage
		    && created == _other.created
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && originalRuleset == _other.originalRuleset
		    && provider == _other.provider
		    && relationship == _other.relationship
		    && ruleset == _other.ruleset
		    && subject == _other.subject
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coverage)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(originalRuleset)
		hasher.combine(provider)
		hasher.combine(relationship)
		hasher.combine(ruleset)
		hasher.combine(subject)
		hasher.combine(target)
	}
}
