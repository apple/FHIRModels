//
//  ResearchSubject.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ResearchSubject)
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
 Physical entity which is the primary unit of interest in the study.
 
 A physical entity which is the primary unit of operational and/or administrative interest in a study.
 */
public struct ResearchSubject: DomainResource {
	
	public static let resourceType: ResourceType = .researchSubject
	
	/// What path was followed
	public var actualArm: FHIRPrimitive<FHIRString>?
	
	/// What path should be followed
	public var assignedArm: FHIRPrimitive<FHIRString>?
	
	/// Agreement to participate in study
	public var consent: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for research subject in a study
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Who is part of study
	public var individual: Reference
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Start and end of participation
	public var period: Period?
	
	/// The current state of the subject.
	public var status: FHIRPrimitive<ResearchSubjectStatus>
	
	/// Study subject is part of
	public var study: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		actualArm: FHIRPrimitive<FHIRString>? = nil,
		assignedArm: FHIRPrimitive<FHIRString>? = nil,
		consent: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		individual: Reference,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		status: FHIRPrimitive<ResearchSubjectStatus>,
		study: Reference,
		text: Narrative? = nil
	) {
		self.actualArm = actualArm
		self.assignedArm = assignedArm
		self.consent = consent
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.individual = individual
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.status = status
		self.study = study
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actualArm; case _actualArm
		case assignedArm; case _assignedArm
		case consent
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case individual
		case language; case _language
		case meta
		case modifierExtension
		case period
		case status; case _status
		case study
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actualArm = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .actualArm, auxiliaryKey: ._actualArm)
		self.assignedArm = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assignedArm, auxiliaryKey: ._assignedArm)
		self.consent = try Reference(from: _container, forKeyIfPresent: .consent)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.individual = try Reference(from: _container, forKey: .individual)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<ResearchSubjectStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try Reference(from: _container, forKey: .study)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try actualArm?.encode(on: &_container, forKey: .actualArm, auxiliaryKey: ._actualArm)
		try assignedArm?.encode(on: &_container, forKey: .assignedArm, auxiliaryKey: ._assignedArm)
		try consent?.encode(on: &_container, forKey: .consent)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try individual.encode(on: &_container, forKey: .individual)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study.encode(on: &_container, forKey: .study)
		try text?.encode(on: &_container, forKey: .text)
	}
}
