//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
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
 be taking the medication now or has taken the medication in the past or will be taking the medication in the future.
 The source of this information can be the patient, significant other (such as a family member or spouse), or a
 clinician.  A common scenario where this information is captured is during the history taking process during a patient
 visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription
 bottle,  or from a list of medications the patient, clinician or other party maintains.
 
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
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Fulfils plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// statement is about.  Generally, this will be active or completed.
	public var status: FHIRPrimitive<MedicationStatusCodes>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// What medication was taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Who is/was taking  the medication
	public var subject: Reference
	
	/// Encounter / Episode associated with MedicationStatement
	public var context: Reference?
	
	/// The date/time or interval when the medication is/was/will be taken
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// When the statement was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Person or organization that provided the information about the taking of this medication
	public var informationSource: Reference?
	
	/// Additional supporting information
	public var derivedFrom: [Reference]?
	
	/// Reason for why the medication is being/was taken
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or observation that supports why the medication is being/was taken
	public var reasonReference: [Reference]?
	
	/// Further information about the statement
	public var note: [Annotation]?
	
	/// Details of how medication is/was taken or should be taken
	public var dosage: [Dosage]?
	
	/// Designated initializer taking all required properties
	public init(medication: MedicationX, status: FHIRPrimitive<MedicationStatusCodes>, subject: Reference) {
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							dateAsserted: FHIRPrimitive<DateTime>? = nil,
							derivedFrom: [Reference]? = nil,
							dosage: [Dosage]? = nil,
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
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							status: FHIRPrimitive<MedicationStatusCodes>,
							statusReason: [CodeableConcept]? = nil,
							subject: Reference,
							text: Narrative? = nil)
	{
		self.init(medication: medication, status: status, subject: subject)
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.context = context
		self.dateAsserted = dateAsserted
		self.derivedFrom = derivedFrom
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
		self.partOf = partOf
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case context
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case identifier
		case informationSource
		case medicationCodeableConcept
		case medicationReference
		case note
		case partOf
		case reasonCode
		case reasonReference
		case status; case _status
		case statusReason
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
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
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.status = try FHIRPrimitive<MedicationStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
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
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
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
		return basedOn == _other.basedOn
		    && category == _other.category
		    && context == _other.context
		    && dateAsserted == _other.dateAsserted
		    && derivedFrom == _other.derivedFrom
		    && dosage == _other.dosage
		    && effective == _other.effective
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && medication == _other.medication
		    && note == _other.note
		    && partOf == _other.partOf
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(dateAsserted)
		hasher.combine(derivedFrom)
		hasher.combine(dosage)
		hasher.combine(effective)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
	}
}
