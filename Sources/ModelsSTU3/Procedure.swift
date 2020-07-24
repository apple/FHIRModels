//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Procedure)
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
	
	/// External Identifiers for this procedure
	public var identifier: [Identifier]?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// A request for this procedure
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	public var status: FHIRPrimitive<EventStatus>
	
	/// True if procedure was not performed as scheduled
	public var notDone: FHIRPrimitive<FHIRBool>?
	
	/// Reason procedure was not performed
	public var notDoneReason: CodeableConcept?
	
	/// Classification of the procedure
	public var category: CodeableConcept?
	
	/// Identification of the procedure
	public var code: CodeableConcept?
	
	/// Who the procedure was performed on
	public var subject: Reference
	
	/// Encounter or episode associated with the procedure
	public var context: Reference?
	
	/// Date/Period the procedure was performed
	/// One of `performed[x]`
	public var performed: PerformedX?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// Where the procedure happened
	public var location: Reference?
	
	/// Coded reason procedure performed
	public var reasonCode: [CodeableConcept]?
	
	/// Condition that is the reason the procedure performed
	public var reasonReference: [Reference]?
	
	/// Target body sites
	public var bodySite: [CodeableConcept]?
	
	/// The result of procedure
	public var outcome: CodeableConcept?
	
	/// Any report resulting from the procedure
	public var report: [Reference]?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// A condition that is a result of the procedure
	public var complicationDetail: [Reference]?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
	/// Additional information about the procedure
	public var note: [Annotation]?
	
	/// Device changed in procedure
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
							basedOn: [Reference]? = nil,
							bodySite: [CodeableConcept]? = nil,
							category: CodeableConcept? = nil,
							code: CodeableConcept? = nil,
							complication: [CodeableConcept]? = nil,
							complicationDetail: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
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
							notDone: FHIRPrimitive<FHIRBool>? = nil,
							notDoneReason: CodeableConcept? = nil,
							note: [Annotation]? = nil,
							outcome: CodeableConcept? = nil,
							partOf: [Reference]? = nil,
							performed: PerformedX? = nil,
							performer: [ProcedurePerformer]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							report: [Reference]? = nil,
							status: FHIRPrimitive<EventStatus>,
							subject: Reference,
							text: Narrative? = nil,
							usedCode: [CodeableConcept]? = nil,
							usedReference: [Reference]? = nil)
	{
		self.init(status: status, subject: subject)
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.code = code
		self.complication = complication
		self.complicationDetail = complicationDetail
		self.contained = contained
		self.context = context
		self.definition = definition
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
		self.notDone = notDone
		self.notDoneReason = notDoneReason
		self.note = note
		self.outcome = outcome
		self.partOf = partOf
		self.performed = performed
		self.performer = performer
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.report = report
		self.text = text
		self.usedCode = usedCode
		self.usedReference = usedReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case bodySite
		case category
		case code
		case complication
		case complicationDetail
		case context
		case definition
		case focalDevice
		case followUp
		case identifier
		case location
		case notDone; case _notDone
		case notDoneReason
		case note
		case outcome
		case partOf
		case performedDateTime; case _performedDateTime
		case performedPeriod
		case performer
		case reasonCode
		case reasonReference
		case report
		case status; case _status
		case subject
		case usedCode
		case usedReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.complication = try [CodeableConcept](from: _container, forKeyIfPresent: .complication)
		self.complicationDetail = try [Reference](from: _container, forKeyIfPresent: .complicationDetail)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.focalDevice = try [ProcedureFocalDevice](from: _container, forKeyIfPresent: .focalDevice)
		self.followUp = try [CodeableConcept](from: _container, forKeyIfPresent: .followUp)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.notDone = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notDone, auxiliaryKey: ._notDone)
		self.notDoneReason = try CodeableConcept(from: _container, forKeyIfPresent: .notDoneReason)
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
		self.performed = _t_performed
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.usedCode = try [CodeableConcept](from: _container, forKeyIfPresent: .usedCode)
		self.usedReference = try [Reference](from: _container, forKeyIfPresent: .usedReference)
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
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try focalDevice?.encode(on: &_container, forKey: .focalDevice)
		try followUp?.encode(on: &_container, forKey: .followUp)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try notDone?.encode(on: &_container, forKey: .notDone, auxiliaryKey: ._notDone)
		try notDoneReason?.encode(on: &_container, forKey: .notDoneReason)
		try note?.encode(on: &_container, forKey: .note)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try partOf?.encode(on: &_container, forKey: .partOf)
		if let _enum = performed {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .performedDateTime, auxiliaryKey: ._performedDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .performedPeriod)
			}
		}
		try performer?.encode(on: &_container, forKey: .performer)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try report?.encode(on: &_container, forKey: .report)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && complication == _other.complication
		    && complicationDetail == _other.complicationDetail
		    && context == _other.context
		    && definition == _other.definition
		    && focalDevice == _other.focalDevice
		    && followUp == _other.followUp
		    && identifier == _other.identifier
		    && location == _other.location
		    && notDone == _other.notDone
		    && notDoneReason == _other.notDoneReason
		    && note == _other.note
		    && outcome == _other.outcome
		    && partOf == _other.partOf
		    && performed == _other.performed
		    && performer == _other.performer
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && report == _other.report
		    && status == _other.status
		    && subject == _other.subject
		    && usedCode == _other.usedCode
		    && usedReference == _other.usedReference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(complication)
		hasher.combine(complicationDetail)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(focalDevice)
		hasher.combine(followUp)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(notDone)
		hasher.combine(notDoneReason)
		hasher.combine(note)
		hasher.combine(outcome)
		hasher.combine(partOf)
		hasher.combine(performed)
		hasher.combine(performer)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(report)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(usedCode)
		hasher.combine(usedReference)
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
	
	/// The role the actor was in
	public var role: CodeableConcept?
	
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
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: Reference? = nil,
							role: CodeableConcept? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case onBehalfOf
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
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
		    && onBehalfOf == _other.onBehalfOf
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(onBehalfOf)
		hasher.combine(role)
	}
}
