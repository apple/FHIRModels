//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
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
 Ordering of medication for patient or group.
 
 An order or request for both supply of the medication and the instructions for administration of the medication to a
 patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to
 generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow
 patterns.
 */
public struct MedicationRequest: DomainResource {
	
	public static let resourceType: ResourceType = .medicationRequest
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// A plan or request that is fulfilled in whole or in part by this medication request
	public var basedOn: [Reference]?
	
	/// Grouping or category of medication request
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Overall pattern of medication administration
	public var courseOfTherapyType: CodeableConcept?
	
	/// Intended type of device for the administration
	public var device: [CodeableReference]?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// True if patient is to stop taking or not to start taking the medication
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Specific instructions for how the medication should be taken
	public var dosageInstruction: [Dosage]?
	
	/// Period over which the medication is to be taken
	public var effectiveDosePeriod: Period?
	
	/// Encounter created as part of encounter/admission/stay
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External ids for this request
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The person or organization who provided the information about this request, if the source is someone other than
	/// the requestor
	public var informationSource: [Reference]?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: FHIRPrimitive<MedicationRequestIntentCodes>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Medication to be taken
	public var medication: CodeableReference
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the prescription
	public var note: [Annotation]?
	
	/// Intended performer of administration
	public var performer: [Reference]?
	
	/// Desired kind of performer of the medication administration
	public var performerType: CodeableConcept?
	
	/// Reference to an order/prescription that is being replaced by this MedicationRequest
	public var priorPrescription: Reference?
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Reason or indication for ordering or not ordering the medication
	public var reason: [CodeableReference]?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Full representation of the dosage instructions
	public var renderedDosageInstruction: FHIRPrimitive<FHIRString>?
	
	/// Reported rather than primary record
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Who/What requested the Request
	public var requester: Reference?
	
	/// A code specifying the current state of the order.  Generally, this will be active or completed state.
	public var status: FHIRPrimitive<MedicationRequestStatusCodes>
	
	/// When the status was changed
	public var statusChanged: FHIRPrimitive<DateTime>?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Individual or group for whom the medication has been requested
	public var subject: Reference
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationRequestSubstitution?
	
	/// Information to support fulfilling of the medication
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		courseOfTherapyType: CodeableConcept? = nil,
		device: [CodeableReference]? = nil,
		dispenseRequest: MedicationRequestDispenseRequest? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		dosageInstruction: [Dosage]? = nil,
		effectiveDosePeriod: Period? = nil,
		encounter: Reference? = nil,
		eventHistory: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: [Reference]? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<MedicationRequestIntentCodes>,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: CodeableReference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		performer: [Reference]? = nil,
		performerType: CodeableConcept? = nil,
		priorPrescription: Reference? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		reason: [CodeableReference]? = nil,
		recorder: Reference? = nil,
		renderedDosageInstruction: FHIRPrimitive<FHIRString>? = nil,
		reported: FHIRPrimitive<FHIRBool>? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<MedicationRequestStatusCodes>,
		statusChanged: FHIRPrimitive<DateTime>? = nil,
		statusReason: CodeableConcept? = nil,
		subject: Reference,
		substitution: MedicationRequestSubstitution? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.courseOfTherapyType = courseOfTherapyType
		self.device = device
		self.dispenseRequest = dispenseRequest
		self.doNotPerform = doNotPerform
		self.dosageInstruction = dosageInstruction
		self.effectiveDosePeriod = effectiveDosePeriod
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.performer = performer
		self.performerType = performerType
		self.priorPrescription = priorPrescription
		self.priority = priority
		self.reason = reason
		self.recorder = recorder
		self.renderedDosageInstruction = renderedDosageInstruction
		self.reported = reported
		self.requester = requester
		self.status = status
		self.statusChanged = statusChanged
		self.statusReason = statusReason
		self.subject = subject
		self.substitution = substitution
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case contained
		case courseOfTherapyType
		case device
		case dispenseRequest
		case doNotPerform; case _doNotPerform
		case dosageInstruction
		case effectiveDosePeriod
		case encounter
		case eventHistory
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case insurance
		case intent; case _intent
		case language; case _language
		case medication
		case meta
		case modifierExtension
		case note
		case performer
		case performerType
		case priorPrescription
		case priority; case _priority
		case reason
		case recorder
		case renderedDosageInstruction; case _renderedDosageInstruction
		case reported; case _reported
		case requester
		case status; case _status
		case statusChanged; case _statusChanged
		case statusReason
		case subject
		case substitution
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.courseOfTherapyType = try CodeableConcept(from: _container, forKeyIfPresent: .courseOfTherapyType)
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.effectiveDosePeriod = try Period(from: _container, forKeyIfPresent: .effectiveDosePeriod)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<MedicationRequestIntentCodes>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.renderedDosageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<MedicationRequestStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusChanged = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusChanged, auxiliaryKey: ._statusChanged)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.substitution = try MedicationRequestSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try courseOfTherapyType?.encode(on: &_container, forKey: .courseOfTherapyType)
		try device?.encode(on: &_container, forKey: .device)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try effectiveDosePeriod?.encode(on: &_container, forKey: .effectiveDosePeriod)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medication.encode(on: &_container, forKey: .medication)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priorPrescription?.encode(on: &_container, forKey: .priorPrescription)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try renderedDosageInstruction?.encode(on: &_container, forKey: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		try reported?.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
		try requester?.encode(on: &_container, forKey: .requester)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusChanged?.encode(on: &_container, forKey: .statusChanged, auxiliaryKey: ._statusChanged)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Medication supply authorization.
 
 Indicates the specific details for the dispense or medication supply part of a medication request (also known as a
 Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may
 be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the
 pharmacy department.
 */
public struct MedicationRequestDispenseRequest: BackboneElement {
	
	/// Minimum period of time between dispenses
	public var dispenseInterval: Duration?
	
	/// Intended performer of dispense
	public var dispenser: Reference?
	
	/// Additional information for the dispenser
	public var dispenserInstruction: [Annotation]?
	
	/// Type of adherence packaging to use for the dispense
	public var doseAdministrationAid: CodeableConcept?
	
	/// Number of days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// First fill details
	public var initialFill: MedicationRequestDispenseRequestInitialFill?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		dispenseInterval: Duration? = nil,
		dispenser: Reference? = nil,
		dispenserInstruction: [Annotation]? = nil,
		doseAdministrationAid: CodeableConcept? = nil,
		expectedSupplyDuration: Duration? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initialFill: MedicationRequestDispenseRequestInitialFill? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfRepeatsAllowed: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		quantity: Quantity? = nil,
		validityPeriod: Period? = nil
	) {
		self.dispenseInterval = dispenseInterval
		self.dispenser = dispenser
		self.dispenserInstruction = dispenserInstruction
		self.doseAdministrationAid = doseAdministrationAid
		self.expectedSupplyDuration = expectedSupplyDuration
		self.`extension` = `extension`
		self.id = id
		self.initialFill = initialFill
		self.modifierExtension = modifierExtension
		self.numberOfRepeatsAllowed = numberOfRepeatsAllowed
		self.quantity = quantity
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dispenseInterval
		case dispenser
		case dispenserInstruction
		case doseAdministrationAid
		case expectedSupplyDuration
		case `extension` = "extension"
		case id; case _id
		case initialFill
		case modifierExtension
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case quantity
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dispenseInterval = try Duration(from: _container, forKeyIfPresent: .dispenseInterval)
		self.dispenser = try Reference(from: _container, forKeyIfPresent: .dispenser)
		self.dispenserInstruction = try [Annotation](from: _container, forKeyIfPresent: .dispenserInstruction)
		self.doseAdministrationAid = try CodeableConcept(from: _container, forKeyIfPresent: .doseAdministrationAid)
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initialFill = try MedicationRequestDispenseRequestInitialFill(from: _container, forKeyIfPresent: .initialFill)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dispenseInterval?.encode(on: &_container, forKey: .dispenseInterval)
		try dispenser?.encode(on: &_container, forKey: .dispenser)
		try dispenserInstruction?.encode(on: &_container, forKey: .dispenserInstruction)
		try doseAdministrationAid?.encode(on: &_container, forKey: .doseAdministrationAid)
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initialFill?.encode(on: &_container, forKey: .initialFill)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
}

/**
 First fill details.
 
 Indicates the quantity or duration for the first dispense of the medication.
 */
public struct MedicationRequestDispenseRequestInitialFill: BackboneElement {
	
	/// First fill duration
	public var duration: Duration?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// First fill quantity
	public var quantity: Quantity?
	
	/// Designated initializer
	public init(
		duration: Duration? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil
	) {
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case duration
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.duration = try Duration(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity?.encode(on: &_container, forKey: .quantity)
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen,
 in other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
 substitution may be done.
 */
public struct MedicationRequestSubstitution: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// Whether substitution is allowed or not
	/// One of `allowed[x]`
	public var allowed: AllowedX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// Designated initializer
	public init(
		allowed: AllowedX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil
	) {
		self.allowed = allowed
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowedBoolean; case _allowedBoolean
		case allowedCodeableConcept
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.allowed = try Self._decodeAllowed(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch allowed {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .allowedBoolean, auxiliaryKey: ._allowedBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .allowedCodeableConcept)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAllowed(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AllowedX {
		var _t_allowed: AllowedX? = nil
		if let allowedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allowedBoolean, auxiliaryKey: ._allowedBoolean) {
			_t_allowed = .boolean(allowedBoolean)
		}
		if let allowedCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .allowedCodeableConcept) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedCodeableConcept, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .codeableConcept(allowedCodeableConcept)
		}
		guard let _t_allowed else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.allowedCodeableConcept)
			throw DecodingError.valueNotFound(AllowedX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"allowed\" but have none"))
		}
		return _t_allowed
	}
}
