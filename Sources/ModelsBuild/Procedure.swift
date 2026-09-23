//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Procedure)
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
 An action that is being or was performed on an individual or entity.
 
 An action that is or was performed on or for a patient, practitioner, device, organization, or location. For example,
 this can be a physical intervention on a patient like an operation, or less invasive like long term services,
 counseling, or hypnotherapy.  This can be a quality or safety inspection for a location, organization, or device.  This
 can be an accreditation procedure on a practitioner for licensing.
 */
public struct Procedure: DomainResource {
	
	public static let resourceType: ResourceType = .procedure
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
		indirect case timing(Timing)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case reference(Reference)
	}
	
	/// A request for this procedure
	public var basedOn: [Reference]?
	
	/// Target body sites
	public var bodySite: [CodeableConcept]?
	
	/// Target body structure
	public var bodyStructure: Reference?
	
	/// Classification of the procedure
	public var category: [CodeableConcept]?
	
	/// Identification of the procedure
	public var code: CodeableConcept?
	
	/// Complication following the procedure
	public var complication: [CodeableReference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The Encounter during which this Procedure was created
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Manipulated, implanted, or removed device
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Who is the target of the procedure when it is not the subject of record only
	public var focus: Reference?
	
	/// Instructions for follow up
	public var followUp: [CodeableReference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Identifiers for this procedure
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional information about the procedure
	public var note: [Annotation]?
	
	/// When the procedure occurred or is occurring
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// The result of procedure
	public var outcome: [CodeableReference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Who performed the procedure and what they did
	public var performer: [ProcedurePerformer]?
	
	/// The justification that the procedure was performed
	public var reason: [CodeableReference]?
	
	/// When the procedure was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Who recorded the procedure
	public var recorder: Reference?
	
	/// Any report resulting from the procedure
	public var report: [Reference]?
	
	/// Reported rather than primary record
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Individual or entity the procedure was performed on
	public var subject: Reference
	
	/// Extra information relevant to the procedure
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Items used during procedure
	public var used: [CodeableReference]?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: [CodeableConcept]? = nil,
		bodyStructure: Reference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept? = nil,
		complication: [CodeableReference]? = nil,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		focalDevice: [ProcedureFocalDevice]? = nil,
		focus: Reference? = nil,
		followUp: [CodeableReference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		outcome: [CodeableReference]? = nil,
		partOf: [Reference]? = nil,
		performer: [ProcedurePerformer]? = nil,
		reason: [CodeableReference]? = nil,
		recorded: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		report: [Reference]? = nil,
		reported: ReportedX? = nil,
		status: FHIRPrimitive<EventStatus>,
		statusReason: CodeableConcept? = nil,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil,
		used: [CodeableReference]? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.bodyStructure = bodyStructure
		self.category = category
		self.code = code
		self.complication = complication
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.focalDevice = focalDevice
		self.focus = focus
		self.followUp = followUp
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.outcome = outcome
		self.partOf = partOf
		self.performer = performer
		self.reason = reason
		self.recorded = recorded
		self.recorder = recorder
		self.report = report
		self.reported = reported
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
		self.used = used
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case bodyStructure
		case category
		case code
		case complication
		case contained
		case encounter
		case `extension` = "extension"
		case focalDevice
		case focus
		case followUp
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
		case note
		case occurrenceAge
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceRange
		case occurrenceString; case _occurrenceString
		case occurrenceTiming
		case outcome
		case partOf
		case performer
		case reason
		case recorded; case _recorded
		case recorder
		case report
		case reportedBoolean; case _reportedBoolean
		case reportedReference
		case status; case _status
		case statusReason
		case subject
		case supportingInfo
		case text
		case used
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.complication = try [CodeableReference](from: _container, forKeyIfPresent: .complication)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focalDevice = try [ProcedureFocalDevice](from: _container, forKeyIfPresent: .focalDevice)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.followUp = try [CodeableReference](from: _container, forKeyIfPresent: .followUp)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.outcome = try [CodeableReference](from: _container, forKeyIfPresent: .outcome)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		self.reported = try Self._decodeReported(from: _container)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.used = try [CodeableReference](from: _container, forKeyIfPresent: .used)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try complication?.encode(on: &_container, forKey: .complication)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focalDevice?.encode(on: &_container, forKey: .focalDevice)
		try focus?.encode(on: &_container, forKey: .focus)
		try followUp?.encode(on: &_container, forKey: .followUp)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceAge)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceString, auxiliaryKey: ._occurrenceString)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceTiming)
		}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try report?.encode(on: &_container, forKey: .report)
		if let _enum = reported {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .reportedBoolean, auxiliaryKey: ._reportedBoolean)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reportedReference)
		}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try text?.encode(on: &_container, forKey: .text)
		try used?.encode(on: &_container, forKey: .used)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceAge = try Age(from: _container, forKeyIfPresent: .occurrenceAge) {
			_t_occurrence = .age(occurrenceAge)
		}
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceRange = try Range(from: _container, forKeyIfPresent: .occurrenceRange) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceRange, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .range(occurrenceRange)
		}
		if let occurrenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .occurrenceString, auxiliaryKey: ._occurrenceString) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceString, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .string(occurrenceString)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		return _t_occurrence
	}
	
	private static func _decodeReported(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReportedX? {
		var _t_reported: ReportedX? = nil
		if let reportedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reportedBoolean, auxiliaryKey: ._reportedBoolean) {
			_t_reported = .boolean(reportedBoolean)
		}
		if let reportedReference = try Reference(from: _container, forKeyIfPresent: .reportedReference) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedReference, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .reference(reportedReference)
		}
		return _t_reported
	}
}

/**
 Manipulated, implanted, or removed device.
 
 A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis,
 attaching a wound-vac, etc.) as a focal portion of the Procedure.
 */
public struct ProcedureFocalDevice: BackboneElement {
	
	/// Kind of change to device
	public var action: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Device that was changed
	public var manipulated: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manipulated: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.manipulated = manipulated
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case `extension` = "extension"
		case id; case _id
		case manipulated
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try CodeableConcept(from: _container, forKeyIfPresent: .action)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.manipulated = try Reference(from: _container, forKey: .manipulated)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try manipulated.encode(on: &_container, forKey: .manipulated)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Who performed the procedure and what they did.
 
 Indicates who or what performed the procedure and how they were involved.
 */
public struct ProcedurePerformer: BackboneElement {
	
	/// Who performed the procedure
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Organization the device or practitioner was acting for
	public var onBehalfOf: Reference?
	
	/// When the performer performed the procedure
	public var period: Period?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		period: Period? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
		case onBehalfOf
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try period?.encode(on: &_container, forKey: .period)
	}
}
