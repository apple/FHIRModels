//
//  DiagnosticReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport)
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
 A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
 formatted reports.
 
 The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations,
 and/or specimens derived from these. The report includes clinical context such as requesting and provider information,
 and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic
 reports.
 */
open class DiagnosticReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .diagnosticReport }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Business identifier for report
	public var identifier: [Identifier]?
	
	/// What was requested
	public var basedOn: [Reference]?
	
	/// The status of the diagnostic report.
	public var status: FHIRPrimitive<DiagnosticReportStatus>
	
	/// Service category
	public var category: [CodeableConcept]?
	
	/// Name/Code for this diagnostic report
	public var code: CodeableConcept
	
	/// The subject of the report - usually, but not always, the patient
	public var subject: Reference?
	
	/// Health care event when test ordered
	public var encounter: Reference?
	
	/// Clinically relevant time/time-period for report
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// DateTime this version was made
	public var issued: FHIRPrimitive<Instant>?
	
	/// Responsible Diagnostic Service
	public var performer: [Reference]?
	
	/// Primary result interpreter
	public var resultsInterpreter: [Reference]?
	
	/// Specimens this report is based on
	public var specimen: [Reference]?
	
	/// Observations
	public var result: [Reference]?
	
	/// Reference to full details of imaging associated with the diagnostic report
	public var imagingStudy: [Reference]?
	
	/// Key images associated with this report
	public var media: [DiagnosticReportMedia]?
	
	/// Clinical conclusion (interpretation) of test results
	public var conclusion: FHIRPrimitive<FHIRString>?
	
	/// Codes for the clinical conclusion of test results
	public var conclusionCode: [CodeableConcept]?
	
	/// Entire report as issued
	public var presentedForm: [Attachment]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<DiagnosticReportStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		conclusion: FHIRPrimitive<FHIRString>? = nil,
		conclusionCode: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		effective: EffectiveX? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		imagingStudy: [Reference]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		media: [DiagnosticReportMedia]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [Reference]? = nil,
		presentedForm: [Attachment]? = nil,
		result: [Reference]? = nil,
		resultsInterpreter: [Reference]? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<DiagnosticReportStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(code: code, status: status)
		self.basedOn = basedOn
		self.category = category
		self.conclusion = conclusion
		self.conclusionCode = conclusionCode
		self.contained = contained
		self.effective = effective
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.imagingStudy = imagingStudy
		self.implicitRules = implicitRules
		self.issued = issued
		self.language = language
		self.media = media
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.presentedForm = presentedForm
		self.result = result
		self.resultsInterpreter = resultsInterpreter
		self.specimen = specimen
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case code
		case conclusion; case _conclusion
		case conclusionCode
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case identifier
		case imagingStudy
		case issued; case _issued
		case media
		case performer
		case presentedForm
		case result
		case resultsInterpreter
		case specimen
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.conclusion = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .conclusion, auxiliaryKey: ._conclusion)
		self.conclusionCode = try [CodeableConcept](from: _container, forKeyIfPresent: .conclusionCode)
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveDateTime, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		self.effective = _t_effective
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.imagingStudy = try [Reference](from: _container, forKeyIfPresent: .imagingStudy)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.media = try [DiagnosticReportMedia](from: _container, forKeyIfPresent: .media)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.presentedForm = try [Attachment](from: _container, forKeyIfPresent: .presentedForm)
		self.result = try [Reference](from: _container, forKeyIfPresent: .result)
		self.resultsInterpreter = try [Reference](from: _container, forKeyIfPresent: .resultsInterpreter)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<DiagnosticReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try conclusion?.encode(on: &_container, forKey: .conclusion, auxiliaryKey: ._conclusion)
		try conclusionCode?.encode(on: &_container, forKey: .conclusionCode)
		if let _enum = effective {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try imagingStudy?.encode(on: &_container, forKey: .imagingStudy)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try media?.encode(on: &_container, forKey: .media)
		try performer?.encode(on: &_container, forKey: .performer)
		try presentedForm?.encode(on: &_container, forKey: .presentedForm)
		try result?.encode(on: &_container, forKey: .result)
		try resultsInterpreter?.encode(on: &_container, forKey: .resultsInterpreter)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DiagnosticReport else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && category == _other.category
		    && code == _other.code
		    && conclusion == _other.conclusion
		    && conclusionCode == _other.conclusionCode
		    && effective == _other.effective
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && imagingStudy == _other.imagingStudy
		    && issued == _other.issued
		    && media == _other.media
		    && performer == _other.performer
		    && presentedForm == _other.presentedForm
		    && result == _other.result
		    && resultsInterpreter == _other.resultsInterpreter
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(conclusion)
		hasher.combine(conclusionCode)
		hasher.combine(effective)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(imagingStudy)
		hasher.combine(issued)
		hasher.combine(media)
		hasher.combine(performer)
		hasher.combine(presentedForm)
		hasher.combine(result)
		hasher.combine(resultsInterpreter)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Key images associated with this report.
 
 A list of key images associated with this report. The images are generally created during the diagnostic process, and
 may be directly of the patient, or of treated specimens (i.e. slides of interest).
 */
open class DiagnosticReportMedia: BackboneElement {
	
	/// Comment about the image (e.g. explanation)
	public var comment: FHIRPrimitive<FHIRString>?
	
	/// Reference to the image source
	public var link: Reference
	
	/// Designated initializer taking all required properties
	public init(link: Reference) {
		self.link = link
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comment: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(link: link)
		self.comment = comment
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comment; case _comment
		case link
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .comment, auxiliaryKey: ._comment)
		self.link = try Reference(from: _container, forKey: .link)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comment?.encode(on: &_container, forKey: .comment, auxiliaryKey: ._comment)
		try link.encode(on: &_container, forKey: .link)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DiagnosticReportMedia else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comment == _other.comment
		    && link == _other.link
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comment)
		hasher.combine(link)
	}
}
