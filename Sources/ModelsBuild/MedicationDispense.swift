//
//  MedicationDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MedicationDispense)
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
 Dispensing a medication to a named patient.
 
 Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
 description of the medication product (supply) provided and the instructions for administering the medication.  The
 medication dispense is the result of a pharmacy system responding to a medication order.
 */
open class MedicationDispense: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationDispense }
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Plan that is fulfilled by this dispense
	public var basedOn: [Reference]?
	
	/// Event that dispense is part of
	public var partOf: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	public var status: FHIRPrimitive<MedicationDispenseStatusCodes>
	
	/// Why a dispense was not performed
	public var statusReason: CodeableReference?
	
	/// Type of medication dispense
	public var category: [CodeableConcept]?
	
	/// What medication was supplied
	public var medication: CodeableReference
	
	/// Who the dispense is for
	public var subject: Reference
	
	/// Encounter associated with event
	public var encounter: Reference?
	
	/// Information that supports the dispensing of the medication
	public var supportingInformation: [Reference]?
	
	/// Who performed event
	public var performer: [MedicationDispensePerformer]?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Amount of medication expressed as a timing amount
	public var daysSupply: Quantity?
	
	/// When product was packaged and reviewed
	public var whenPrepared: FHIRPrimitive<DateTime>?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Who collected the medication or where the medication was delivered
	public var receiver: [Reference]?
	
	/// Information about the dispense
	public var note: [Annotation]?
	
	/// Full representation of the dosage instructions
	public var renderedDosageInstruction: FHIRPrimitive<FHIRString>?
	
	/// How the medication is to be used by the patient or administered by the caregiver
	public var dosageInstruction: [Dosage]?
	
	/// Whether a substitution was performed on the dispense
	public var substitution: MedicationDispenseSubstitution?
	
	/// Clinical issue with action
	public var detectedIssue: [Reference]?
	
	/// A list of relevant lifecycle events
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(medication: CodeableReference, status: FHIRPrimitive<MedicationDispenseStatusCodes>, subject: Reference) {
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorizingPrescription: [Reference]? = nil,
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							daysSupply: Quantity? = nil,
							destination: Reference? = nil,
							detectedIssue: [Reference]? = nil,
							dosageInstruction: [Dosage]? = nil,
							encounter: Reference? = nil,
							eventHistory: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							medication: CodeableReference,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							performer: [MedicationDispensePerformer]? = nil,
							quantity: Quantity? = nil,
							receiver: [Reference]? = nil,
							renderedDosageInstruction: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<MedicationDispenseStatusCodes>,
							statusReason: CodeableReference? = nil,
							subject: Reference,
							substitution: MedicationDispenseSubstitution? = nil,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							whenHandedOver: FHIRPrimitive<DateTime>? = nil,
							whenPrepared: FHIRPrimitive<DateTime>? = nil)
	{
		self.init(medication: medication, status: status, subject: subject)
		self.authorizingPrescription = authorizingPrescription
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.daysSupply = daysSupply
		self.destination = destination
		self.detectedIssue = detectedIssue
		self.dosageInstruction = dosageInstruction
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.quantity = quantity
		self.receiver = receiver
		self.renderedDosageInstruction = renderedDosageInstruction
		self.statusReason = statusReason
		self.substitution = substitution
		self.supportingInformation = supportingInformation
		self.text = text
		self.type = type
		self.whenHandedOver = whenHandedOver
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorizingPrescription
		case basedOn
		case category
		case daysSupply
		case destination
		case detectedIssue
		case dosageInstruction
		case encounter
		case eventHistory
		case identifier
		case location
		case medication
		case note
		case partOf
		case performer
		case quantity
		case receiver
		case renderedDosageInstruction; case _renderedDosageInstruction
		case status; case _status
		case statusReason
		case subject
		case substitution
		case supportingInformation
		case type
		case whenHandedOver; case _whenHandedOver
		case whenPrepared; case _whenPrepared
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authorizingPrescription = try [Reference](from: _container, forKeyIfPresent: .authorizingPrescription)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.daysSupply = try Quantity(from: _container, forKeyIfPresent: .daysSupply)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [MedicationDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.renderedDosageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		self.status = try FHIRPrimitive<MedicationDispenseStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableReference(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.substitution = try MedicationDispenseSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		self.whenPrepared = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenPrepared, auxiliaryKey: ._whenPrepared)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authorizingPrescription?.encode(on: &_container, forKey: .authorizingPrescription)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try daysSupply?.encode(on: &_container, forKey: .daysSupply)
		try destination?.encode(on: &_container, forKey: .destination)
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try medication.encode(on: &_container, forKey: .medication)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try renderedDosageInstruction?.encode(on: &_container, forKey: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try type?.encode(on: &_container, forKey: .type)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try whenPrepared?.encode(on: &_container, forKey: .whenPrepared, auxiliaryKey: ._whenPrepared)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationDispense else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authorizingPrescription == _other.authorizingPrescription
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && daysSupply == _other.daysSupply
		    && destination == _other.destination
		    && detectedIssue == _other.detectedIssue
		    && dosageInstruction == _other.dosageInstruction
		    && encounter == _other.encounter
		    && eventHistory == _other.eventHistory
		    && identifier == _other.identifier
		    && location == _other.location
		    && medication == _other.medication
		    && note == _other.note
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && quantity == _other.quantity
		    && receiver == _other.receiver
		    && renderedDosageInstruction == _other.renderedDosageInstruction
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && substitution == _other.substitution
		    && supportingInformation == _other.supportingInformation
		    && type == _other.type
		    && whenHandedOver == _other.whenHandedOver
		    && whenPrepared == _other.whenPrepared
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorizingPrescription)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(daysSupply)
		hasher.combine(destination)
		hasher.combine(detectedIssue)
		hasher.combine(dosageInstruction)
		hasher.combine(encounter)
		hasher.combine(eventHistory)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(quantity)
		hasher.combine(receiver)
		hasher.combine(renderedDosageInstruction)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(substitution)
		hasher.combine(supportingInformation)
		hasher.combine(type)
		hasher.combine(whenHandedOver)
		hasher.combine(whenPrepared)
	}
}

/**
 Who performed event.
 
 Indicates who or what performed the event.
 */
open class MedicationDispensePerformer: BackboneElement {
	
	/// Who performed the dispense and what they did
	public var function: CodeableConcept?
	
	/// Individual who was performing
	public var actor: Reference
	
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
							modifierExtension: [Extension]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationDispensePerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}

/**
 Whether a substitution was performed on the dispense.
 
 Indicates whether or not substitution was made as part of the dispense.  In some cases, substitution will be expected
 but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 substitution did or did not happen and why.  If nothing is specified, substitution was not done.
 */
open class MedicationDispenseSubstitution: BackboneElement {
	
	/// Whether a substitution was or was not performed on the dispense
	public var wasSubstituted: FHIRPrimitive<FHIRBool>
	
	/// Code signifying whether a different drug was dispensed from what was prescribed
	public var type: CodeableConcept?
	
	/// Why was substitution made
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution
	public var responsibleParty: Reference?
	
	/// Designated initializer taking all required properties
	public init(wasSubstituted: FHIRPrimitive<FHIRBool>) {
		self.wasSubstituted = wasSubstituted
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: [CodeableConcept]? = nil,
							responsibleParty: Reference? = nil,
							type: CodeableConcept? = nil,
							wasSubstituted: FHIRPrimitive<FHIRBool>)
	{
		self.init(wasSubstituted: wasSubstituted)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.responsibleParty = responsibleParty
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reason
		case responsibleParty
		case type
		case wasSubstituted; case _wasSubstituted
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.responsibleParty = try Reference(from: _container, forKeyIfPresent: .responsibleParty)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.wasSubstituted = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .wasSubstituted, auxiliaryKey: ._wasSubstituted)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try responsibleParty?.encode(on: &_container, forKey: .responsibleParty)
		try type?.encode(on: &_container, forKey: .type)
		try wasSubstituted.encode(on: &_container, forKey: .wasSubstituted, auxiliaryKey: ._wasSubstituted)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationDispenseSubstitution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reason == _other.reason
		    && responsibleParty == _other.responsibleParty
		    && type == _other.type
		    && wasSubstituted == _other.wasSubstituted
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reason)
		hasher.combine(responsibleParty)
		hasher.combine(type)
		hasher.combine(wasSubstituted)
	}
}
