//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
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
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case reference(Reference)
	}
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Type of medication usage
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Overall pattern of medication administration
	public var courseOfTherapyType: CodeableConcept?
	
	/// Clinical Issue with action
	public var detectedIssue: [Reference]?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// True if request is prohibiting action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// How the medication should be taken
	public var dosageInstruction: [Dosage]?
	
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
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, or an original order.
	public var intent: FHIRPrimitive<MedicationRequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Medication to be taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the prescription
	public var note: [Annotation]?
	
	/// Intended performer of administration
	public var performer: Reference?
	
	/// Desired kind of performer of the medication administration
	public var performerType: CodeableConcept?
	
	/// An order/prescription that is being replaced
	public var priorPrescription: Reference?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Reason or indication for ordering or not ordering the medication
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or observation that supports why the prescription is being written
	public var reasonReference: [Reference]?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Reported rather than primary record
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// Who/What requested the Request
	public var requester: Reference?
	
	/// A code specifying the current state of the order.  Generally, this will be active or completed state.
	public var status: FHIRPrimitive<MedicationrequestStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Who or group medication request is for
	public var subject: Reference
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationRequestSubstitution?
	
	/// Information to support ordering of the medication
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
		text: Narrative? = nil
	) {
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
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recorder = recorder
		self.reported = reported
		self.requester = requester
		self.status = status
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
		case detectedIssue
		case dispenseRequest
		case doNotPerform; case _doNotPerform
		case dosageInstruction
		case encounter
		case eventHistory
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case insurance
		case intent; case _intent
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
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
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<MedicationRequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.reported = try Self._decodeReported(from: _container)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<MedicationrequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		
		switch medication {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
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
	
	private static func _decodeReported(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReportedX? {
		var _t_reported: ReportedX? = nil
		if let reportedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reportedBoolean, auxiliaryKey: ._reportedBoolean) {
			_t_reported = .boolean(reportedBoolean)
		}
		if let reportedReference = try Reference(from: _container, forKeyIfPresent: .reportedReference) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedReference, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .reference(reportedReference)
		}
		return _t_reported
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
	
	/// Intended dispenser
	public var performer: Reference?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		dispenseInterval: Duration? = nil,
		expectedSupplyDuration: Duration? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		initialFill: MedicationRequestDispenseRequestInitialFill? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfRepeatsAllowed: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		performer: Reference? = nil,
		quantity: Quantity? = nil,
		validityPeriod: Period? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case initialFill
		case modifierExtension
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case performer
		case quantity
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dispenseInterval = try Duration(from: _container, forKeyIfPresent: .dispenseInterval)
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.initialFill = try MedicationRequestDispenseRequestInitialFill(from: _container, forKeyIfPresent: .initialFill)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dispenseInterval?.encode(on: &_container, forKey: .dispenseInterval)
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try initialFill?.encode(on: &_container, forKey: .initialFill)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try performer?.encode(on: &_container, forKey: .performer)
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
