//
//  MedicationAdministration.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration)
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
 Administration of medication to a patient.
 
 Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
 prescription, and the specific encounter between patient and health care practitioner.
 */
open class MedicationAdministration: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationAdministration }
	
	/// All possible types for "effectiveTime[x]"
	public enum EffectiveTimeX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions it is possible for an administration to be started but not completed or it may be paused while
	/// some other process is under way.
	/// Restricted to: ['in-progress', 'on-hold', 'completed', 'entered-in-error', 'stopped']
	public var status: FHIRPrimitive<MedicationAdministrationStatus>
	
	/// Who received medication
	public var patient: Reference
	
	/// Who administered substance
	public var practitioner: Reference?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Order administration performed against
	public var prescription: Reference?
	
	/// True if medication not administered
	public var wasNotGiven: FHIRPrimitive<FHIRBool>?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Reason administration performed
	public var reasonGiven: [CodeableConcept]?
	
	/// Start and end time of administration
	/// One of `effectiveTime[x]`
	public var effectiveTime: EffectiveTimeX
	
	/// What was administered
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Information about the administration
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// Designated initializer taking all required properties
	public init(effectiveTime: EffectiveTimeX, medication: MedicationX, patient: Reference, status: FHIRPrimitive<MedicationAdministrationStatus>) {
		self.effectiveTime = effectiveTime
		self.medication = medication
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							device: [Reference]? = nil,
							dosage: MedicationAdministrationDosage? = nil,
							effectiveTime: EffectiveTimeX,
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
							patient: Reference,
							practitioner: Reference? = nil,
							prescription: Reference? = nil,
							reasonGiven: [CodeableConcept]? = nil,
							reasonNotGiven: [CodeableConcept]? = nil,
							status: FHIRPrimitive<MedicationAdministrationStatus>,
							text: Narrative? = nil,
							wasNotGiven: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init(effectiveTime: effectiveTime, medication: medication, patient: patient, status: status)
		self.contained = contained
		self.device = device
		self.dosage = dosage
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.practitioner = practitioner
		self.prescription = prescription
		self.reasonGiven = reasonGiven
		self.reasonNotGiven = reasonNotGiven
		self.text = text
		self.wasNotGiven = wasNotGiven
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case device
		case dosage
		case effectiveTimeDateTime; case _effectiveTimeDateTime
		case effectiveTimePeriod
		case encounter
		case identifier
		case medicationCodeableConcept
		case medicationReference
		case note; case _note
		case patient
		case practitioner
		case prescription
		case reasonGiven
		case reasonNotGiven
		case status; case _status
		case wasNotGiven; case _wasNotGiven
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.effectiveTimeDateTime) || _container.contains(CodingKeys.effectiveTimePeriod) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.effectiveTimeDateTime, CodingKeys.effectiveTimePeriod], debugDescription: "Must have at least one value for \"effectiveTime\" but have none"))
		}
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.dosage = try MedicationAdministrationDosage(from: _container, forKeyIfPresent: .dosage)
		var _t_effectiveTime: EffectiveTimeX? = nil
		if let effectiveTimeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveTimeDateTime, auxiliaryKey: ._effectiveTimeDateTime) {
			if _t_effectiveTime != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTimeDateTime, in: _container, debugDescription: "More than one value provided for \"effectiveTime\"")
			}
			_t_effectiveTime = .dateTime(effectiveTimeDateTime)
		}
		if let effectiveTimePeriod = try Period(from: _container, forKeyIfPresent: .effectiveTimePeriod) {
			if _t_effectiveTime != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTimePeriod, in: _container, debugDescription: "More than one value provided for \"effectiveTime\"")
			}
			_t_effectiveTime = .period(effectiveTimePeriod)
		}
		self.effectiveTime = _t_effectiveTime!
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
		self.patient = try Reference(from: _container, forKey: .patient)
		self.practitioner = try Reference(from: _container, forKeyIfPresent: .practitioner)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.reasonGiven = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonGiven)
		self.reasonNotGiven = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotGiven)
		self.status = try FHIRPrimitive<MedicationAdministrationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.wasNotGiven = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try device?.encode(on: &_container, forKey: .device)
		try dosage?.encode(on: &_container, forKey: .dosage)
		
			switch effectiveTime {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTimeDateTime, auxiliaryKey: ._effectiveTimeDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTimePeriod)
			}
		
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note, auxiliaryKey: ._note)
		try patient.encode(on: &_container, forKey: .patient)
		try practitioner?.encode(on: &_container, forKey: .practitioner)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try reasonGiven?.encode(on: &_container, forKey: .reasonGiven)
		try reasonNotGiven?.encode(on: &_container, forKey: .reasonNotGiven)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try wasNotGiven?.encode(on: &_container, forKey: .wasNotGiven, auxiliaryKey: ._wasNotGiven)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationAdministration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return device == _other.device
		    && dosage == _other.dosage
		    && effectiveTime == _other.effectiveTime
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && medication == _other.medication
		    && note == _other.note
		    && patient == _other.patient
		    && practitioner == _other.practitioner
		    && prescription == _other.prescription
		    && reasonGiven == _other.reasonGiven
		    && reasonNotGiven == _other.reasonNotGiven
		    && status == _other.status
		    && wasNotGiven == _other.wasNotGiven
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(device)
		hasher.combine(dosage)
		hasher.combine(effectiveTime)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(practitioner)
		hasher.combine(prescription)
		hasher.combine(reasonGiven)
		hasher.combine(reasonNotGiven)
		hasher.combine(status)
		hasher.combine(wasNotGiven)
	}
}

/**
 Details of how medication was taken.
 
 Describes the medication dosage information details e.g. dose, rate, site, route, etc.
 */
open class MedicationAdministrationDosage: BackboneElement {
	
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
	
	/// Body site administered to
	/// One of `site[x]`
	public var site: SiteX?
	
	/// Path of substance into body
	public var route: CodeableConcept?
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	public var quantity: Quantity?
	
	/// Dose quantity per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil,
							rate: RateX? = nil,
							route: CodeableConcept? = nil,
							site: SiteX? = nil,
							text: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case method
		case quantity
		case rateRange
		case rateRatio
		case route
		case siteCodeableConcept
		case siteReference
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try method?.encode(on: &_container, forKey: .method)
		try quantity?.encode(on: &_container, forKey: .quantity)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationAdministrationDosage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return method == _other.method
		    && quantity == _other.quantity
		    && rate == _other.rate
		    && route == _other.route
		    && site == _other.site
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(method)
		hasher.combine(quantity)
		hasher.combine(rate)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(text)
	}
}
