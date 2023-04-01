//
//  ResearchSubject.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ResearchSubject)
//  Copyright 2023 Apple Inc.
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
 Participant or object which is the recipient of investigative activities in a study.
 
 A ResearchSubject is a participant or object which is the recipient of investigative activities in a research study.
 */
open class ResearchSubject: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchSubject }
	
	/// Business Identifier for research subject in a study
	public var identifier: [Identifier]?
	
	/// The publication state of the resource (not of the subject).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Subject status
	public var progress: [ResearchSubjectProgress]?
	
	/// Start and end of participation
	public var period: Period?
	
	/// Study subject is part of
	public var study: Reference
	
	/// Who or what is part of study
	public var subject: Reference
	
	/// What path should be followed
	public var assignedComparisonGroup: FHIRPrimitive<FHIRString>?
	
	/// What path was followed
	public var actualComparisonGroup: FHIRPrimitive<FHIRString>?
	
	/// Agreement to participate in study
	public var consent: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, study: Reference, subject: Reference) {
		self.status = status
		self.study = study
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actualComparisonGroup: FHIRPrimitive<FHIRString>? = nil,
		assignedComparisonGroup: FHIRPrimitive<FHIRString>? = nil,
		consent: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		progress: [ResearchSubjectProgress]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		study: Reference,
		subject: Reference,
		text: Narrative? = nil
	) {
		self.init(status: status, study: study, subject: subject)
		self.actualComparisonGroup = actualComparisonGroup
		self.assignedComparisonGroup = assignedComparisonGroup
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
		self.progress = progress
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualComparisonGroup; case _actualComparisonGroup
		case assignedComparisonGroup; case _assignedComparisonGroup
		case consent
		case identifier
		case period
		case progress
		case status; case _status
		case study
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualComparisonGroup = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .actualComparisonGroup, auxiliaryKey: ._actualComparisonGroup)
		self.assignedComparisonGroup = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .assignedComparisonGroup, auxiliaryKey: ._assignedComparisonGroup)
		self.consent = try [Reference](from: _container, forKeyIfPresent: .consent)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.progress = try [ResearchSubjectProgress](from: _container, forKeyIfPresent: .progress)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try Reference(from: _container, forKey: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actualComparisonGroup?.encode(on: &_container, forKey: .actualComparisonGroup, auxiliaryKey: ._actualComparisonGroup)
		try assignedComparisonGroup?.encode(on: &_container, forKey: .assignedComparisonGroup, auxiliaryKey: ._assignedComparisonGroup)
		try consent?.encode(on: &_container, forKey: .consent)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try period?.encode(on: &_container, forKey: .period)
		try progress?.encode(on: &_container, forKey: .progress)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
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
		return actualComparisonGroup == _other.actualComparisonGroup
		    && assignedComparisonGroup == _other.assignedComparisonGroup
		    && consent == _other.consent
		    && identifier == _other.identifier
		    && period == _other.period
		    && progress == _other.progress
		    && status == _other.status
		    && study == _other.study
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualComparisonGroup)
		hasher.combine(assignedComparisonGroup)
		hasher.combine(consent)
		hasher.combine(identifier)
		hasher.combine(period)
		hasher.combine(progress)
		hasher.combine(status)
		hasher.combine(study)
		hasher.combine(subject)
	}
}

/**
 Subject status.
 
 The current state (status) of the subject and resons for status change where appropriate.
 */
open class ResearchSubjectProgress: BackboneElement {
	
	/// state | milestone
	public var type: CodeableConcept?
	
	/// candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention |
	/// on-study-observation | pending-on-study | potential-candidate | screening | withdrawn
	public var subjectState: CodeableConcept?
	
	/// SignedUp | Screened | Randomized
	public var milestone: CodeableConcept?
	
	/// State change reason
	public var reason: CodeableConcept?
	
	/// State change date
	public var startDate: FHIRPrimitive<DateTime>?
	
	/// State change date
	public var endDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		endDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		milestone: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		startDate: FHIRPrimitive<DateTime>? = nil,
		subjectState: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.endDate = endDate
		self.`extension` = `extension`
		self.id = id
		self.milestone = milestone
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.startDate = startDate
		self.subjectState = subjectState
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case endDate; case _endDate
		case milestone
		case reason
		case startDate; case _startDate
		case subjectState
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.endDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .endDate, auxiliaryKey: ._endDate)
		self.milestone = try CodeableConcept(from: _container, forKeyIfPresent: .milestone)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.startDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .startDate, auxiliaryKey: ._startDate)
		self.subjectState = try CodeableConcept(from: _container, forKeyIfPresent: .subjectState)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try endDate?.encode(on: &_container, forKey: .endDate, auxiliaryKey: ._endDate)
		try milestone?.encode(on: &_container, forKey: .milestone)
		try reason?.encode(on: &_container, forKey: .reason)
		try startDate?.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try subjectState?.encode(on: &_container, forKey: .subjectState)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchSubjectProgress else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return endDate == _other.endDate
		    && milestone == _other.milestone
		    && reason == _other.reason
		    && startDate == _other.startDate
		    && subjectState == _other.subjectState
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(endDate)
		hasher.combine(milestone)
		hasher.combine(reason)
		hasher.combine(startDate)
		hasher.combine(subjectState)
		hasher.combine(type)
	}
}
