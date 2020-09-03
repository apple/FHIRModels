//
//  MedicationUsage.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/MedicationUsage)
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
 
 A record of a medication that is being consumed by a patient.   A MedicationUsage may indicate that the patient may be
 taking the medication now or has taken the medication in the past or will be taking the medication in the future.  The
 source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.
 A common scenario where this information is captured is during the history taking process during a patient visit or
 stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or
 from a list of medications the patient, clinician or other party maintains.
 
 The primary difference between a medicationusage and a medicationadministration is that the medication administration
 has complete administration information and is based on actual administration information from the person who
 administered the medication.  A medicationusage is often, if not always, less specific.  There is no required date/time
 when the medication was administered, in fact we only know that a source has reported the patient is taking this
 medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or
 less precise.  As stated earlier, the Medication Usage information may come from the patient's memory, from a
 prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 administration is more formal and is not missing detailed information.
 */
open class MedicationUsage: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationUsage }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Fulfils plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// usage is about.  Generally, this will be active or completed.
	public var status: FHIRPrimitive<MedicationUsageStatusCodes>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Type of medication usage
	public var category: [CodeableConcept]?
	
	/// What medication was taken
	public var medication: CodeableReference
	
	/// Who is/was taking  the medication
	public var subject: Reference
	
	/// Encounter associated with MedicationUsage
	public var encounter: Reference?
	
	/// The date/time or interval when the medication is/was/will be taken
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// When the usage was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Person or organization that provided the information about the taking of this medication
	public var informationSource: Reference?
	
	/// Link to information used to derive the MedicationUsage
	public var derivedFrom: [Reference]?
	
	/// Reason for why the medication is being/was taken
	public var reason: [CodeableReference]?
	
	/// Further information about the usage
	public var note: [Annotation]?
	
	/// Full representation of the dosage instructions
	public var renderedDosageInstruction: FHIRPrimitive<FHIRString>?
	
	/// Details of how medication is/was taken or should be taken
	public var dosage: [Dosage]?
	
	/// Indicates if the medication is being consumed or administered as prescribed
	public var takenAsOrdered: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(medication: CodeableReference, status: FHIRPrimitive<MedicationUsageStatusCodes>, subject: Reference) {
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							category: [CodeableConcept]? = nil,
							contained: [ResourceProxy]? = nil,
							dateAsserted: FHIRPrimitive<DateTime>? = nil,
							derivedFrom: [Reference]? = nil,
							dosage: [Dosage]? = nil,
							effective: EffectiveX? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							informationSource: Reference? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: CodeableReference,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							reason: [CodeableReference]? = nil,
							renderedDosageInstruction: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<MedicationUsageStatusCodes>,
							statusReason: [CodeableConcept]? = nil,
							subject: Reference,
							takenAsOrdered: FHIRPrimitive<FHIRBool>? = nil,
							text: Narrative? = nil)
	{
		self.init(medication: medication, status: status, subject: subject)
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.dateAsserted = dateAsserted
		self.derivedFrom = derivedFrom
		self.dosage = dosage
		self.effective = effective
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.reason = reason
		self.renderedDosageInstruction = renderedDosageInstruction
		self.statusReason = statusReason
		self.takenAsOrdered = takenAsOrdered
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case encounter
		case identifier
		case informationSource
		case medication
		case note
		case partOf
		case reason
		case renderedDosageInstruction; case _renderedDosageInstruction
		case status; case _status
		case statusReason
		case subject
		case takenAsOrdered; case _takenAsOrdered
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.dosage = try [Dosage](from: _container, forKeyIfPresent: .dosage)
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
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.renderedDosageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		self.status = try FHIRPrimitive<MedicationUsageStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.takenAsOrdered = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .takenAsOrdered, auxiliaryKey: ._takenAsOrdered)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try dateAsserted?.encode(on: &_container, forKey: .dateAsserted, auxiliaryKey: ._dateAsserted)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try dosage?.encode(on: &_container, forKey: .dosage)
		if let _enum = effective {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try medication.encode(on: &_container, forKey: .medication)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reason?.encode(on: &_container, forKey: .reason)
		try renderedDosageInstruction?.encode(on: &_container, forKey: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try takenAsOrdered?.encode(on: &_container, forKey: .takenAsOrdered, auxiliaryKey: ._takenAsOrdered)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationUsage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && category == _other.category
		    && dateAsserted == _other.dateAsserted
		    && derivedFrom == _other.derivedFrom
		    && dosage == _other.dosage
		    && effective == _other.effective
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && medication == _other.medication
		    && note == _other.note
		    && partOf == _other.partOf
		    && reason == _other.reason
		    && renderedDosageInstruction == _other.renderedDosageInstruction
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && takenAsOrdered == _other.takenAsOrdered
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(dateAsserted)
		hasher.combine(derivedFrom)
		hasher.combine(dosage)
		hasher.combine(effective)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(reason)
		hasher.combine(renderedDosageInstruction)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
		hasher.combine(takenAsOrdered)
	}
}
