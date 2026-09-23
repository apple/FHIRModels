//
//  ResearchSubject.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ResearchSubject)
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
 Participant or object which is the recipient of investigative activities in a study.
 
 A ResearchSubject is a participant or object which is the recipient of investigative activities in a research study.
 */
public struct ResearchSubject: DomainResource {
	
	public static let resourceType: ResourceType = .researchSubject
	
	/// A group to which the subject is assigned
	public var comparisonGroup: [CodeableReference]?
	
	/// Agreement to participate in study
	public var consent: [Reference]?
	
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
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Start and end of participation
	public var period: Period?
	
	/// The publication state of the resource (not of the subject).
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Study subject is part of
	public var study: Reference
	
	/// Who or what is part of study
	public var subject: Reference
	
	/// A significant event in the progress of a ResearchSubject
	public var subjectMilestone: [ResearchSubjectSubjectMilestone]?
	
	/// A duration in the lifecycle of the ResearchSubject within a ResearchStudy
	public var subjectState: [ResearchSubjectSubjectState]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		comparisonGroup: [CodeableReference]? = nil,
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
		self.comparisonGroup = comparisonGroup
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
		self.status = status
		self.study = study
		self.subject = subject
		self.subjectMilestone = subjectMilestone
		self.subjectState = subjectState
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case comparisonGroup
		case consent
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case period
		case status; case _status
		case study
		case subject
		case subjectMilestone
		case subjectState
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comparisonGroup = try [CodeableReference](from: _container, forKeyIfPresent: .comparisonGroup)
		self.consent = try [Reference](from: _container, forKeyIfPresent: .consent)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try Reference(from: _container, forKey: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.subjectMilestone = try [ResearchSubjectSubjectMilestone](from: _container, forKeyIfPresent: .subjectMilestone)
		self.subjectState = try [ResearchSubjectSubjectState](from: _container, forKeyIfPresent: .subjectState)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try comparisonGroup?.encode(on: &_container, forKey: .comparisonGroup)
		try consent?.encode(on: &_container, forKey: .consent)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try subjectMilestone?.encode(on: &_container, forKey: .subjectMilestone)
		try subjectState?.encode(on: &_container, forKey: .subjectState)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A significant event in the progress of a ResearchSubject.
 */
public struct ResearchSubjectSubjectMilestone: BackboneElement {
	
	/// The date/time when this milestone event was completed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// None
	public var milestone: CodeableConcept
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// None
	public var reason: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		milestone: CodeableConcept,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.milestone = milestone
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case milestone
		case modifierExtension
		case reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.milestone = try CodeableConcept(from: _container, forKey: .milestone)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try milestone.encode(on: &_container, forKey: .milestone)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
	}
}

/**
 A duration in the lifecycle of the ResearchSubject within a ResearchStudy.
 */
public struct ResearchSubjectSubjectState: BackboneElement {
	
	/// candidate | in-prescreening | in-screening | eligible | ineligible | on-study | on-study-intervention | in-
	/// follow-up | off-study
	public var code: CodeableConcept
	
	/// The date a research subject exited or left the given state
	public var endDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// State change reason
	public var reason: CodeableConcept?
	
	/// The date a research subject entered the given state
	public var startDate: FHIRPrimitive<DateTime>
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		endDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		startDate: FHIRPrimitive<DateTime>
	) {
		self.code = code
		self.endDate = endDate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.startDate = startDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case endDate; case _endDate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case startDate; case _startDate
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.endDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .endDate, auxiliaryKey: ._endDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.startDate = try FHIRPrimitive<DateTime>(from: _container, forKey: .startDate, auxiliaryKey: ._startDate)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try endDate?.encode(on: &_container, forKey: .endDate, auxiliaryKey: ._endDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try startDate.encode(on: &_container, forKey: .startDate, auxiliaryKey: ._startDate)
	}
}
