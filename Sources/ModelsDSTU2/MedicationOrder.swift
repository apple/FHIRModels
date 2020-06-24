//
//  MedicationOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationOrder)
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
 Prescription of medication to for patient.
 
 An order for both supply of the medication and the instructions for administration of the medication to a patient. The
 resource is called "MedicationOrder" rather than "MedicationPrescription" to generalize the use across inpatient and
 outpatient settings as well as for care plans, etc.
 */
open class MedicationOrder: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationOrder }
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>?
	
	/// A code specifying the state of the order.  Generally this will be active or completed state.
	/// Restricted to: ['active', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'draft']
	public var status: FHIRPrimitive<MedicationOrderStatus>?
	
	/// When prescription was stopped
	public var dateEnded: FHIRPrimitive<DateTime>?
	
	/// Why prescription was stopped
	public var reasonEnded: CodeableConcept?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who ordered the medication(s)
	public var prescriber: Reference?
	
	/// Created during encounter/admission/stay
	public var encounter: Reference?
	
	/// Reason or indication for writing the prescription
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// Information about the prescription
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Medication to be taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// How medication should be taken
	public var dosageInstruction: [MedicationOrderDosageInstruction]?
	
	/// Medication supply authorization
	public var dispenseRequest: MedicationOrderDispenseRequest?
	
	/// Any restrictions on medication substitution
	public var substitution: MedicationOrderSubstitution?
	
	/// An order/prescription that this supersedes
	public var priorPrescription: Reference?
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX) {
		self.medication = medication
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(medication: medication)
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
		case dateEnded; case _dateEnded
		case dateWritten; case _dateWritten
		case dispenseRequest
		case dosageInstruction
		case encounter
		case identifier
		case medicationCodeableConcept
		case medicationReference
		case note; case _note
		case patient
		case prescriber
		case priorPrescription
		case reasonCodeableConcept
		case reasonEnded
		case reasonReference
		case status; case _status
		case substitution
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.dateEnded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateEnded, auxiliaryKey: ._dateEnded)
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateWritten, auxiliaryKey: ._dateWritten)
		self.dispenseRequest = try MedicationOrderDispenseRequest(from: _container, forKeyIfPresent: .dispenseRequest)
		self.dosageInstruction = try [MedicationOrderDosageInstruction](from: _container, forKeyIfPresent: .dosageInstruction)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.note = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .note, auxiliaryKey: ._note)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.prescriber = try Reference(from: _container, forKeyIfPresent: .prescriber)
		self.priorPrescription = try Reference(from: _container, forKeyIfPresent: .priorPrescription)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		self.reasonEnded = try CodeableConcept(from: _container, forKeyIfPresent: .reasonEnded)
		self.status = try FHIRPrimitive<MedicationOrderStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substitution = try MedicationOrderSubstitution(from: _container, forKeyIfPresent: .substitution)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dateEnded?.encode(on: &_container, forKey: .dateEnded, auxiliaryKey: ._dateEnded)
		try dateWritten?.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try dispenseRequest?.encode(on: &_container, forKey: .dispenseRequest)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationOrder else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dateEnded == _other.dateEnded
		    && dateWritten == _other.dateWritten
		    && dispenseRequest == _other.dispenseRequest
		    && dosageInstruction == _other.dosageInstruction
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && medication == _other.medication
		    && note == _other.note
		    && patient == _other.patient
		    && prescriber == _other.prescriber
		    && priorPrescription == _other.priorPrescription
		    && reason == _other.reason
		    && reasonEnded == _other.reasonEnded
		    && status == _other.status
		    && substitution == _other.substitution
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dateEnded)
		hasher.combine(dateWritten)
		hasher.combine(dispenseRequest)
		hasher.combine(dosageInstruction)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(prescriber)
		hasher.combine(priorPrescription)
		hasher.combine(reason)
		hasher.combine(reasonEnded)
		hasher.combine(status)
		hasher.combine(substitution)
	}
}

/**
 Medication supply authorization.
 
 Indicates the specific details for the dispense or medication supply part of a medication order (also known as a
 Medication Prescription).  Note that this information is NOT always sent with the order.  There may be in some settings
 (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
 */
open class MedicationOrderDispenseRequest: BackboneElement {
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Product to be supplied
	/// One of `medication[x]`
	public var medication: MedicationX?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	/// Number of refills authorized
	public var numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Number of days supply per dispense
	public var expectedSupplyDuration: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							expectedSupplyDuration: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX? = nil,
							modifierExtension: [Extension]? = nil,
							numberOfRepeatsAllowed: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							quantity: Quantity? = nil,
							validityPeriod: Period? = nil)
	{
		self.init()
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
		case medicationCodeableConcept
		case medicationReference
		case numberOfRepeatsAllowed; case _numberOfRepeatsAllowed
		case quantity
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expectedSupplyDuration = try Quantity(from: _container, forKeyIfPresent: .expectedSupplyDuration)
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
		self.medication = _t_medication
		self.numberOfRepeatsAllowed = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expectedSupplyDuration?.encode(on: &_container, forKey: .expectedSupplyDuration)
		if let _enum = medication {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		}
		try numberOfRepeatsAllowed?.encode(on: &_container, forKey: .numberOfRepeatsAllowed, auxiliaryKey: ._numberOfRepeatsAllowed)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationOrderDispenseRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expectedSupplyDuration == _other.expectedSupplyDuration
		    && medication == _other.medication
		    && numberOfRepeatsAllowed == _other.numberOfRepeatsAllowed
		    && quantity == _other.quantity
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expectedSupplyDuration)
		hasher.combine(medication)
		hasher.combine(numberOfRepeatsAllowed)
		hasher.combine(quantity)
		hasher.combine(validityPeriod)
	}
}

/**
 How medication should be taken.
 
 Indicates how the medication is to be used by the patient.
 */
open class MedicationOrderDosageInstruction: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "dose[x]"
	public enum DoseX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case range(Range)
		case ratio(Ratio)
	}
	
	/// All possible types for "site[x]"
	public enum SiteX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Dosage instructions expressed as text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Supplemental instructions - e.g. "with meals"
	public var additionalInstructions: CodeableConcept?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Body site to administer to
	/// One of `site[x]`
	public var site: SiteX?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication per dose
	/// One of `dose[x]`
	public var dose: DoseX?
	
	/// Amount of medication per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							timing: Timing? = nil)
	{
		self.init()
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
		case maxDosePerPeriod
		case method
		case rateRange
		case rateRatio
		case route
		case siteCodeableConcept
		case siteReference
		case text; case _text
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalInstructions = try CodeableConcept(from: _container, forKeyIfPresent: .additionalInstructions)
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		var _t_dose: DoseX? = nil
		if let doseRange = try Range(from: _container, forKeyIfPresent: .doseRange) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseRange, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .range(doseRange)
		}
		if let doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseQuantity, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .quantity(doseQuantity)
		}
		self.dose = _t_dose
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		var _t_rate: RateX? = nil
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		if let rateRange = try Range(from: _container, forKeyIfPresent: .rateRange) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRange, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .range(rateRange)
		}
		self.rate = _t_rate
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		var _t_site: SiteX? = nil
		if let siteCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .siteCodeableConcept) {
			if _t_site != nil {
				throw DecodingError.dataCorruptedError(forKey: .siteCodeableConcept, in: _container, debugDescription: "More than one value provided for \"site\"")
			}
			_t_site = .codeableConcept(siteCodeableConcept)
		}
		if let siteReference = try Reference(from: _container, forKeyIfPresent: .siteReference) {
			if _t_site != nil {
				throw DecodingError.dataCorruptedError(forKey: .siteReference, in: _container, debugDescription: "More than one value provided for \"site\"")
			}
			_t_site = .reference(siteReference)
		}
		self.site = _t_site
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.timing = try Timing(from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .doseRange)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .doseQuantity)
			}
		}
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		if let _enum = rate {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .rateRatio)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .rateRange)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationOrderDosageInstruction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalInstructions == _other.additionalInstructions
		    && asNeeded == _other.asNeeded
		    && dose == _other.dose
		    && maxDosePerPeriod == _other.maxDosePerPeriod
		    && method == _other.method
		    && rate == _other.rate
		    && route == _other.route
		    && site == _other.site
		    && text == _other.text
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalInstructions)
		hasher.combine(asNeeded)
		hasher.combine(dose)
		hasher.combine(maxDosePerPeriod)
		hasher.combine(method)
		hasher.combine(rate)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(text)
		hasher.combine(timing)
	}
}

/**
 Any restrictions on medication substitution.
 
 Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen, in
 other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 intent. If nothing is specified substitution may be done.
 */
open class MedicationOrderSubstitution: BackboneElement {
	
	/// generic | formulary +
	public var type: CodeableConcept
	
	/// Why should (not) substitution be made
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reason: CodeableConcept? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reason
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationOrderSubstitution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reason == _other.reason
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reason)
		hasher.combine(type)
	}
}
