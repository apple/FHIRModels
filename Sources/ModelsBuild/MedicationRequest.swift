//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
//  Copyright 2025 Apple Inc.
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
	
	/// All possible types for "effectiveTiming[x]"
	public enum EffectiveTimingX: Hashable {
		case duration(Duration)
		case period(Period)
		case range(Range)
	}
	
	/// External ids for this request
	public var identifier: [Identifier]?
	
	/// A plan or request that is fulfilled in whole or in part by this medication request
	public var basedOn: [Reference]?
	
	/// Reference to an order/prescription that is being replaced by this MedicationRequest
	public var priorPrescription: Reference?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// A code specifying the current state of the order.  Generally, this will be active or completed state.
	public var status: FHIRPrimitive<MedicationRequestStatusCodes>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// When the status was changed
	public var statusChanged: FHIRPrimitive<DateTime>?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: FHIRPrimitive<MedicationRequestIntentCodes>
	
	/// Grouping or category of medication request
	public var category: [CodeableConcept]?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// If true, indicates the provider is ordering a patient should not take the specified medication
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Medication to be taken
	public var medication: CodeableReference
	
	/// Individual or group for whom the medication has been requested
	public var subject: Reference
	
	/// The person or organization who provided the information about this request, if the source is someone other than
	/// the requestor
	public var informationSource: [Reference]?
	
	/// Encounter created as part of encounter/admission/stay
	public var encounter: Reference?
	
	/// Information to support fulfilling of the medication
	public var supportingInformation: [Reference]?
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/What requested the Request
	public var requester: Reference?
	
	/// Whether this is record of a Medication Request or the actual request itself
	public var isRecordOfRequest: FHIRPrimitive<FHIRBool>?
	
	/// Desired kind of performer of the medication administration
	public var performerType: CodeableConcept?
	
	/// Intended performer of administration
	public var performer: [Reference]?
	
	/// Intended type of device for the administration
	public var device: [CodeableReference]?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Reason or indication for ordering or not ordering the medication
	public var reason: [CodeableReference]?
	
	/// Overall pattern of medication administration
	public var courseOfTherapyType: CodeableConcept?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Information about the prescription
	public var note: [Annotation]?
	
	/// Period over which the medication is to be taken, can be specified as a duration or a range
	/// One of `effectiveTiming[x]`
	public var effectiveTiming: EffectiveTimingX?
	
	/// Specific instructions for how the medication should be taken
	public var dosageInstruction: DosageDetails?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationRequestSubstitution?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(intent: FHIRPrimitive<MedicationRequestIntentCodes>, medication: CodeableReference, status: FHIRPrimitive<MedicationRequestStatusCodes>, subject: Reference) {
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
		device: [CodeableReference]? = nil,
		dispenseRequest: MedicationRequestDispenseRequest? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		dosageInstruction: DosageDetails? = nil,
		effectiveTiming: EffectiveTimingX? = nil,
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
		isRecordOfRequest: FHIRPrimitive<FHIRBool>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: CodeableReference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		performer: [Reference]? = nil,
		performerType: CodeableConcept? = nil,
		priorPrescription: Reference? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		reason: [CodeableReference]? = nil,
		recorder: Reference? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<MedicationRequestStatusCodes>,
		statusChanged: FHIRPrimitive<DateTime>? = nil,
		statusReason: CodeableConcept? = nil,
		subject: Reference,
		substitution: MedicationRequestSubstitution? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(intent: intent, medication: medication, status: status, subject: subject)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.courseOfTherapyType = courseOfTherapyType
		self.device = device
		self.dispenseRequest = dispenseRequest
		self.doNotPerform = doNotPerform
		self.dosageInstruction = dosageInstruction
		self.effectiveTiming = effectiveTiming
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.insurance = insurance
		self.isRecordOfRequest = isRecordOfRequest
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.performer = performer
		self.performerType = performerType
		self.priorPrescription = priorPrescription
		self.priority = priority
		self.reason = reason
		self.recorder = recorder
		self.requester = requester
		self.statusChanged = statusChanged
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
		case device
		case dispenseRequest
		case doNotPerform; case _doNotPerform
		case dosageInstruction
		case effectiveTimingDuration
		case effectiveTimingPeriod
		case effectiveTimingRange
		case encounter
		case eventHistory
		case groupIdentifier
		case identifier
		case informationSource
		case insurance
		case intent; case _intent
		case isRecordOfRequest; case _isRecordOfRequest
		case medication
		case note
		case performer
		case performerType
		case priorPrescription
		case priority; case _priority
		case reason
		case recorder
		case requester
		case status; case _status
		case statusChanged; case _statusChanged
		case statusReason
		case subject
		case substitution
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.courseOfTherapyType = try CodeableConcept(from: _container, forKeyIfPresent: .courseOfTherapyType)
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.dosageInstruction = try DosageDetails(from: _container, forKeyIfPresent: .dosageInstruction)
		var _t_effectiveTiming: EffectiveTimingX? = nil
		if let effectiveTimingDuration = try Duration(from: _container, forKeyIfPresent: .effectiveTimingDuration) {
			if _t_effectiveTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTimingDuration, in: _container, debugDescription: "More than one value provided for \"effectiveTiming\"")
			}
			_t_effectiveTiming = .duration(effectiveTimingDuration)
		}
		if let effectiveTimingRange = try Range(from: _container, forKeyIfPresent: .effectiveTimingRange) {
			if _t_effectiveTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTimingRange, in: _container, debugDescription: "More than one value provided for \"effectiveTiming\"")
			}
			_t_effectiveTiming = .range(effectiveTimingRange)
		}
		if let effectiveTimingPeriod = try Period(from: _container, forKeyIfPresent: .effectiveTimingPeriod) {
			if _t_effectiveTiming != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTimingPeriod, in: _container, debugDescription: "More than one value provided for \"effectiveTiming\"")
			}
			_t_effectiveTiming = .period(effectiveTimingPeriod)
		}
		self.effectiveTiming = _t_effectiveTiming
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<MedicationRequestIntentCodes>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.isRecordOfRequest = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isRecordOfRequest, auxiliaryKey: ._isRecordOfRequest)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<MedicationRequestStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusChanged = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusChanged, auxiliaryKey: ._statusChanged)
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
		try device?.encode(on: &_container, forKey: .device)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		if let _enum = effectiveTiming {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTimingDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTimingRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTimingPeriod)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try isRecordOfRequest?.encode(on: &_container, forKey: .isRecordOfRequest, auxiliaryKey: ._isRecordOfRequest)
		try medication.encode(on: &_container, forKey: .medication)
		try note?.encode(on: &_container, forKey: .note)
		try performer?.encode(on: &_container, forKey: .performer)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try priorPrescription?.encode(on: &_container, forKey: .priorPrescription)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try requester?.encode(on: &_container, forKey: .requester)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusChanged?.encode(on: &_container, forKey: .statusChanged, auxiliaryKey: ._statusChanged)
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
		    && device == _other.device
		    && dispenseRequest == _other.dispenseRequest
		    && doNotPerform == _other.doNotPerform
		    && dosageInstruction == _other.dosageInstruction
		    && effectiveTiming == _other.effectiveTiming
		    && encounter == _other.encounter
		    && eventHistory == _other.eventHistory
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && insurance == _other.insurance
		    && intent == _other.intent
		    && isRecordOfRequest == _other.isRecordOfRequest
		    && medication == _other.medication
		    && note == _other.note
		    && performer == _other.performer
		    && performerType == _other.performerType
		    && priorPrescription == _other.priorPrescription
		    && priority == _other.priority
		    && reason == _other.reason
		    && recorder == _other.recorder
		    && requester == _other.requester
		    && status == _other.status
		    && statusChanged == _other.statusChanged
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
		hasher.combine(device)
		hasher.combine(dispenseRequest)
		hasher.combine(doNotPerform)
		hasher.combine(dosageInstruction)
		hasher.combine(effectiveTiming)
		hasher.combine(encounter)
		hasher.combine(eventHistory)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(insurance)
		hasher.combine(intent)
		hasher.combine(isRecordOfRequest)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(performer)
		hasher.combine(performerType)
		hasher.combine(priorPrescription)
		hasher.combine(priority)
		hasher.combine(reason)
		hasher.combine(recorder)
		hasher.combine(requester)
		hasher.combine(status)
		hasher.combine(statusChanged)
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
	
	/// Intended performer of dispense
	public var dispenser: Reference?
	
	/// Additional information for the dispenser
	public var dispenserInstruction: [CodeableConcept]?
	
	/// Type of adherence packaging to use for the dispense
	public var doseAdministrationAid: CodeableConcept?
	
	/// Where the medication is expected to be delivered
	public var destination: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		destination: Reference? = nil,
		dispenseInterval: Duration? = nil,
		dispenser: Reference? = nil,
		dispenserInstruction: [CodeableConcept]? = nil,
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
		self.init()
		self.destination = destination
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
		case destination
		case dispenseInterval
		case dispenser
		case dispenserInstruction
		case doseAdministrationAid
		case expectedSupplyDuration
		case initialFill
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case quantity
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dispenseInterval = try Duration(from: _container, forKeyIfPresent: .dispenseInterval)
		self.dispenser = try Reference(from: _container, forKeyIfPresent: .dispenser)
		self.dispenserInstruction = try [CodeableConcept](from: _container, forKeyIfPresent: .dispenserInstruction)
		self.doseAdministrationAid = try CodeableConcept(from: _container, forKeyIfPresent: .doseAdministrationAid)
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.initialFill = try MedicationRequestDispenseRequestInitialFill(from: _container, forKeyIfPresent: .initialFill)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try destination?.encode(on: &_container, forKey: .destination)
		try dispenseInterval?.encode(on: &_container, forKey: .dispenseInterval)
		try dispenser?.encode(on: &_container, forKey: .dispenser)
		try dispenserInstruction?.encode(on: &_container, forKey: .dispenserInstruction)
		try doseAdministrationAid?.encode(on: &_container, forKey: .doseAdministrationAid)
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		try initialFill?.encode(on: &_container, forKey: .initialFill)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
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
		return destination == _other.destination
		    && dispenseInterval == _other.dispenseInterval
		    && dispenser == _other.dispenser
		    && dispenserInstruction == _other.dispenserInstruction
		    && doseAdministrationAid == _other.doseAdministrationAid
		    && expectedSupplyDuration == _other.expectedSupplyDuration
		    && initialFill == _other.initialFill
		    && numberOfRepeatsAllowed == _other.numberOfRepeatsAllowed
		    && quantity == _other.quantity
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(destination)
		hasher.combine(dispenseInterval)
		hasher.combine(dispenser)
		hasher.combine(dispenserInstruction)
		hasher.combine(doseAdministrationAid)
		hasher.combine(expectedSupplyDuration)
		hasher.combine(initialFill)
		hasher.combine(numberOfRepeatsAllowed)
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
		quantity: Quantity? = nil
	) {
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
		reason: CodeableConcept? = nil
	) {
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
