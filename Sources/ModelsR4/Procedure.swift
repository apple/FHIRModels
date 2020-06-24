//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Procedure)
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
	
	/// All possible types for "performed[x]"
	public enum PerformedX: Hashable {
		case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
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
	public var category: CodeableConcept?
	
	/// Identification of the procedure
	public var code: CodeableConcept?
	
	/// Who the procedure was performed on
	public var subject: Reference
	
	/// Encounter created as part of
	public var encounter: Reference?
	
	/// When the procedure was performed
	/// One of `performed[x]`
	public var performed: PerformedX?
	
	/// Who recorded the procedure
	public var recorder: Reference?
	
	/// Person who asserts this procedure
	public var asserter: Reference?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// Coded reason procedure performed
	public var reasonCode: [CodeableConcept]?
	
	/// The justification that the procedure was performed
	public var reasonReference: [Reference]?
	
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
	public var usedReference: [Reference]?
	
	/// Coded items used during the procedure
	public var usedCode: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<EventStatus>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							asserter: Reference? = nil,
							basedOn: [Reference]? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: CodeableConcept? = nil,
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
							outcome: CodeableConcept? = nil,
							partOf: [Reference]? = nil,
							performed: PerformedX? = nil,
							performer: [ProcedurePerformer]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recorder: Reference? = nil,
							report: [Reference]? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: CodeableConcept? = nil,
							subject: Reference,
							text: Narrative? = nil,
							usedCode: [CodeableConcept]? = nil,
							usedReference: [Reference]? = nil)
	{
		self.init(status: status, subject: subject)
		self.asserter = asserter
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
		self.outcome = outcome
		self.partOf = partOf
		self.performed = performed
		self.performer = performer
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recorder = recorder
		self.report = report
		self.statusReason = statusReason
		self.text = text
		self.usedCode = usedCode
		self.usedReference = usedReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asserter
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
		case outcome
		case partOf
		case performedAge
		case performedDateTime; case _performedDateTime
		case performedPeriod
		case performedRange
		case performedString; case _performedString
		case performer
		case reasonCode
		case reasonReference
		case recorder
		case report
		case status; case _status
		case statusReason
		case subject
		case usedCode
		case usedReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
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
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		var _t_performed: PerformedX? = nil
		if let performedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .performedDateTime, auxiliaryKey: ._performedDateTime) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedDateTime, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .dateTime(performedDateTime)
		}
		if let performedPeriod = try Period(from: _container, forKeyIfPresent: .performedPeriod) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedPeriod, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .period(performedPeriod)
		}
		if let performedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .performedString, auxiliaryKey: ._performedString) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedString, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .string(performedString)
		}
		if let performedAge = try Age(from: _container, forKeyIfPresent: .performedAge) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedAge, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .age(performedAge)
		}
		if let performedRange = try Range(from: _container, forKeyIfPresent: .performedRange) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedRange, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .range(performedRange)
		}
		self.performed = _t_performed
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.usedCode = try [CodeableConcept](from: _container, forKeyIfPresent: .usedCode)
		self.usedReference = try [Reference](from: _container, forKeyIfPresent: .usedReference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asserter?.encode(on: &_container, forKey: .asserter)
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
		try outcome?.encode(on: &_container, forKey: .outcome)
		try partOf?.encode(on: &_container, forKey: .partOf)
		if let _enum = performed {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .performedDateTime, auxiliaryKey: ._performedDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .performedPeriod)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .performedString, auxiliaryKey: ._performedString)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .performedAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .performedRange)
			}
		}
		try performer?.encode(on: &_container, forKey: .performer)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try report?.encode(on: &_container, forKey: .report)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try usedCode?.encode(on: &_container, forKey: .usedCode)
		try usedReference?.encode(on: &_container, forKey: .usedReference)
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
		return asserter == _other.asserter
		    && basedOn == _other.basedOn
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
		    && outcome == _other.outcome
		    && partOf == _other.partOf
		    && performed == _other.performed
		    && performer == _other.performer
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recorder == _other.recorder
		    && report == _other.report
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && usedCode == _other.usedCode
		    && usedReference == _other.usedReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asserter)
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
		hasher.combine(outcome)
		hasher.combine(partOf)
		hasher.combine(performed)
		hasher.combine(performer)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recorder)
		hasher.combine(report)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(usedCode)
		hasher.combine(usedReference)
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
	
	/// The reference to the practitioner
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
