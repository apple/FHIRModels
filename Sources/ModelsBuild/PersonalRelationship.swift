//
//  PersonalRelationship.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/PersonalRelationship)
//  Copyright 2024 Apple Inc.
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
 A relationship between two indiduals.
 
 The details of a direct relationship between two individuals. It does not contain information about the individuals
 themselves, just the relationship itself.
 */
open class PersonalRelationship: DomainResource {
	
	override open class var resourceType: ResourceType { return .personalRelationship }
	
	/// The individual that is the the source of the relationship
	public var source: Reference
	
	/// The relationship between the source and the target individuals
	public var relationshipType: CodeableConcept
	
	/// The individual that is the the target of the relationship
	public var target: Reference
	
	/// The period of time during which the relationship is active
	public var period: [Period]?
	
	/// The confidence level of this relationship
	public var confidence: CodeableConcept?
	
	/// Who has asserted the details of the relationship
	public var asserter: Reference?
	
	/// This relationship is applicable to the referenced group(s)
	public var group: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(relationshipType: CodeableConcept, source: Reference, target: Reference) {
		self.relationshipType = relationshipType
		self.source = source
		self.target = target
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asserter: Reference? = nil,
		confidence: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		group: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: [Period]? = nil,
		relationshipType: CodeableConcept,
		source: Reference,
		target: Reference,
		text: Narrative? = nil
	) {
		self.init(relationshipType: relationshipType, source: source, target: target)
		self.asserter = asserter
		self.confidence = confidence
		self.contained = contained
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asserter
		case confidence
		case group
		case period
		case relationshipType
		case source
		case target
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.confidence = try CodeableConcept(from: _container, forKeyIfPresent: .confidence)
		self.group = try [Reference](from: _container, forKeyIfPresent: .group)
		self.period = try [Period](from: _container, forKeyIfPresent: .period)
		self.relationshipType = try CodeableConcept(from: _container, forKey: .relationshipType)
		self.source = try Reference(from: _container, forKey: .source)
		self.target = try Reference(from: _container, forKey: .target)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asserter?.encode(on: &_container, forKey: .asserter)
		try confidence?.encode(on: &_container, forKey: .confidence)
		try group?.encode(on: &_container, forKey: .group)
		try period?.encode(on: &_container, forKey: .period)
		try relationshipType.encode(on: &_container, forKey: .relationshipType)
		try source.encode(on: &_container, forKey: .source)
		try target.encode(on: &_container, forKey: .target)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PersonalRelationship else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asserter == _other.asserter
		    && confidence == _other.confidence
		    && group == _other.group
		    && period == _other.period
		    && relationshipType == _other.relationshipType
		    && source == _other.source
		    && target == _other.target
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asserter)
		hasher.combine(confidence)
		hasher.combine(group)
		hasher.combine(period)
		hasher.combine(relationshipType)
		hasher.combine(source)
		hasher.combine(target)
	}
}
