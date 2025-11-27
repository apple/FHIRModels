//
//  DetectedIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DetectedIssue)
//  Copyright 2025 Apple Inc.
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
open class DetectedIssue: DomainResource {
	
	override open class var resourceType: ResourceType { return .detectedIssue }
	
	/// All possible types for "identified[x]"
	public enum IdentifiedX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Business identifier for detected issue
	public var identifier: [Identifier]?
	
	/// preliminary | final | entered-in-error | unknown | mitigated | processing-error
	public var status: FHIRPrimitive<FHIRString>
	
	/// High level categorization of detected issue
	public var category: [CodeableConcept]?
	
	/// Specific type of detected issue, e.g. drug-drug, duplicate therapy, etc
	public var code: CodeableConcept?
	
	/// high | moderate | low
	public var severity: CodeableConcept?
	
	/// Associated subject
	public var subject: Reference?
	
	/// Encounter the detected issue is part of
	public var encounter: Reference?
	
	/// When detected issue occurred/is occurring
	/// One of `identified[x]`
	public var identified: IdentifiedX?
	
	/// The provider or device that identified the issue
	public var author: Reference?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// Supporting evidence
	public var evidence: [DetectedIssueEvidence]?
	
	/// Description and context
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Authority for issue
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// The quality of the evidence supporting the detected issue
	public var qualityOfEvidence: CodeableConcept?
	
	/// Time frame of clinical effect
	public var expectedOnsetType: CodeableConcept?
	
	/// What medication class
	public var medicationClass: [CodeableConcept]?
	
	/// Importance of taking action on the issue
	public var managementCode: CodeableConcept?
	
	/// Step taken to address
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<FHIRString>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(status: status)
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
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case author
		case category
		case code
		case detail; case _detail
		case encounter
		case evidence
		case expectedOnsetType
		case identifiedDateTime; case _identifiedDateTime
		case identifiedPeriod
		case identifiedTiming
		case identifier
		case implicated
		case managementCode
		case medicationClass
		case mitigation
		case qualityOfEvidence
		case reference; case _reference
		case severity
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evidence = try [DetectedIssueEvidence](from: _container, forKeyIfPresent: .evidence)
		self.expectedOnsetType = try CodeableConcept(from: _container, forKeyIfPresent: .expectedOnsetType)
		var _t_identified: IdentifiedX? = nil
		if let identifiedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .identifiedDateTime, auxiliaryKey: ._identifiedDateTime) {
			if _t_identified != nil {
				throw DecodingError.dataCorruptedError(forKey: .identifiedDateTime, in: _container, debugDescription: "More than one value provided for \"identified\"")
			}
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
		self.identified = _t_identified
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicated = try [Reference](from: _container, forKeyIfPresent: .implicated)
		self.managementCode = try CodeableConcept(from: _container, forKeyIfPresent: .managementCode)
		self.medicationClass = try [CodeableConcept](from: _container, forKeyIfPresent: .medicationClass)
		self.mitigation = try [DetectedIssueMitigation](from: _container, forKeyIfPresent: .mitigation)
		self.qualityOfEvidence = try CodeableConcept(from: _container, forKeyIfPresent: .qualityOfEvidence)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.severity = try CodeableConcept(from: _container, forKeyIfPresent: .severity)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try expectedOnsetType?.encode(on: &_container, forKey: .expectedOnsetType)
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
		try managementCode?.encode(on: &_container, forKey: .managementCode)
		try medicationClass?.encode(on: &_container, forKey: .medicationClass)
		try mitigation?.encode(on: &_container, forKey: .mitigation)
		try qualityOfEvidence?.encode(on: &_container, forKey: .qualityOfEvidence)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try severity?.encode(on: &_container, forKey: .severity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DetectedIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && category == _other.category
		    && code == _other.code
		    && detail == _other.detail
		    && encounter == _other.encounter
		    && evidence == _other.evidence
		    && expectedOnsetType == _other.expectedOnsetType
		    && identified == _other.identified
		    && identifier == _other.identifier
		    && implicated == _other.implicated
		    && managementCode == _other.managementCode
		    && medicationClass == _other.medicationClass
		    && mitigation == _other.mitigation
		    && qualityOfEvidence == _other.qualityOfEvidence
		    && reference == _other.reference
		    && severity == _other.severity
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(detail)
		hasher.combine(encounter)
		hasher.combine(evidence)
		hasher.combine(expectedOnsetType)
		hasher.combine(identified)
		hasher.combine(identifier)
		hasher.combine(implicated)
		hasher.combine(managementCode)
		hasher.combine(medicationClass)
		hasher.combine(mitigation)
		hasher.combine(qualityOfEvidence)
		hasher.combine(reference)
		hasher.combine(severity)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Supporting evidence.
 
 Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a
 GuidanceResponse or MeasureReport.
 */
open class DetectedIssueEvidence: BackboneElement {
	
	/// Manifestation
	public var code: [CodeableConcept]?
	
	/// Supporting information
	public var detail: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: [CodeableConcept]? = nil,
		detail: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.detail = try [Reference](from: _container, forKeyIfPresent: .detail)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try detail?.encode(on: &_container, forKey: .detail)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DetectedIssueEvidence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && detail == _other.detail
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(detail)
	}
}

/**
 Step taken to address.
 
 Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by
 the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
 reduce/eliminate the need for any action.
 */
open class DetectedIssueMitigation: BackboneElement {
	
	/// What mitigation?
	public var action: CodeableConcept
	
	/// Date committed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is committing?
	public var author: Reference?
	
	/// Additional notes about the mitigation
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(action: CodeableConcept) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: CodeableConcept,
		author: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil
	) {
		self.init(action: action)
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
		case note
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try CodeableConcept(from: _container, forKey: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try note?.encode(on: &_container, forKey: .note)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DetectedIssueMitigation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && author == _other.author
		    && date == _other.date
		    && note == _other.note
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(author)
		hasher.combine(date)
		hasher.combine(note)
	}
}
