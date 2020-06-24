//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
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
 Ordering of medication for patient or group.
 
 An order or request for both supply of the medication and the instructions for administration of the medication to a
 patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to
 generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow
 patterns.
 */
open class MedicationRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationRequest }
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case reference(Reference)
	}
	
	/// External ids for this request
	public var identifier: [Identifier]?
	
	/// A code specifying the current state of the order.  Generally, this will be active or completed state.
	public var status: FHIRPrimitive<MedicationrequestStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: FHIRPrimitive<MedicationRequestIntent>
	
	/// Type of medication usage
	public var category: [CodeableConcept]?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// True if request is prohibiting action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Reported rather than primary record
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// Medication to be taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Who or group medication request is for
	public var subject: Reference
	
	/// Encounter created as part of encounter/admission/stay
	public var encounter: Reference?
	
	/// Information to support ordering of the medication
	public var supportingInformation: [Reference]?
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/What requested the Request
	public var requester: Reference?
	
	/// Intended performer of administration
	public var performer: Reference?
	
	/// Desired kind of performer of the medication administration
	public var performerType: CodeableConcept?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Reason or indication for ordering or not ordering the medication
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or observation that supports why the prescription is being written
	public var reasonReference: [Reference]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// Overall pattern of medication administration
	public var courseOfTherapyType: CodeableConcept?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Information about the prescription
	public var note: [Annotation]?
	
	/// How the medication should be taken
	public var dosageInstruction: [Dosage]?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationRequestSubstitution?
	
	/// An order/prescription that is being replaced
	public var priorPrescription: Reference?
	
	/// Clinical Issue with action
	public var detectedIssue: [Reference]?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<MedicationRequestIntent>, medication: MedicationX, status: FHIRPrimitive<MedicationrequestStatus>, subject: Reference) {
		self.intent = intent
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							courseOfTherapyType: CodeableConcept? = nil,
							detectedIssue: [Reference]? = nil,
							dispenseRequest: MedicationRequestDispenseRequest? = nil,
							doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
							dosageInstruction: [Dosage]? = nil,
							encounter: Reference? = nil,
							eventHistory: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
							instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
							insurance: [Reference]? = nil,
							intent: FHIRPrimitive<MedicationRequestIntent>,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							performer: Reference? = nil,
							performerType: CodeableConcept? = nil,
							priorPrescription: Reference? = nil,
							priority: FHIRPrimitive<RequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recorder: Reference? = nil,
							reported: ReportedX? = nil,
							requester: Reference? = nil,
							status: FHIRPrimitive<MedicationrequestStatus>,
							statusReason: CodeableConcept? = nil,
							subject: Reference,
							substitution: MedicationRequestSubstitution? = nil,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(intent: intent, medication: medication, status: status, subject: subject)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.courseOfTherapyType = courseOfTherapyType
		self.detectedIssue = detectedIssue
		self.dispenseRequest = dispenseRequest
		self.doNotPerform = doNotPerform
		self.dosageInstruction = dosageInstruction
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.insurance = insurance
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.performer = performer
		self.performerType = performerType
		self.priorPrescription = priorPrescription
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recorder = recorder
		self.reported = reported
		self.requester = requester
		self.statusReason = statusReason
		self.substitution = substitution
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case courseOfTherapyType
		case detectedIssue
		case dispenseRequest
		case doNotPerform; case _doNotPerform
		case dosageInstruction
		case encounter
		case eventHistory
		case groupIdentifier
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case medicationCodeableConcept
		case medicationReference
		case note
		case performer
		case performerType
		case priorPrescription
		case priority; case _priority
		case reasonCode
		case reasonReference
		case recorder
		case reportedBoolean; case _reportedBoolean
		case reportedReference
		case requester
		case status; case _status
		case statusReason
		case subject
		case substitution
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.courseOfTherapyType = try CodeableConcept(from: _container, forKeyIfPresent: .courseOfTherapyType)
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<MedicationRequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		self.medication = _t_medication!
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
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
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<MedicationrequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.substitution = try MedicationRequestSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try courseOfTherapyType?.encode(on: &_container, forKey: .courseOfTherapyType)
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note)
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priorPrescription?.encode(on: &_container, forKey: .priorPrescription)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recorder?.encode(on: &_container, forKey: .recorder)
		if let _enum = reported {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .reportedBoolean, auxiliaryKey: ._reportedBoolean)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reportedReference)
			}
		}
		try requester?.encode(on: &_container, forKey: .requester)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authoredOn == _other.authoredOn
		    && basedOn == _other.basedOn
		    && category == _other.category
		    && courseOfTherapyType == _other.courseOfTherapyType
		    && detectedIssue == _other.detectedIssue
		    && dispenseRequest == _other.dispenseRequest
		    && doNotPerform == _other.doNotPerform
		    && dosageInstruction == _other.dosageInstruction
		    && encounter == _other.encounter
		    && eventHistory == _other.eventHistory
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && insurance == _other.insurance
		    && intent == _other.intent
		    && medication == _other.medication
		    && note == _other.note
		    && performer == _other.performer
		    && performerType == _other.performerType
		    && priorPrescription == _other.priorPrescription
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recorder == _other.recorder
		    && reported == _other.reported
		    && requester == _other.requester
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && substitution == _other.substitution
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(courseOfTherapyType)
		hasher.combine(detectedIssue)
		hasher.combine(dispenseRequest)
		hasher.combine(doNotPerform)
		hasher.combine(dosageInstruction)
		hasher.combine(encounter)
		hasher.combine(eventHistory)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(insurance)
		hasher.combine(intent)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(performer)
		hasher.combine(performerType)
		hasher.combine(priorPrescription)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recorder)
		hasher.combine(reported)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(substitution)
		hasher.combine(supportingInformation)
	}
}

/**
 Medication supply authorization.
 
 Indicates the specific details for the dispense or medication supply part of a medication request (also known as a
 Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may
 be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the
 pharmacy department.
 */
open class MedicationRequestDispenseRequest: BackboneElement {
	
	/// First fill details
	public var initialFill: MedicationRequestDispenseRequestInitialFill?
	
	/// Minimum period of time between dispenses
	public var dispenseInterval: Duration?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Number of days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Intended dispenser
	public var performer: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dispenseInterval: Duration? = nil,
							expectedSupplyDuration: Duration? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							initialFill: MedicationRequestDispenseRequestInitialFill? = nil,
							modifierExtension: [Extension]? = nil,
							numberOfRepeatsAllowed: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							performer: Reference? = nil,
							quantity: Quantity? = nil,
							validityPeriod: Period? = nil)
	{
		self.init()
		self.dispenseInterval = dispenseInterval
		self.expectedSupplyDuration = expectedSupplyDuration
		self.`extension` = `extension`
		self.id = id
		self.initialFill = initialFill
		self.modifierExtension = modifierExtension
		self.numberOfRepeatsAllowed = numberOfRepeatsAllowed
		self.performer = performer
		self.quantity = quantity
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dispenseInterval
		case expectedSupplyDuration
		case initialFill
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case performer
		case quantity
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dispenseInterval = try Duration(from: _container, forKeyIfPresent: .dispenseInterval)
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.initialFill = try MedicationRequestDispenseRequestInitialFill(from: _container, forKeyIfPresent: .initialFill)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dispenseInterval?.encode(on: &_container, forKey: .dispenseInterval)
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		try initialFill?.encode(on: &_container, forKey: .initialFill)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try performer?.encode(on: &_container, forKey: .performer)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationRequestDispenseRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dispenseInterval == _other.dispenseInterval
		    && expectedSupplyDuration == _other.expectedSupplyDuration
		    && initialFill == _other.initialFill
		    && numberOfRepeatsAllowed == _other.numberOfRepeatsAllowed
		    && performer == _other.performer
		    && quantity == _other.quantity
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dispenseInterval)
		hasher.combine(expectedSupplyDuration)
		hasher.combine(initialFill)
		hasher.combine(numberOfRepeatsAllowed)
		hasher.combine(performer)
		hasher.combine(quantity)
		hasher.combine(validityPeriod)
	}
}

/**
 First fill details.
 
 Indicates the quantity or duration for the first dispense of the medication.
 */
open class MedicationRequestDispenseRequestInitialFill: BackboneElement {
	
	/// First fill quantity
	public var quantity: Quantity?
	
	/// First fill duration
	public var duration: Duration?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							duration: Duration? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil)
	{
		self.init()
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case duration
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.duration = try Duration(from: _container, forKeyIfPresent: .duration)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try duration?.encode(on: &_container, forKey: .duration)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationRequestDispenseRequestInitialFill else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return duration == _other.duration
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(duration)
		hasher.combine(quantity)
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen,
 in other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
 substitution may be done.
 */
open class MedicationRequestSubstitution: BackboneElement {
	
	/// All possible types for "allowed[x]"
	public enum AllowedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// Whether substitution is allowed or not
	/// One of `allowed[x]`
	public var allowed: AllowedX
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(allowed: AllowedX) {
		self.allowed = allowed
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allowed: AllowedX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: CodeableConcept? = nil)
	{
		self.init(allowed: allowed)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case allowedBoolean; case _allowedBoolean
		case allowedCodeableConcept
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.allowedBoolean) || _container.contains(CodingKeys.allowedCodeableConcept) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.allowedBoolean, CodingKeys.allowedCodeableConcept], debugDescription: "Must have at least one value for \"allowed\" but have none"))
		}
		
		// Decode all our properties
		var _t_allowed: AllowedX? = nil
		if let allowedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .allowedBoolean, auxiliaryKey: ._allowedBoolean) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedBoolean, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .boolean(allowedBoolean)
		}
		if let allowedCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .allowedCodeableConcept) {
			if _t_allowed != nil {
				throw DecodingError.dataCorruptedError(forKey: .allowedCodeableConcept, in: _container, debugDescription: "More than one value provided for \"allowed\"")
			}
			_t_allowed = .codeableConcept(allowedCodeableConcept)
		}
		self.allowed = _t_allowed!
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch allowed {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .allowedBoolean, auxiliaryKey: ._allowedBoolean)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .allowedCodeableConcept)
			}
		
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationRequestSubstitution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return allowed == _other.allowed
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(allowed)
		hasher.combine(reason)
	}
}
