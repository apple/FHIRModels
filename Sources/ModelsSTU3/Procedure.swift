//
//  Procedure.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Procedure)
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
 An action that is being or was performed on a patient.
 
 An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
 invasive like counseling or hypnotherapy.
 */
public struct Procedure: DomainResource {
	
	public static let resourceType: ResourceType = .procedure
	
	/// All possible types for "performed[x]"
	public enum PerformedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// A request for this procedure
	public var basedOn: [Reference]?
	
	/// Target body sites
	public var bodySite: [CodeableConcept]?
	
	/// Classification of the procedure
	public var category: CodeableConcept?
	
	/// Identification of the procedure
	public var code: CodeableConcept?
	
	/// Complication following the procedure
	public var complication: [CodeableConcept]?
	
	/// A condition that is a result of the procedure
	public var complicationDetail: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter or episode associated with the procedure
	public var context: Reference?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Device changed in procedure
	public var focalDevice: [ProcedureFocalDevice]?
	
	/// Instructions for follow up
	public var followUp: [CodeableConcept]?
	
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
	
	/// True if procedure was not performed as scheduled
	public var notDone: FHIRPrimitive<FHIRBool>?
	
	/// Reason procedure was not performed
	public var notDoneReason: CodeableConcept?
	
	/// Additional information about the procedure
	public var note: [Annotation]?
	
	/// The result of procedure
	public var outcome: CodeableConcept?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Date/Period the procedure was performed
	/// One of `performed[x]`
	public var performed: PerformedX?
	
	/// The people who performed the procedure
	public var performer: [ProcedurePerformer]?
	
	/// Coded reason procedure performed
	public var reasonCode: [CodeableConcept]?
	
	/// Condition that is the reason the procedure performed
	public var reasonReference: [Reference]?
	
	/// Any report resulting from the procedure
	public var report: [Reference]?
	
	/// A code specifying the state of the procedure. Generally this will be in-progress or completed state.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Who the procedure was performed on
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Coded items used during the procedure
	public var usedCode: [CodeableConcept]?
	
	/// Items used during procedure
	public var usedReference: [Reference]?
	
	/// Designated initializer
	public init(
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
		usedReference: [Reference]? = nil
	) {
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
		self.status = status
		self.subject = subject
		self.text = text
		self.usedCode = usedCode
		self.usedReference = usedReference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case category
		case code
		case complication
		case complicationDetail
		case contained
		case context
		case definition
		case `extension` = "extension"
		case focalDevice
		case followUp
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
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
		case text
		case usedCode
		case usedReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.complication = try [CodeableConcept](from: _container, forKeyIfPresent: .complication)
		self.complicationDetail = try [Reference](from: _container, forKeyIfPresent: .complicationDetail)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focalDevice = try [ProcedureFocalDevice](from: _container, forKeyIfPresent: .focalDevice)
		self.followUp = try [CodeableConcept](from: _container, forKeyIfPresent: .followUp)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notDone = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notDone, auxiliaryKey: ._notDone)
		self.notDoneReason = try CodeableConcept(from: _container, forKeyIfPresent: .notDoneReason)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performed = try Self._decodePerformed(from: _container)
		self.performer = try [ProcedurePerformer](from: _container, forKeyIfPresent: .performer)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.report = try [Reference](from: _container, forKeyIfPresent: .report)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.usedCode = try [CodeableConcept](from: _container, forKeyIfPresent: .usedCode)
		self.usedReference = try [Reference](from: _container, forKeyIfPresent: .usedReference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code?.encode(on: &_container, forKey: .code)
		try complication?.encode(on: &_container, forKey: .complication)
		try complicationDetail?.encode(on: &_container, forKey: .complicationDetail)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focalDevice?.encode(on: &_container, forKey: .focalDevice)
		try followUp?.encode(on: &_container, forKey: .followUp)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try usedCode?.encode(on: &_container, forKey: .usedCode)
		try usedReference?.encode(on: &_container, forKey: .usedReference)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodePerformed(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PerformedX? {
		var _t_performed: PerformedX? = nil
		if let performedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .performedDateTime, auxiliaryKey: ._performedDateTime) {
			_t_performed = .dateTime(performedDateTime)
		}
		if let performedPeriod = try Period(from: _container, forKeyIfPresent: .performedPeriod) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedPeriod, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .period(performedPeriod)
		}
		return _t_performed
	}
}

/**
 Device changed in procedure.
 
 A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis,
 attaching a wound-vac, etc.) as a focal portion of the Procedure.
 */
public struct ProcedureFocalDevice: BackboneElement {
	
	/// Kind of change to device
	public var action: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Device that was changed
	public var manipulated: Reference
	
	/// Extensions that cannot be ignored
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
 The people who performed the procedure.
 
 Limited to 'real' people rather than equipment.
 */
public struct ProcedurePerformer: BackboneElement {
	
	/// The reference to the practitioner
	public var actor: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Organization the device or practitioner was acting for
	public var onBehalfOf: Reference?
	
	/// The role the actor was in
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		role: CodeableConcept? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOf
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try role?.encode(on: &_container, forKey: .role)
	}
}
