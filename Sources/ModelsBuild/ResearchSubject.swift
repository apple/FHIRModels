//
//  ResearchSubject.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ResearchSubject)
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
 Participant or object which is the recipient of investigative activities in a study.
 
 A ResearchSubject is a participant or object which is the recipient of investigative activities in a research study.
 */
open class ResearchSubject: DomainResource {
	
	override open class var resourceType: ResourceType { return .researchSubject }
	
	/// Business Identifier for research subject in a study
	public var identifier: [Identifier]?
	
	/// The publication state of the resource (not of the subject).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Start and end of participation
	public var period: Period?
	
	/// Study subject is part of
	public var study: Reference
	
	/// Who or what is part of study
	public var subject: Reference
	
	/// A duration in the lifecycle of the ResearchSubject within a ResearchStudy
	public var subjectState: [ResearchSubjectSubjectState]?
	
	/// A significant event in the progress of a ResearchSubject
	public var subjectMilestone: [ResearchSubjectSubjectMilestone]?
	
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
		status: FHIRPrimitive<PublicationStatus>,
		study: Reference,
		subject: Reference,
		subjectMilestone: [ResearchSubjectSubjectMilestone]? = nil,
		subjectState: [ResearchSubjectSubjectState]? = nil,
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
		self.subjectMilestone = subjectMilestone
		self.subjectState = subjectState
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualComparisonGroup; case _actualComparisonGroup
		case assignedComparisonGroup; case _assignedComparisonGroup
		case consent
		case identifier
		case period
		case status; case _status
		case study
		case subject
		case subjectMilestone
		case subjectState
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
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try Reference(from: _container, forKey: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.subjectMilestone = try [ResearchSubjectSubjectMilestone](from: _container, forKeyIfPresent: .subjectMilestone)
		self.subjectState = try [ResearchSubjectSubjectState](from: _container, forKeyIfPresent: .subjectState)
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
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try subjectMilestone?.encode(on: &_container, forKey: .subjectMilestone)
		try subjectState?.encode(on: &_container, forKey: .subjectState)
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
		    && status == _other.status
		    && study == _other.study
		    && subject == _other.subject
		    && subjectMilestone == _other.subjectMilestone
		    && subjectState == _other.subjectState
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualComparisonGroup)
		hasher.combine(assignedComparisonGroup)
		hasher.combine(consent)
		hasher.combine(identifier)
		hasher.combine(period)
		hasher.combine(status)
		hasher.combine(study)
		hasher.combine(subject)
		hasher.combine(subjectMilestone)
		hasher.combine(subjectState)
	}
}

/**
 A significant event in the progress of a ResearchSubject.
 */
open class ResearchSubjectSubjectMilestone: BackboneElement {
	
	/// SignedUp | Screened | Randomized
	public var milestone: [CodeableConcept]
	
	/// The date/time when this milestone event was completed
	public var date: FHIRPrimitive<DateTime>?
	
	/// None
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(milestone: [CodeableConcept]) {
		self.milestone = milestone
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		milestone: [CodeableConcept],
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil
	) {
		self.init(milestone: milestone)
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case milestone
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.milestone = try [CodeableConcept](from: _container, forKey: .milestone)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try milestone.encode(on: &_container, forKey: .milestone)
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchSubjectSubjectMilestone else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && milestone == _other.milestone
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(milestone)
		hasher.combine(reason)
	}
}

/**
 A duration in the lifecycle of the ResearchSubject within a ResearchStudy.
 */
open class ResearchSubjectSubjectState: BackboneElement {
	
	/// candidate | in-prescreening | in-screening | eligible | ineligible | on-study | on-study-intervention | in-
	/// follow-up | off-study
	public var code: CodeableConcept
	
	/// The date a research subject entered the given state
	public var startDate: FHIRPrimitive<DateTime>
	
	/// The date a research subject exited or left the given state
	public var endDate: FHIRPrimitive<DateTime>?
	
	/// State change reason
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, startDate: FHIRPrimitive<DateTime>) {
		self.code = code
		self.startDate = startDate
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		endDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		startDate: FHIRPrimitive<DateTime>
	) {
		self.init(code: code, startDate: startDate)
		self.endDate = endDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case endDate; case _endDate
		case reason
		case startDate; case _startDate
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.endDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .endDate, auxiliaryKey: ._endDate)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.startDate = try FHIRPrimitive<DateTime>(from: _container, forKey: .startDate, auxiliaryKey: ._startDate)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try endDate?.encode(on: &_container, forKey: .endDate, auxiliaryKey: ._endDate)
		try reason?.encode(on: &_container, forKey: .reason)
		try startDate.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ResearchSubjectSubjectState else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && endDate == _other.endDate
		    && reason == _other.reason
		    && startDate == _other.startDate
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(endDate)
		hasher.combine(reason)
		hasher.combine(startDate)
	}
}
