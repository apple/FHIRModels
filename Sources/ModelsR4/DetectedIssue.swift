//
//  DetectedIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/DetectedIssue)
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
 patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public struct DetectedIssue: DomainResource {
	
	public static let resourceType: ResourceType = .detectedIssue
	
	/// All possible types for "identified[x]"
	public enum IdentifiedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// The provider or device that identified the issue
	public var author: Reference?
	
	/// Issue Category, e.g. drug-drug, duplicate therapy, etc.
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Description and context
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Supporting evidence
	public var evidence: [DetectedIssueEvidence]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// When identified
	/// One of `identified[x]`
	public var identified: IdentifiedX?
	
	/// Unique id for the detected issue
	public var identifier: [Identifier]?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Step taken to address
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Associated patient
	public var patient: Reference?
	
	/// Authority for issue
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Indicates the degree of importance associated with the identified issue based on the potential impact on the
	/// patient.
	public var severity: FHIRPrimitive<DetectedIssueSeverity>?
	
	/// Indicates the status of the detected issue.
	public var status: FHIRPrimitive<ObservationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		author: Reference? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		detail: FHIRPrimitive<FHIRString>? = nil,
		evidence: [DetectedIssueEvidence]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identified: IdentifiedX? = nil,
		identifier: [Identifier]? = nil,
		implicated: [Reference]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		mitigation: [DetectedIssueMitigation]? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil,
		severity: FHIRPrimitive<DetectedIssueSeverity>? = nil,
		status: FHIRPrimitive<ObservationStatus>,
		text: Narrative? = nil
	) {
		self.author = author
		self.code = code
		self.contained = contained
		self.detail = detail
		self.evidence = evidence
		self.`extension` = `extension`
		self.id = id
		self.identified = identified
		self.identifier = identifier
		self.implicated = implicated
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.mitigation = mitigation
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.reference = reference
		self.severity = severity
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case code
		case contained
		case detail; case _detail
		case evidence
		case `extension` = "extension"
		case id; case _id
		case identifiedDateTime; case _identifiedDateTime
		case identifiedPeriod
		case identifier
		case implicated
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case mitigation
		case modifierExtension
		case patient
		case reference; case _reference
		case severity; case _severity
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.evidence = try [DetectedIssueEvidence](from: _container, forKeyIfPresent: .evidence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identified = try Self._decodeIdentified(from: _container)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicated = try [Reference](from: _container, forKeyIfPresent: .implicated)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mitigation = try [DetectedIssueMitigation](from: _container, forKeyIfPresent: .mitigation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.severity = try FHIRPrimitive<DetectedIssueSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.status = try FHIRPrimitive<ObservationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = identified {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .identifiedDateTime, auxiliaryKey: ._identifiedDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .identifiedPeriod)
		}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicated?.encode(on: &_container, forKey: .implicated)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try mitigation?.encode(on: &_container, forKey: .mitigation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient?.encode(on: &_container, forKey: .patient)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
	
	/// Designated initializer
	public init(
		action: CodeableConcept,
		author: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.author = author
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case author
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
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
	}
}
