//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Procedure)
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
 An action that is being or was performed on a patient.
 
 An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less
 invasive like long term services, counseling, or hypnotherapy.
 */
open class Procedure: DomainResource {
	
	override open class var resourceType: ResourceType { return .procedure }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
		case timing(Timing)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case reference(Reference)
	}
	
	/// External Identifiers for this procedure
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// A request for this procedure
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Classification of the procedure
	public var category: [CodeableConcept]?
	
	/// Identification of the procedure
	public var code: CodeableConcept?
	
	/// Who the procedure was performed on
	public var subject: Reference
	
	/// The Encounter during which this Procedure was created
	public var encounter: Reference?
	
	/// When the procedure occurred or is occurring
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the procedure was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Who recorded the procedure
	public var recorder: Reference?
	
	/// Reported rather than primary record
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// The justification that the procedure was performed
	public var reason: [CodeableReference]?
	
	/// Target body sites
	public var bodySite: [CodeableConcept]?
	
	/// The result of procedure
	public var outcome: CodeableConcept?
	
	/// Any report resulting from the procedure
	public var report: [Reference]?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// A condition that is a result of the procedure
	public var complicationDetail: [Reference]?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
	/// Additional information about the procedure
	public var note: [Annotation]?
	
	/// Manipulated, implanted, or removed device
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Items used during procedure
	public var used: [CodeableReference]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EventStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: [CodeableConcept]? = nil,
							code: CodeableConcept? = nil,
							complication: [CodeableConcept]? = nil,
							complicationDetail: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							focalDevice: [ProcedureFocalDevice]? = nil,
							followUp: [CodeableConcept]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
							instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							outcome: CodeableConcept? = nil,
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
							text: Narrative? = nil,
							used: [CodeableReference]? = nil)
	{
		self.init(status: status, subject: subject)
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.code = code
		self.complication = complication
		self.complicationDetail = complicationDetail
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.focalDevice = focalDevice
		self.followUp = followUp
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
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
		self.statusReason = statusReason
		self.text = text
		self.used = used
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case bodySite
		case category
		case code
		case complication
		case complicationDetail
		case encounter
		case focalDevice
		case followUp
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case location
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
		case used
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.complication = try [CodeableConcept](from: _container, forKeyIfPresent: .complication)
		self.complicationDetail = try [Reference](from: _container, forKeyIfPresent: .complicationDetail)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.focalDevice = try [ProcedureFocalDevice](from: _container, forKeyIfPresent: .focalDevice)
		self.followUp = try [CodeableConcept](from: _container, forKeyIfPresent: .followUp)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
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
		if let occurrenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .occurrenceString, auxiliaryKey: ._occurrenceString) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceString, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .string(occurrenceString)
		}
		if let occurrenceAge = try Age(from: _container, forKeyIfPresent: .occurrenceAge) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceAge, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .age(occurrenceAge)
		}
		if let occurrenceRange = try Range(from: _container, forKeyIfPresent: .occurrenceRange) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceRange, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .range(occurrenceRange)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		self.occurrence = _t_occurrence
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		var _t_reported: ReportedX? = nil
		if let reportedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reportedBoolean, auxiliaryKey: ._reportedBoolean) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedBoolean, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .boolean(reportedBoolean)
		}
		if let reportedReference = try Reference(from: _container, forKeyIfPresent: .reportedReference) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedReference, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .reference(reportedReference)
		}
		self.reported = _t_reported
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.used = try [CodeableReference](from: _container, forKeyIfPresent: .used)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try complication?.encode(on: &_container, forKey: .complication)
		try complicationDetail?.encode(on: &_container, forKey: .complicationDetail)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try focalDevice?.encode(on: &_container, forKey: .focalDevice)
		try followUp?.encode(on: &_container, forKey: .followUp)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try location?.encode(on: &_container, forKey: .location)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceString, auxiliaryKey: ._occurrenceString)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceRange)
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
		try used?.encode(on: &_container, forKey: .used)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Procedure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && complication == _other.complication
		    && complicationDetail == _other.complicationDetail
		    && encounter == _other.encounter
		    && focalDevice == _other.focalDevice
		    && followUp == _other.followUp
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && location == _other.location
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && outcome == _other.outcome
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && reason == _other.reason
		    && recorded == _other.recorded
		    && recorder == _other.recorder
		    && report == _other.report
		    && reported == _other.reported
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && used == _other.used
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(complication)
		hasher.combine(complicationDetail)
		hasher.combine(encounter)
		hasher.combine(focalDevice)
		hasher.combine(followUp)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(location)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(outcome)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(reason)
		hasher.combine(recorded)
		hasher.combine(recorder)
		hasher.combine(report)
		hasher.combine(reported)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(used)
	}
}

/**
 Manipulated, implanted, or removed device.
 
 A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis,
 attaching a wound-vac, etc.) as a focal portion of the Procedure.
 */
open class ProcedureFocalDevice: BackboneElement {
	
	/// Kind of change to device
	public var action: CodeableConcept?
	
	/// Device that was changed
	public var manipulated: Reference
	
	/// Designated initializer taking all required properties
	public init(manipulated: Reference) {
		self.manipulated = manipulated
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							manipulated: Reference,
							modifierExtension: [Extension]? = nil)
	{
		self.init(manipulated: manipulated)
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case manipulated
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try CodeableConcept(from: _container, forKeyIfPresent: .action)
		self.manipulated = try Reference(from: _container, forKey: .manipulated)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try manipulated.encode(on: &_container, forKey: .manipulated)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcedureFocalDevice else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && manipulated == _other.manipulated
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(manipulated)
	}
}

/**
 The people who performed the procedure.
 
 Limited to "real" people rather than equipment.
 */
open class ProcedurePerformer: BackboneElement {
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Who performed the procedure
	public var actor: Reference
	
	/// Organization the device or practitioner was acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							function: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: Reference? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
		case onBehalfOf
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcedurePerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
		    && onBehalfOf == _other.onBehalfOf
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
		hasher.combine(onBehalfOf)
	}
}
