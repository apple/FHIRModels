//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Procedure)
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
 
 An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
 invasive like counseling or hypnotherapy.
 */
open class Procedure: DomainResource {
	
	override open class var resourceType: ResourceType { return .procedure }
	
	/// All possible types for "performed[x]"
	public enum PerformedX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External Identifiers for this procedure
	public var identifier: [Identifier]?
	
	/// Who the procedure was performed on
	public var subject: Reference
	
	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	/// Restricted to: ['in-progress', 'aborted', 'completed', 'entered-in-error']
	public var status: FHIRPrimitive<ProcedureStatus>
	
	/// Classification of the procedure
	public var category: CodeableConcept?
	
	/// Identification of the procedure
	public var code: CodeableConcept
	
	/// True if procedure was not performed as scheduled
	public var notPerformed: FHIRPrimitive<FHIRBool>?
	
	/// Reason procedure was not performed
	public var reasonNotPerformed: [CodeableConcept]?
	
	/// Target body sites
	public var bodySite: [CodeableConcept]?
	
	/// Reason procedure performed
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// Date/Period the procedure was performed
	/// One of `performed[x]`
	public var performed: PerformedX?
	
	/// The encounter associated with the procedure
	public var encounter: Reference?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// The result of procedure
	public var outcome: CodeableConcept?
	
	/// Any report resulting from the procedure
	public var report: [Reference]?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
	/// A request for this procedure
	public var request: Reference?
	
	/// Additional information about the procedure
	public var notes: [Annotation]?
	
	/// Device changed in procedure
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Items used during procedure
	public var used: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<ProcedureStatus>, subject: Reference) {
		self.code = code
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: [CodeableConcept]? = nil,
							category: CodeableConcept? = nil,
							code: CodeableConcept,
							complication: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							focalDevice: [ProcedureFocalDevice]? = nil,
							followUp: [CodeableConcept]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notPerformed: FHIRPrimitive<FHIRBool>? = nil,
							notes: [Annotation]? = nil,
							outcome: CodeableConcept? = nil,
							performed: PerformedX? = nil,
							performer: [ProcedurePerformer]? = nil,
							reason: ReasonX? = nil,
							reasonNotPerformed: [CodeableConcept]? = nil,
							report: [Reference]? = nil,
							request: Reference? = nil,
							status: FHIRPrimitive<ProcedureStatus>,
							subject: Reference,
							text: Narrative? = nil,
							used: [Reference]? = nil)
	{
		self.init(code: code, status: status, subject: subject)
		self.bodySite = bodySite
		self.category = category
		self.complication = complication
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.focalDevice = focalDevice
		self.followUp = followUp
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notPerformed = notPerformed
		self.notes = notes
		self.outcome = outcome
		self.performed = performed
		self.performer = performer
		self.reason = reason
		self.reasonNotPerformed = reasonNotPerformed
		self.report = report
		self.request = request
		self.text = text
		self.used = used
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case category
		case code
		case complication
		case encounter
		case focalDevice
		case followUp
		case identifier
		case location
		case notPerformed; case _notPerformed
		case notes
		case outcome
		case performedDateTime; case _performedDateTime
		case performedPeriod
		case performer
		case reasonCodeableConcept
		case reasonNotPerformed
		case reasonReference
		case report
		case request
		case status; case _status
		case subject
		case used
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.complication = try [CodeableConcept](from: _container, forKeyIfPresent: .complication)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.focalDevice = try [ProcedureFocalDevice](from: _container, forKeyIfPresent: .focalDevice)
		self.followUp = try [CodeableConcept](from: _container, forKeyIfPresent: .followUp)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.notPerformed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notPerformed, auxiliaryKey: ._notPerformed)
		self.notes = try [Annotation](from: _container, forKeyIfPresent: .notes)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
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
		self.performed = _t_performed
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		self.reasonNotPerformed = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotPerformed)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<ProcedureStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.used = try [Reference](from: _container, forKeyIfPresent: .used)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try complication?.encode(on: &_container, forKey: .complication)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try focalDevice?.encode(on: &_container, forKey: .focalDevice)
		try followUp?.encode(on: &_container, forKey: .followUp)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try notPerformed?.encode(on: &_container, forKey: .notPerformed, auxiliaryKey: ._notPerformed)
		try notes?.encode(on: &_container, forKey: .notes)
		try outcome?.encode(on: &_container, forKey: .outcome)
		if let _enum = performed {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .performedDateTime, auxiliaryKey: ._performedDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .performedPeriod)
			}
		}
		try performer?.encode(on: &_container, forKey: .performer)
		if let _enum = reason {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reasonReference)
			}
		}
		try reasonNotPerformed?.encode(on: &_container, forKey: .reasonNotPerformed)
		try report?.encode(on: &_container, forKey: .report)
		try request?.encode(on: &_container, forKey: .request)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && complication == _other.complication
		    && encounter == _other.encounter
		    && focalDevice == _other.focalDevice
		    && followUp == _other.followUp
		    && identifier == _other.identifier
		    && location == _other.location
		    && notPerformed == _other.notPerformed
		    && notes == _other.notes
		    && outcome == _other.outcome
		    && performed == _other.performed
		    && performer == _other.performer
		    && reason == _other.reason
		    && reasonNotPerformed == _other.reasonNotPerformed
		    && report == _other.report
		    && request == _other.request
		    && status == _other.status
		    && subject == _other.subject
		    && used == _other.used
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(complication)
		hasher.combine(encounter)
		hasher.combine(focalDevice)
		hasher.combine(followUp)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(notPerformed)
		hasher.combine(notes)
		hasher.combine(outcome)
		hasher.combine(performed)
		hasher.combine(performer)
		hasher.combine(reason)
		hasher.combine(reasonNotPerformed)
		hasher.combine(report)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(used)
	}
}

/**
 Device changed in procedure.
 
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
 
 Limited to 'real' people rather than equipment.
 */
open class ProcedurePerformer: BackboneElement {
	
	/// The reference to the practitioner
	public var actor: Reference?
	
	/// The role the actor was in
	public var role: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil)
	{
		self.init()
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
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
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
	}
}
