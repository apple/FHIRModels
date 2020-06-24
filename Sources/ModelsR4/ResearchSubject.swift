//
//  ResearchSubject.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ResearchSubject)
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
 Physical entity which is the primary unit of interest in the study.
 
 A physical entity which is the primary unit of operational and/or administrative interest in a study.
 */
open class ResearchSubject: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchSubject }
	
	/// Business Identifier for research subject in a study
	public var identifier: [Identifier]?
	
	/// The current state of the subject.
	public var status: FHIRPrimitive<ResearchSubjectStatus>
	
	/// Start and end of participation
	public var period: Period?
	
	/// Study subject is part of
	public var study: Reference
	
	/// Who is part of study
	public var individual: Reference
	
	/// What path should be followed
	public var assignedArm: FHIRPrimitive<FHIRString>?
	
	/// What path was followed
	public var actualArm: FHIRPrimitive<FHIRString>?
	
	/// Agreement to participate in study
	public var consent: Reference?
	
	/// Designated initializer taking all required properties
	public init(individual: Reference, status: FHIRPrimitive<ResearchSubjectStatus>, study: Reference) {
		self.individual = individual
		self.status = status
		self.study = study
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(individual: individual, status: status, study: study)
		self.actualArm = actualArm
		self.assignedArm = assignedArm
		self.consent = consent
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualArm; case _actualArm
		case assignedArm; case _assignedArm
		case consent
		case identifier
		case individual
		case period
		case status; case _status
		case study
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualArm = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .actualArm, auxiliaryKey: ._actualArm)
		self.assignedArm = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assignedArm, auxiliaryKey: ._assignedArm)
		self.consent = try Reference(from: _container, forKeyIfPresent: .consent)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.individual = try Reference(from: _container, forKey: .individual)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<ResearchSubjectStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try Reference(from: _container, forKey: .study)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actualArm?.encode(on: &_container, forKey: .actualArm, auxiliaryKey: ._actualArm)
		try assignedArm?.encode(on: &_container, forKey: .assignedArm, auxiliaryKey: ._assignedArm)
		try consent?.encode(on: &_container, forKey: .consent)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try individual.encode(on: &_container, forKey: .individual)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study.encode(on: &_container, forKey: .study)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchSubject else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actualArm == _other.actualArm
		    && assignedArm == _other.assignedArm
		    && consent == _other.consent
		    && identifier == _other.identifier
		    && individual == _other.individual
		    && period == _other.period
		    && status == _other.status
		    && study == _other.study
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualArm)
		hasher.combine(assignedArm)
		hasher.combine(consent)
		hasher.combine(identifier)
		hasher.combine(individual)
		hasher.combine(period)
		hasher.combine(status)
		hasher.combine(study)
	}
}
