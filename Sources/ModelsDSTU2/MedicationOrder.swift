//
//  MedicationOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationOrder)
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
 Prescription of medication to for patient.
 
 An order for both supply of the medication and the instructions for administration of the medication to a patient. The
 resource is called "MedicationOrder" rather than "MedicationPrescription" to generalize the use across inpatient and
 outpatient settings as well as for care plans, etc.
 */
public struct MedicationOrder: DomainResource {
	
	public static let resourceType: ResourceType = .medicationOrder
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When prescription was stopped
	public var dateEnded: FHIRPrimitive<DateTime>?
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationOrderDispenseRequest?
	
	/// How medication should be taken
	public var dosageInstruction: [MedicationOrderDosageInstruction]?
	
	/// Created during encounter/admission/stay
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
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
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who ordered the medication(s)
	public var prescriber: Reference?
	
	/// An order/prescription that this supersedes
	public var priorPrescription: Reference?
	
	/// Reason or indication for writing the prescription
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// Why prescription was stopped
	public var reasonEnded: CodeableConcept?
	
	/// A code specifying the state of the order.  Generally this will be active or completed state.
	/// Restricted to: ['active', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'draft']
	public var status: FHIRPrimitive<MedicationOrderStatus>?
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationOrderSubstitution?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		dateEnded: FHIRPrimitive<DateTime>? = nil,
		dateWritten: FHIRPrimitive<DateTime>? = nil,
		dispenseRequest: MedicationOrderDispenseRequest? = nil,
		dosageInstruction: [MedicationOrderDosageInstruction]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: FHIRPrimitive<FHIRString>? = nil,
		patient: Reference? = nil,
		prescriber: Reference? = nil,
		priorPrescription: Reference? = nil,
		reason: ReasonX? = nil,
		reasonEnded: CodeableConcept? = nil,
		status: FHIRPrimitive<MedicationOrderStatus>? = nil,
		substitution: MedicationOrderSubstitution? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.dateEnded = dateEnded
		self.dateWritten = dateWritten
		self.dispenseRequest = dispenseRequest
		self.dosageInstruction = dosageInstruction
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.prescriber = prescriber
		self.priorPrescription = priorPrescription
		self.reason = reason
		self.reasonEnded = reasonEnded
		self.status = status
		self.substitution = substitution
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case dateEnded; case _dateEnded
		case dateWritten; case _dateWritten
		case dispenseRequest
		case dosageInstruction
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case note; case _note
		case patient
		case prescriber
		case priorPrescription
		case reasonCodeableConcept
		case reasonEnded
		case reasonReference
		case status; case _status
		case substitution
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateEnded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateEnded, auxiliaryKey: ._dateEnded)
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateWritten, auxiliaryKey: ._dateWritten)
		self.dispenseRequest = try MedicationOrderDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.dosageInstruction = try [MedicationOrderDosageInstruction](from: _container, forKeyIfPresent: .dosageInstruction)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .note, auxiliaryKey: ._note)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.prescriber = try Reference(from: _container, forKeyIfPresent: .prescriber)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		self.reason = try Self._decodeReason(from: _container)
		self.reasonEnded = try CodeableConcept(from: _container, forKeyIfPresent: .reasonEnded)
		self.status = try FHIRPrimitive<MedicationOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substitution = try MedicationOrderSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try dateEnded?.encode(on: &_container, forKey: .dateEnded, auxiliaryKey: ._dateEnded)
		try dateWritten?.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		
		switch medication {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note, auxiliaryKey: ._note)
		try patient?.encode(on: &_container, forKey: .patient)
		try prescriber?.encode(on: &_container, forKey: .prescriber)
		try priorPrescription?.encode(on: &_container, forKey: .priorPrescription)
		if let _enum = reason {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reasonReference)
		}
		}
		try reasonEnded?.encode(on: &_container, forKey: .reasonEnded)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substitution?.encode(on: &_container, forKey: .substitution)
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
	
	private static func _decodeReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonX? {
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		return _t_reason
	}
}

/**
 Medication supply authorization.
 
 Indicates the specific details for the dispense or medication supply part of a medication order (also known as a
 Medication Prescription).  Note that this information is NOT always sent with the order.  There may be in some settings
 (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
 */
public struct MedicationOrderDispenseRequest: BackboneElement {
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Number of days supply per dispense
	public var expectedSupplyDuration: Quantity?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Product to be supplied
	/// One of `medication[x]`
	public var medication: MedicationX?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		expectedSupplyDuration: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		quantity: Quantity? = nil,
		validityPeriod: Period? = nil
	) {
		self.expectedSupplyDuration = expectedSupplyDuration
		self.`extension` = `extension`
		self.id = id
		self.medication = medication
		self.modifierExtension = modifierExtension
		self.numberOfRepeatsAllowed = numberOfRepeatsAllowed
		self.quantity = quantity
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expectedSupplyDuration
		case `extension` = "extension"
		case id; case _id
		case medicationCodeableConcept
		case medicationReference
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
		self.expectedSupplyDuration = try Quantity(from: _container, forKeyIfPresent: .expectedSupplyDuration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.medication = try Self._decodeMedication(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
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
		if let _enum = medication {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMedication(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MedicationX? {
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
		return _t_medication
	}
}

/**
 How medication should be taken.
 
 Indicates how the medication is to be used by the patient.
 */
public struct MedicationOrderDosageInstruction: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "dose[x]"
	public enum DoseX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case range(Range)
		indirect case ratio(Ratio)
	}
	
	/// All possible types for "site[x]"
	public enum SiteX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Supplemental instructions - e.g. "with meals"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Amount of medication per dose
	/// One of `dose[x]`
	public var dose: DoseX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Amount of medication per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// Body site to administer to
	/// One of `site[x]`
	public var site: SiteX?
	
	/// Dosage instructions expressed as text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Designated initializer
	public init(
		additionalInstructions: CodeableConcept? = nil,
		asNeeded: AsNeededX? = nil,
		dose: DoseX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerPeriod: Ratio? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		rate: RateX? = nil,
		route: CodeableConcept? = nil,
		site: SiteX? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		timing: Timing? = nil
	) {
		self.additionalInstructions = additionalInstructions
		self.asNeeded = asNeeded
		self.dose = dose
		self.`extension` = `extension`
		self.id = id
		self.maxDosePerPeriod = maxDosePerPeriod
		self.method = method
		self.modifierExtension = modifierExtension
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalInstructions
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case doseQuantity
		case doseRange
		case `extension` = "extension"
		case id; case _id
		case maxDosePerPeriod
		case method
		case modifierExtension
		case rateRange
		case rateRatio
		case route
		case siteCodeableConcept
		case siteReference
		case text; case _text
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalInstructions = try CodeableConcept(from: _container, forKeyIfPresent: .additionalInstructions)
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.dose = try Self._decodeDose(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rate = try Self._decodeRate(from: _container)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try Self._decodeSite(from: _container)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.timing = try Timing(from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalInstructions?.encode(on: &_container, forKey: .additionalInstructions)
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		if let _enum = dose {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .doseQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .doseRange)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = rate {
		switch _enum {
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .rateRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .rateRatio)
		}
		}
		try route?.encode(on: &_container, forKey: .route)
		if let _enum = site {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .siteCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .siteReference)
		}
		}
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try timing?.encode(on: &_container, forKey: .timing)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
	}
	
	private static func _decodeDose(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DoseX? {
		var _t_dose: DoseX? = nil
		if let doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity) {
			_t_dose = .quantity(doseQuantity)
		}
		if let doseRange = try Range(from: _container, forKeyIfPresent: .doseRange) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseRange, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .range(doseRange)
		}
		return _t_dose
	}
	
	private static func _decodeRate(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> RateX? {
		var _t_rate: RateX? = nil
		if let rateRange = try Range(from: _container, forKeyIfPresent: .rateRange) {
			_t_rate = .range(rateRange)
		}
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		return _t_rate
	}
	
	private static func _decodeSite(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SiteX? {
		var _t_site: SiteX? = nil
		if let siteCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .siteCodeableConcept) {
			_t_site = .codeableConcept(siteCodeableConcept)
		}
		if let siteReference = try Reference(from: _container, forKeyIfPresent: .siteReference) {
			if _t_site != nil {
				throw DecodingError.dataCorruptedError(forKey: .siteReference, in: _container, debugDescription: "More than one value provided for \"site\"")
			}
			_t_site = .reference(siteReference)
		}
		return _t_site
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
 other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 intent. If nothing is specified substitution may be done.
 */
public struct MedicationOrderSubstitution: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// generic | formulary +
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try type.encode(on: &_container, forKey: .type)
	}
}
