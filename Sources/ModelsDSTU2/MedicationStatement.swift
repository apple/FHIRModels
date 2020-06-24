//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
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
 Record of medication being taken by a patient.
 
 A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may
 be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.
 The source of this information can be the patient, significant other (such as a family member or spouse), or a
 clinician.  A common scenario where this information is captured is during the history taking process during a patient
 visit or stay.   The medication information may come from e.g. the patient's memory, from a prescription bottle,  or
 from a list of medications the patient, clinician or other party maintains
 
 The primary difference between a medication statement and a medication administration is that the medication
 administration has complete administration information and is based on actual administration information from the
 person who administered the medication.  A medication statement is often, if not always, less specific.  There is no
 required date/time when the medication was administered, in fact we only know that a source has reported the patient is
 taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or
 missing or less precise.  As stated earlier, the medication statement information may come from the patient's memory,
 from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 administration is more formal and is not missing detailed information.
 */
open class MedicationStatement: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationStatement }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "reasonForUse[x]"
	public enum ReasonForUseX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Who is/was taking  the medication
	public var patient: Reference
	
	/// None
	public var informationSource: Reference?
	
	/// When the statement was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// statement is about.  Generally this will be active or completed.
	/// Restricted to: ['active', 'completed', 'entered-in-error', 'intended']
	public var status: FHIRPrimitive<MedicationStatementStatus>
	
	/// True if medication is/was not being taken
	public var wasNotTaken: FHIRPrimitive<FHIRBool>?
	
	/// True if asserting medication was not given
	public var reasonNotTaken: [CodeableConcept]?
	
	/// 
	/// One of `reasonForUse[x]`
	public var reasonForUse: ReasonForUseX?
	
	/// Over what period was medication consumed?
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Further information about the statement
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Additional supporting information
	public var supportingInformation: [Reference]?
	
	/// What medication was taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Details of how medication was taken
	public var dosage: [MedicationStatementDosage]?
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX, patient: Reference, status: FHIRPrimitive<MedicationStatementStatus>) {
		self.medication = medication
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							dateAsserted: FHIRPrimitive<DateTime>? = nil,
							dosage: [MedicationStatementDosage]? = nil,
							effective: EffectiveX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							informationSource: Reference? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: FHIRPrimitive<FHIRString>? = nil,
							patient: Reference,
							reasonForUse: ReasonForUseX? = nil,
							reasonNotTaken: [CodeableConcept]? = nil,
							status: FHIRPrimitive<MedicationStatementStatus>,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil,
							wasNotTaken: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init(medication: medication, patient: patient, status: status)
		self.contained = contained
		self.dateAsserted = dateAsserted
		self.dosage = dosage
		self.effective = effective
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.reasonForUse = reasonForUse
		self.reasonNotTaken = reasonNotTaken
		self.supportingInformation = supportingInformation
		self.text = text
		self.wasNotTaken = wasNotTaken
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dateAsserted; case _dateAsserted
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case identifier
		case informationSource
		case medicationCodeableConcept
		case medicationReference
		case note; case _note
		case patient
		case reasonForUseCodeableConcept
		case reasonForUseReference
		case reasonNotTaken
		case status; case _status
		case supportingInformation
		case wasNotTaken; case _wasNotTaken
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.dosage = try [MedicationStatementDosage](from: _container, forKeyIfPresent: .dosage)
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveDateTime, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		self.effective = _t_effective
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
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
		self.patient = try Reference(from: _container, forKey: .patient)
		var _t_reasonForUse: ReasonForUseX? = nil
		if let reasonForUseCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonForUseCodeableConcept) {
			if _t_reasonForUse != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonForUseCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reasonForUse\"")
			}
			_t_reasonForUse = .codeableConcept(reasonForUseCodeableConcept)
		}
		if let reasonForUseReference = try Reference(from: _container, forKeyIfPresent: .reasonForUseReference) {
			if _t_reasonForUse != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonForUseReference, in: _container, debugDescription: "More than one value provided for \"reasonForUse\"")
			}
			_t_reasonForUse = .reference(reasonForUseReference)
		}
		self.reasonForUse = _t_reasonForUse
		self.reasonNotTaken = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotTaken)
		self.status = try FHIRPrimitive<MedicationStatementStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.wasNotTaken = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .wasNotTaken, auxiliaryKey: ._wasNotTaken)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dateAsserted?.encode(on: &_container, forKey: .dateAsserted, auxiliaryKey: ._dateAsserted)
		try dosage?.encode(on: &_container, forKey: .dosage)
		if let _enum = effective {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note, auxiliaryKey: ._note)
		try patient.encode(on: &_container, forKey: .patient)
		if let _enum = reasonForUse {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .reasonForUseCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reasonForUseReference)
			}
		}
		try reasonNotTaken?.encode(on: &_container, forKey: .reasonNotTaken)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try wasNotTaken?.encode(on: &_container, forKey: .wasNotTaken, auxiliaryKey: ._wasNotTaken)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationStatement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dateAsserted == _other.dateAsserted
		    && dosage == _other.dosage
		    && effective == _other.effective
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && medication == _other.medication
		    && note == _other.note
		    && patient == _other.patient
		    && reasonForUse == _other.reasonForUse
		    && reasonNotTaken == _other.reasonNotTaken
		    && status == _other.status
		    && supportingInformation == _other.supportingInformation
		    && wasNotTaken == _other.wasNotTaken
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dateAsserted)
		hasher.combine(dosage)
		hasher.combine(effective)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(reasonForUse)
		hasher.combine(reasonNotTaken)
		hasher.combine(status)
		hasher.combine(supportingInformation)
		hasher.combine(wasNotTaken)
	}
}

/**
 Details of how medication was taken.
 
 Indicates how the medication is/was used by the patient.
 */
open class MedicationStatementDosage: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "quantity[x]"
	public enum QuantityX: Hashable {
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
	
	/// Reported dosage information
	public var text: FHIRPrimitive<FHIRString>?
	
	/// When/how often was medication taken
	public var timing: Timing?
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Where (on body) medication is/was administered
	/// One of `site[x]`
	public var site: SiteX?
	
	/// How the medication entered the body
	public var route: CodeableConcept?
	
	/// Technique used to administer medication
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Dose quantity per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Maximum dose that was consumed per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							asNeeded: AsNeededX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							maxDosePerPeriod: Ratio? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: QuantityX? = nil,
							rate: RateX? = nil,
							route: CodeableConcept? = nil,
							site: SiteX? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							timing: Timing? = nil)
	{
		self.init()
		self.asNeeded = asNeeded
		self.`extension` = `extension`
		self.id = id
		self.maxDosePerPeriod = maxDosePerPeriod
		self.method = method
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case maxDosePerPeriod
		case method
		case quantityQuantity
		case quantityRange
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
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		var _t_quantity: QuantityX? = nil
		if let quantityQuantity = try Quantity(from: _container, forKeyIfPresent: .quantityQuantity) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityQuantity, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .quantity(quantityQuantity)
		}
		if let quantityRange = try Range(from: _container, forKeyIfPresent: .quantityRange) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRange, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .range(quantityRange)
		}
		self.quantity = _t_quantity
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
		if let _enum = asNeeded {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
			}
		}
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		if let _enum = quantity {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .quantityQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .quantityRange)
			}
		}
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
		guard let _other = _other as? MedicationStatementDosage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && maxDosePerPeriod == _other.maxDosePerPeriod
		    && method == _other.method
		    && quantity == _other.quantity
		    && rate == _other.rate
		    && route == _other.route
		    && site == _other.site
		    && text == _other.text
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(maxDosePerPeriod)
		hasher.combine(method)
		hasher.combine(quantity)
		hasher.combine(rate)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(text)
		hasher.combine(timing)
	}
}
