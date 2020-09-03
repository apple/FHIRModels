//
//  EnrollmentRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest)
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
 Enroll in coverage.
 
 This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
 */
open class EnrollmentRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .enrollmentRequest }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Target
	public var insurer: Reference?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// The subject to be enrolled
	public var candidate: Reference?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case candidate
		case coverage
		case created; case _created
		case identifier
		case insurer
		case provider
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.candidate = try Reference(from: _container, forKeyIfPresent: .candidate)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try candidate?.encode(on: &_container, forKey: .candidate)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try provider?.encode(on: &_container, forKey: .provider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return candidate == _other.candidate
		    && coverage == _other.coverage
		    && created == _other.created
		    && identifier == _other.identifier
		    && insurer == _other.insurer
		    && provider == _other.provider
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(candidate)
		hasher.combine(coverage)
		hasher.combine(created)
		hasher.combine(identifier)
		hasher.combine(insurer)
		hasher.combine(provider)
		hasher.combine(status)
	}
}
