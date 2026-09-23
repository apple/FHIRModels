//
//  MedicationDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationDispense)
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
 Dispensing a medication to a named patient.
 
 Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
 description of the medication product (supply) provided and the instructions for administering the medication.  The
 medication dispense is the result of a pharmacy system responding to a medication order.
 */
public struct MedicationDispense: DomainResource {
	
	public static let resourceType: ResourceType = .medicationDispense
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "statusReason[x]"
	public enum StatusReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Type of medication dispense
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter / Episode associated with event
	public var context: Reference?
	
	/// Amount of medication expressed as a timing amount
	public var daysSupply: Quantity?
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Clinical issue with action
	public var detectedIssue: [Reference]?
	
	/// How the medication is to be used by the patient or administered by the caregiver
	public var dosageInstruction: [Dosage]?
	
	/// A list of relevant lifecycle events
	public var eventHistory: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// What medication was supplied
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the dispense
	public var note: [Annotation]?
	
	/// Event that dispense is part of
	public var partOf: [Reference]?
	
	/// Who performed event
	public var performer: [MedicationDispensePerformer]?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the medication
	public var receiver: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	public var status: FHIRPrimitive<MedicationDispenseStatusCodes>
	
	/// Why a dispense was not performed
	/// One of `statusReason[x]`
	public var statusReason: StatusReasonX?
	
	/// Who the dispense is for
	public var subject: Reference?
	
	/// Whether a substitution was performed on the dispense
	public var substitution: MedicationDispenseSubstitution?
	
	/// Information that supports the dispensing of the medication
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// When product was packaged and reviewed
	public var whenPrepared: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		authorizingPrescription: [Reference]? = nil,
		category: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		daysSupply: Quantity? = nil,
		destination: Reference? = nil,
		detectedIssue: [Reference]? = nil,
		dosageInstruction: [Dosage]? = nil,
		eventHistory: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		medication: MedicationX,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		performer: [MedicationDispensePerformer]? = nil,
		quantity: Quantity? = nil,
		receiver: [Reference]? = nil,
		status: FHIRPrimitive<MedicationDispenseStatusCodes>,
		statusReason: StatusReasonX? = nil,
		subject: Reference? = nil,
		substitution: MedicationDispenseSubstitution? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		whenHandedOver: FHIRPrimitive<DateTime>? = nil,
		whenPrepared: FHIRPrimitive<DateTime>? = nil
	) {
		self.authorizingPrescription = authorizingPrescription
		self.category = category
		self.contained = contained
		self.context = context
		self.daysSupply = daysSupply
		self.destination = destination
		self.detectedIssue = detectedIssue
		self.dosageInstruction = dosageInstruction
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.quantity = quantity
		self.receiver = receiver
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.substitution = substitution
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
		self.whenHandedOver = whenHandedOver
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authorizingPrescription
		case category
		case contained
		case context
		case daysSupply
		case destination
		case detectedIssue
		case dosageInstruction
		case eventHistory
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case note
		case partOf
		case performer
		case quantity
		case receiver
		case status; case _status
		case statusReasonCodeableConcept
		case statusReasonReference
		case subject
		case substitution
		case supportingInformation
		case text
		case type
		case whenHandedOver; case _whenHandedOver
		case whenPrepared; case _whenPrepared
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authorizingPrescription = try [Reference](from: _container, forKeyIfPresent: .authorizingPrescription)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.daysSupply = try Quantity(from: _container, forKeyIfPresent: .daysSupply)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [MedicationDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<MedicationDispenseStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try Self._decodeStatusReason(from: _container)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.substitution = try MedicationDispenseSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		self.whenPrepared = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenPrepared, auxiliaryKey: ._whenPrepared)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authorizingPrescription?.encode(on: &_container, forKey: .authorizingPrescription)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try daysSupply?.encode(on: &_container, forKey: .daysSupply)
		try destination?.encode(on: &_container, forKey: .destination)
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		
		switch medication {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = statusReason {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .statusReasonCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .statusReasonReference)
		}
		}
		try subject?.encode(on: &_container, forKey: .subject)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try whenPrepared?.encode(on: &_container, forKey: .whenPrepared, auxiliaryKey: ._whenPrepared)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMedication(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MedicationX {
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		guard let _t_medication else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.medicationReference)
			throw DecodingError.valueNotFound(MedicationX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		return _t_medication
	}
	
	private static func _decodeStatusReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StatusReasonX? {
		var _t_statusReason: StatusReasonX? = nil
		if let statusReasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .statusReasonCodeableConcept) {
			_t_statusReason = .codeableConcept(statusReasonCodeableConcept)
		}
		if let statusReasonReference = try Reference(from: _container, forKeyIfPresent: .statusReasonReference) {
			if _t_statusReason != nil {
				throw DecodingError.dataCorruptedError(forKey: .statusReasonReference, in: _container, debugDescription: "More than one value provided for \"statusReason\"")
			}
			_t_statusReason = .reference(statusReasonReference)
		}
		return _t_statusReason
	}
}

/**
 Who performed event.
 
 Indicates who or what performed the event.
 */
public struct MedicationDispensePerformer: BackboneElement {
	
	/// Individual who was performing
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Who performed the dispense and what they did
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
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
	}
}

/**
 Whether a substitution was performed on the dispense.
 
 Indicates whether or not substitution was made as part of the dispense.  In some cases, substitution will be expected
 but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 substitution did or did not happen and why.  If nothing is specified, substitution was not done.
 */
public struct MedicationDispenseSubstitution: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Why was substitution made
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution
	public var responsibleParty: [Reference]?
	
	/// Code signifying whether a different drug was dispensed from what was prescribed
	public var type: CodeableConcept?
	
	/// Whether a substitution was or was not performed on the dispense
	public var wasSubstituted: FHIRPrimitive<FHIRBool>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]? = nil,
		responsibleParty: [Reference]? = nil,
		type: CodeableConcept? = nil,
		wasSubstituted: FHIRPrimitive<FHIRBool>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.responsibleParty = responsibleParty
		self.type = type
		self.wasSubstituted = wasSubstituted
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case responsibleParty
		case type
		case wasSubstituted; case _wasSubstituted
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.responsibleParty = try [Reference](from: _container, forKeyIfPresent: .responsibleParty)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.wasSubstituted = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .wasSubstituted, auxiliaryKey: ._wasSubstituted)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try responsibleParty?.encode(on: &_container, forKey: .responsibleParty)
		try type?.encode(on: &_container, forKey: .type)
		try wasSubstituted.encode(on: &_container, forKey: .wasSubstituted, auxiliaryKey: ._wasSubstituted)
	}
}
