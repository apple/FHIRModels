//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
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
	
	/// External ids for this request
	public var identifier: [Identifier]?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// A code specifying the current state of the order.  Generally this will be active or completed state.
	public var status: FHIRPrimitive<MedicationRequestStatus>?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: FHIRPrimitive<MedicationRequestIntent>
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<MedicationRequestPriority>?
	
	/// Medication to be taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Who or group medication request is for
	public var subject: Reference
	
	/// Created during encounter/admission/stay
	public var context: Reference?
	
	/// Information to support ordering of the medication
	public var supportingInformation: [Reference]?
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// Who/What requested the Request
	public var requester: MedicationRequestRequester?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Reason or indication for writing the prescription
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or Observation that supports why the prescription is being written
	public var reasonReference: [Reference]?
	
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
	public init(intent: FHIRPrimitive<MedicationRequestIntent>, medication: MedicationX, subject: Reference) {
		self.intent = intent
		self.medication = medication
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authoredOn: FHIRPrimitive<DateTime>? = nil,
							basedOn: [Reference]? = nil,
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							definition: [Reference]? = nil,
							detectedIssue: [Reference]? = nil,
							dispenseRequest: MedicationRequestDispenseRequest? = nil,
							dosageInstruction: [Dosage]? = nil,
							eventHistory: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							groupIdentifier: Identifier? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intent: FHIRPrimitive<MedicationRequestIntent>,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							priorPrescription: Reference? = nil,
							priority: FHIRPrimitive<MedicationRequestPriority>? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recorder: Reference? = nil,
							requester: MedicationRequestRequester? = nil,
							status: FHIRPrimitive<MedicationRequestStatus>? = nil,
							subject: Reference,
							substitution: MedicationRequestSubstitution? = nil,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(intent: intent, medication: medication, subject: subject)
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.context = context
		self.definition = definition
		self.detectedIssue = detectedIssue
		self.dispenseRequest = dispenseRequest
		self.dosageInstruction = dosageInstruction
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.priorPrescription = priorPrescription
		self.priority = priority
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recorder = recorder
		self.requester = requester
		self.status = status
		self.substitution = substitution
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authoredOn; case _authoredOn
		case basedOn
		case category
		case context
		case definition
		case detectedIssue
		case dispenseRequest
		case dosageInstruction
		case eventHistory
		case groupIdentifier
		case identifier
		case intent; case _intent
		case medicationCodeableConcept
		case medicationReference
		case note
		case priorPrescription
		case priority; case _priority
		case reasonCode
		case reasonReference
		case recorder
		case requester
		case status; case _status
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
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.priority = try FHIRPrimitive<MedicationRequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.requester = try MedicationRequestRequester(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<MedicationRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
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
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note)
		try priorPrescription?.encode(on: &_container, forKey: .priorPrescription)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		    && context == _other.context
		    && definition == _other.definition
		    && detectedIssue == _other.detectedIssue
		    && dispenseRequest == _other.dispenseRequest
		    && dosageInstruction == _other.dosageInstruction
		    && eventHistory == _other.eventHistory
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && intent == _other.intent
		    && medication == _other.medication
		    && note == _other.note
		    && priorPrescription == _other.priorPrescription
		    && priority == _other.priority
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recorder == _other.recorder
		    && requester == _other.requester
		    && status == _other.status
		    && subject == _other.subject
		    && substitution == _other.substitution
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authoredOn)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(definition)
		hasher.combine(detectedIssue)
		hasher.combine(dispenseRequest)
		hasher.combine(dosageInstruction)
		hasher.combine(eventHistory)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(intent)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(priorPrescription)
		hasher.combine(priority)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recorder)
		hasher.combine(requester)
		hasher.combine(status)
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
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>?
	
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
							expectedSupplyDuration: Duration? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							performer: Reference? = nil,
							quantity: Quantity? = nil,
							validityPeriod: Period? = nil)
	{
		self.init()
		self.expectedSupplyDuration = expectedSupplyDuration
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numberOfRepeatsAllowed = numberOfRepeatsAllowed
		self.performer = performer
		self.quantity = quantity
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expectedSupplyDuration
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case performer
		case quantity
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
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
		return expectedSupplyDuration == _other.expectedSupplyDuration
		    && numberOfRepeatsAllowed == _other.numberOfRepeatsAllowed
		    && performer == _other.performer
		    && quantity == _other.quantity
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expectedSupplyDuration)
		hasher.combine(numberOfRepeatsAllowed)
		hasher.combine(performer)
		hasher.combine(quantity)
		hasher.combine(validityPeriod)
	}
}

/**
 Who/What requested the Request.
 
 The individual, organization or device that initiated the request and has responsibility for its activation.
 */
open class MedicationRequestRequester: BackboneElement {
	
	/// Who ordered the initial medication(s)
	public var agent: Reference
	
	/// Organization agent is acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer taking all required properties
	public init(agent: Reference) {
		self.agent = agent
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							agent: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							onBehalfOf: Reference? = nil)
	{
		self.init(agent: agent)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case onBehalfOf
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.agent = try Reference(from: _container, forKey: .agent)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try agent.encode(on: &_container, forKey: .agent)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationRequestRequester else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return agent == _other.agent
		    && onBehalfOf == _other.onBehalfOf
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(agent)
		hasher.combine(onBehalfOf)
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
 other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
 substitution may be done.
 */
open class MedicationRequestSubstitution: BackboneElement {
	
	/// Whether substitution is allowed or not
	public var allowed: FHIRPrimitive<FHIRBool>
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(allowed: FHIRPrimitive<FHIRBool>) {
		self.allowed = allowed
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							allowed: FHIRPrimitive<FHIRBool>,
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
		case allowed; case _allowed
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.allowed = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .allowed, auxiliaryKey: ._allowed)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try allowed.encode(on: &_container, forKey: .allowed, auxiliaryKey: ._allowed)
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
