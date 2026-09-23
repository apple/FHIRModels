//
//  MedicationRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/MedicationRequest)
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
	
	/// When request was initially authored
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Created during encounter/admission/stay
	public var context: Reference?
	
	/// Protocol or definition
	public var definition: [Reference]?
	
	/// Clinical Issue with action
	public var detectedIssue: [Reference]?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationRequestDispenseRequest?
	
	/// How the medication should be taken
	public var dosageInstruction: [Dosage]?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Composite request this is part of
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External ids for this request
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
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
	
	/// An order/prescription that is being replaced
	public var priorPrescription: Reference?
	
	/// Indicates how quickly the Medication Request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<MedicationRequestPriority>?
	
	/// Reason or indication for writing the prescription
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or Observation that supports why the prescription is being written
	public var reasonReference: [Reference]?
	
	/// Person who entered the request
	public var recorder: Reference?
	
	/// Who/What requested the Request
	public var requester: MedicationRequestRequester?
	
	/// A code specifying the current state of the order.  Generally this will be active or completed state.
	public var status: FHIRPrimitive<MedicationRequestStatus>?
	
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
		text: Narrative? = nil
	) {
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
		self.intent = intent
		self.language = language
		self.medication = medication
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
		case context
		case definition
		case detectedIssue
		case dispenseRequest
		case dosageInstruction
		case eventHistory
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case intent; case _intent
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.detectedIssue = try [Reference](from: _container, forKeyIfPresent: .detectedIssue)
		self.dispenseRequest = try MedicationRequestDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.dosageInstruction = try [Dosage](from: _container, forKeyIfPresent: .dosageInstruction)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intent = try FHIRPrimitive<MedicationRequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try detectedIssue?.encode(on: &_container, forKey: .detectedIssue)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
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
}

/**
 Medication supply authorization.
 
 Indicates the specific details for the dispense or medication supply part of a medication request (also known as a
 Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may
 be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the
 pharmacy department.
 */
public struct MedicationRequestDispenseRequest: BackboneElement {
	
	/// Number of days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Intended dispenser
	public var performer: Reference?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		expectedSupplyDuration: Duration? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		performer: Reference? = nil,
		quantity: Quantity? = nil,
		validityPeriod: Period? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
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
		self.expectedSupplyDuration = try Duration(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try performer?.encode(on: &_container, forKey: .performer)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
}

/**
 Who/What requested the Request.
 
 The individual, organization or device that initiated the request and has responsibility for its activation.
 */
public struct MedicationRequestRequester: BackboneElement {
	
	/// Who ordered the initial medication(s)
	public var agent: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Organization agent is acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer
	public init(
		agent: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil
	) {
		self.agent = agent
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case agent
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOf
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.agent = try Reference(from: _container, forKey: .agent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try agent.encode(on: &_container, forKey: .agent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
 other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified
 substitution may be done.
 */
public struct MedicationRequestSubstitution: BackboneElement {
	
	/// Whether substitution is allowed or not
	public var allowed: FHIRPrimitive<FHIRBool>
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// Designated initializer
	public init(
		allowed: FHIRPrimitive<FHIRBool>,
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
		case allowed; case _allowed
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
		self.allowed = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .allowed, auxiliaryKey: ._allowed)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try allowed.encode(on: &_container, forKey: .allowed, auxiliaryKey: ._allowed)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
	}
}
