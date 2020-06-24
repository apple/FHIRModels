//
//  MedicationDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationDispense)
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
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A code specifying the state of the set of dispense events.
	/// Restricted to: ['in-progress', 'on-hold', 'completed', 'entered-in-error', 'stopped']
	public var status: FHIRPrimitive<MedicationDispenseStatus>?
	
	/// Who the dispense is for
	public var patient: Reference?
	
	/// Practitioner responsible for dispensing medication
	public var dispenser: Reference?
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Days Supply
	public var daysSupply: Quantity?
	
	/// What medication was supplied
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Dispense processing time
	public var whenPrepared: FHIRPrimitive<DateTime>?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Who collected the medication
	public var receiver: [Reference]?
	
	/// Information about the dispense
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Medicine administration instructions to the patient/caregiver
	public var dosageInstruction: [MedicationDispenseDosageInstruction]?
	
	/// Deals with substitution of one medicine for another
	public var substitution: MedicationDispenseSubstitution?
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX) {
		self.medication = medication
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authorizingPrescription: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							daysSupply: Quantity? = nil,
							destination: Reference? = nil,
							dispenser: Reference? = nil,
							dosageInstruction: [MedicationDispenseDosageInstruction]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: FHIRPrimitive<FHIRString>? = nil,
							patient: Reference? = nil,
							quantity: Quantity? = nil,
							receiver: [Reference]? = nil,
							status: FHIRPrimitive<MedicationDispenseStatus>? = nil,
							substitution: MedicationDispenseSubstitution? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							whenHandedOver: FHIRPrimitive<DateTime>? = nil,
							whenPrepared: FHIRPrimitive<DateTime>? = nil)
	{
		self.init(medication: medication)
		self.authorizingPrescription = authorizingPrescription
		self.contained = contained
		self.daysSupply = daysSupply
		self.destination = destination
		self.dispenser = dispenser
		self.dosageInstruction = dosageInstruction
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.quantity = quantity
		self.receiver = receiver
		self.status = status
		self.substitution = substitution
		self.text = text
		self.type = type
		self.whenHandedOver = whenHandedOver
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authorizingPrescription
		case daysSupply
		case destination
		case dispenser
		case dosageInstruction
		case identifier
		case medicationCodeableConcept
		case medicationReference
		case note; case _note
		case patient
		case quantity
		case receiver
		case status; case _status
		case substitution
		case type
		case whenHandedOver; case _whenHandedOver
		case whenPrepared; case _whenPrepared
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.authorizingPrescription = try [Reference](from: _container, forKeyIfPresent: .authorizingPrescription)
		self.daysSupply = try Quantity(from: _container, forKeyIfPresent: .daysSupply)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dispenser = try Reference(from: _container, forKeyIfPresent: .dispenser)
		self.dosageInstruction = try [MedicationDispenseDosageInstruction](from: _container, forKeyIfPresent: .dosageInstruction)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
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
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<MedicationDispenseStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substitution = try MedicationDispenseSubstitution(from: _container, forKeyIfPresent: .substitution)
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
		try daysSupply?.encode(on: &_container, forKey: .daysSupply)
		try destination?.encode(on: &_container, forKey: .destination)
		try dispenser?.encode(on: &_container, forKey: .dispenser)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
		try identifier?.encode(on: &_container, forKey: .identifier)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note, auxiliaryKey: ._note)
		try patient?.encode(on: &_container, forKey: .patient)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substitution?.encode(on: &_container, forKey: .substitution)
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
		    && daysSupply == _other.daysSupply
		    && destination == _other.destination
		    && dispenser == _other.dispenser
		    && dosageInstruction == _other.dosageInstruction
		    && identifier == _other.identifier
		    && medication == _other.medication
		    && note == _other.note
		    && patient == _other.patient
		    && quantity == _other.quantity
		    && receiver == _other.receiver
		    && status == _other.status
		    && substitution == _other.substitution
		    && type == _other.type
		    && whenHandedOver == _other.whenHandedOver
		    && whenPrepared == _other.whenPrepared
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authorizingPrescription)
		hasher.combine(daysSupply)
		hasher.combine(destination)
		hasher.combine(dispenser)
		hasher.combine(dosageInstruction)
		hasher.combine(identifier)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(quantity)
		hasher.combine(receiver)
		hasher.combine(status)
		hasher.combine(substitution)
		hasher.combine(type)
		hasher.combine(whenHandedOver)
		hasher.combine(whenPrepared)
	}
}

/**
 Medicine administration instructions to the patient/caregiver.
 
 Indicates how the medication is to be used by the patient.
 */
open class MedicationDispenseDosageInstruction: BackboneElement {
	
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
	
	/// Dosage Instructions
	public var text: FHIRPrimitive<FHIRString>?
	
	/// E.g. "Take with food"
	public var additionalInstructions: CodeableConcept?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Take "as needed" f(or x)
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
		guard let _other = _other as? MedicationDispenseDosageInstruction else {
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
 Deals with substitution of one medicine for another.
 
 Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected
 but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 substitution did or did not happen and why.
 */
open class MedicationDispenseSubstitution: BackboneElement {
	
	/// Type of substitution
	public var type: CodeableConcept
	
	/// Why was substitution made
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution
	public var responsibleParty: [Reference]?
	
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
							reason: [CodeableConcept]? = nil,
							responsibleParty: [Reference]? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.responsibleParty = responsibleParty
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reason
		case responsibleParty
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.responsibleParty = try [Reference](from: _container, forKeyIfPresent: .responsibleParty)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reason?.encode(on: &_container, forKey: .reason)
		try responsibleParty?.encode(on: &_container, forKey: .responsibleParty)
		try type.encode(on: &_container, forKey: .type)
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
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reason)
		hasher.combine(responsibleParty)
		hasher.combine(type)
	}
}
