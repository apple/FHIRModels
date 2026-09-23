//
//  DetectedIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DetectedIssue)
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
 Clinical issue with action.
 
 Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a
 patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, gaps in care, etc.
 */
public struct DetectedIssue: DomainResource {
	
	public static let resourceType: ResourceType = .detectedIssue
	
	/// All possible types for "identified[x]"
	public enum IdentifiedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// The provider or device that identified the issue
	public var author: Reference?
	
	/// High level categorization of detected issue
	public var category: [CodeableConcept]?
	
	/// Specific type of detected issue, e.g. drug-drug, duplicate therapy, etc
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Description and context
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Encounter the detected issue is part of
	public var encounter: Reference?
	
	/// Supporting evidence
	public var evidence: [DetectedIssueEvidence]?
	
	/// Time frame of clinical effect
	public var expectedOnsetType: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When detected issue occurred/is occurring
	/// One of `identified[x]`
	public var identified: IdentifiedX?
	
	/// Business identifier for detected issue
	public var identifier: [Identifier]?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Importance of taking action on the issue
	public var managementCode: CodeableConcept?
	
	/// What medication class
	public var medicationClass: [CodeableConcept]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Step taken to address
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The quality of the evidence supporting the detected issue
	public var qualityOfEvidence: CodeableConcept?
	
	/// Authority for issue
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// high | moderate | low
	public var severity: CodeableConcept?
	
	/// preliminary | final | entered-in-error | unknown | mitigated | processing-error
	public var status: FHIRPrimitive<FHIRString>
	
	/// Associated subject
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		author: Reference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		detail: FHIRPrimitive<FHIRString>? = nil,
		encounter: Reference? = nil,
		evidence: [DetectedIssueEvidence]? = nil,
		expectedOnsetType: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identified: IdentifiedX? = nil,
		identifier: [Identifier]? = nil,
		implicated: [Reference]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managementCode: CodeableConcept? = nil,
		medicationClass: [CodeableConcept]? = nil,
		meta: Meta? = nil,
		mitigation: [DetectedIssueMitigation]? = nil,
		modifierExtension: [Extension]? = nil,
		qualityOfEvidence: CodeableConcept? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil,
		severity: CodeableConcept? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.author = author
		self.category = category
		self.code = code
		self.contained = contained
		self.detail = detail
		self.encounter = encounter
		self.evidence = evidence
		self.expectedOnsetType = expectedOnsetType
		self.`extension` = `extension`
		self.id = id
		self.identified = identified
		self.identifier = identifier
		self.implicated = implicated
		self.implicitRules = implicitRules
		self.language = language
		self.managementCode = managementCode
		self.medicationClass = medicationClass
		self.meta = meta
		self.mitigation = mitigation
		self.modifierExtension = modifierExtension
		self.qualityOfEvidence = qualityOfEvidence
		self.reference = reference
		self.severity = severity
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case category
		case code
		case contained
		case detail; case _detail
		case encounter
		case evidence
		case expectedOnsetType
		case `extension` = "extension"
		case id; case _id
		case identifiedDateTime; case _identifiedDateTime
		case identifiedPeriod
		case identifiedTiming
		case identifier
		case implicated
		case implicitRules; case _implicitRules
		case language; case _language
		case managementCode
		case medicationClass
		case meta
		case mitigation
		case modifierExtension
		case qualityOfEvidence
		case reference; case _reference
		case severity
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evidence = try [DetectedIssueEvidence](from: _container, forKeyIfPresent: .evidence)
		self.expectedOnsetType = try CodeableConcept(from: _container, forKeyIfPresent: .expectedOnsetType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identified = try Self._decodeIdentified(from: _container)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicated = try [Reference](from: _container, forKeyIfPresent: .implicated)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managementCode = try CodeableConcept(from: _container, forKeyIfPresent: .managementCode)
		self.medicationClass = try [CodeableConcept](from: _container, forKeyIfPresent: .medicationClass)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mitigation = try [DetectedIssueMitigation](from: _container, forKeyIfPresent: .mitigation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.qualityOfEvidence = try CodeableConcept(from: _container, forKeyIfPresent: .qualityOfEvidence)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try expectedOnsetType?.encode(on: &_container, forKey: .expectedOnsetType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = identified {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .identifiedDateTime, auxiliaryKey: ._identifiedDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .identifiedPeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .identifiedTiming)
		}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicated?.encode(on: &_container, forKey: .implicated)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managementCode?.encode(on: &_container, forKey: .managementCode)
		try medicationClass?.encode(on: &_container, forKey: .medicationClass)
		try meta?.encode(on: &_container, forKey: .meta)
		try mitigation?.encode(on: &_container, forKey: .mitigation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try qualityOfEvidence?.encode(on: &_container, forKey: .qualityOfEvidence)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try severity?.encode(on: &_container, forKey: .severity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeIdentified(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> IdentifiedX? {
		var _t_identified: IdentifiedX? = nil
		if let identifiedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .identifiedDateTime, auxiliaryKey: ._identifiedDateTime) {
			_t_identified = .dateTime(identifiedDateTime)
		}
		if let identifiedPeriod = try Period(from: _container, forKeyIfPresent: .identifiedPeriod) {
			if _t_identified != nil {
				throw DecodingError.dataCorruptedError(forKey: .identifiedPeriod, in: _container, debugDescription: "More than one value provided for \"identified\"")
			}
			_t_identified = .period(identifiedPeriod)
		}
		if let identifiedTiming = try Timing(from: _container, forKeyIfPresent: .identifiedTiming) {
			if _t_identified != nil {
				throw DecodingError.dataCorruptedError(forKey: .identifiedTiming, in: _container, debugDescription: "More than one value provided for \"identified\"")
			}
			_t_identified = .timing(identifiedTiming)
		}
		return _t_identified
	}
}

/**
 Supporting evidence.
 
 Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a
 GuidanceResponse or MeasureReport.
 */
public struct DetectedIssueEvidence: BackboneElement {
	
	/// Manifestation
	public var code: [CodeableConcept]?
	
	/// Supporting information
	public var detail: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		code: [CodeableConcept]? = nil,
		detail: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.code = code
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case detail
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Step taken to address.
 
 Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by
 the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
 reduce/eliminate the need for any action.
 */
public struct DetectedIssueMitigation: BackboneElement {
	
	/// What mitigation?
	public var action: CodeableConcept
	
	/// Who is committing?
	public var author: Reference?
	
	/// Date committed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional notes about the mitigation
	public var note: [Annotation]?
	
	/// Designated initializer
	public init(
		action: CodeableConcept,
		author: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil
	) {
		self.action = action
		self.author = author
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case author
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try CodeableConcept(from: _container, forKey: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
	}
}
