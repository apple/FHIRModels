//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
//  Copyright 2024 Apple Inc.
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
 
 The primary difference between a medicationstatement and a medicationadministration is that the medication
 administration has complete administration information and is based on actual administration information from the
 person who administered the medication.  A medicationstatement is often, if not always, less specific.  There is no
 required date/time when the medication was administered, in fact we only know that a source has reported the patient is
 taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or
 missing or less precise.  As stated earlier, the Medication Statement information may come from the patient's memory,
 from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 administration is more formal and is not missing detailed information.
 */
open class MedicationStatement: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationStatement }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// A code representing the status of recording the medication statement.
	public var status: FHIRPrimitive<MedicationStatementStatusCodes>
	
	/// Type of medication statement
	public var category: [CodeableConcept]?
	
	/// What medication was taken
	public var medication: CodeableReference
	
	/// Who is/was taking  the medication
	public var subject: Reference
	
	/// Encounter associated with MedicationStatement
	public var encounter: Reference?
	
	/// The date/time or interval when the medication is/was/will be taken
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// When the usage was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Person or organization that provided the information about the taking of this medication
	public var informationSource: [Reference]?
	
	/// Link to information used to derive the MedicationStatement
	public var derivedFrom: [Reference]?
	
	/// Reason for why the medication is being/was taken
	public var reason: [CodeableReference]?
	
	/// Further information about the usage
	public var note: [Annotation]?
	
	/// Link to information relevant to the usage of a medication
	public var relatedClinicalInformation: [Reference]?
	
	/// Full representation of the dosage instructions
	public var renderedDosageInstruction: FHIRPrimitive<FHIRString>?
	
	/// Details of how medication is/was taken or should be taken
	public var dosage: [Dosage]?
	
	/// Indicates whether the medication is or is not being consumed or administered
	public var adherence: MedicationStatementAdherence?
	
	/// Designated initializer taking all required properties
	public init(medication: CodeableReference, status: FHIRPrimitive<MedicationStatementStatusCodes>, subject: Reference) {
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		adherence: MedicationStatementAdherence? = nil,
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
		informationSource: [Reference]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: CodeableReference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		reason: [CodeableReference]? = nil,
		relatedClinicalInformation: [Reference]? = nil,
		renderedDosageInstruction: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<MedicationStatementStatusCodes>,
		subject: Reference,
		text: Narrative? = nil
	) {
		self.init(medication: medication, status: status, subject: subject)
		self.adherence = adherence
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
		self.relatedClinicalInformation = relatedClinicalInformation
		self.renderedDosageInstruction = renderedDosageInstruction
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case adherence
		case category
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case effectiveTiming
		case encounter
		case identifier
		case informationSource
		case medication
		case note
		case partOf
		case reason
		case relatedClinicalInformation
		case renderedDosageInstruction; case _renderedDosageInstruction
		case status; case _status
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.adherence = try MedicationStatementAdherence(from: _container, forKeyIfPresent: .adherence)
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
		if let effectiveTiming = try Timing(from: _container, forKeyIfPresent: .effectiveTiming) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTiming, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .timing(effectiveTiming)
		}
		self.effective = _t_effective
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relatedClinicalInformation = try [Reference](from: _container, forKeyIfPresent: .relatedClinicalInformation)
		self.renderedDosageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		self.status = try FHIRPrimitive<MedicationStatementStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try adherence?.encode(on: &_container, forKey: .adherence)
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
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTiming)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try medication.encode(on: &_container, forKey: .medication)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reason?.encode(on: &_container, forKey: .reason)
		try relatedClinicalInformation?.encode(on: &_container, forKey: .relatedClinicalInformation)
		try renderedDosageInstruction?.encode(on: &_container, forKey: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return adherence == _other.adherence
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
		    && relatedClinicalInformation == _other.relatedClinicalInformation
		    && renderedDosageInstruction == _other.renderedDosageInstruction
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(adherence)
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
		hasher.combine(relatedClinicalInformation)
		hasher.combine(renderedDosageInstruction)
		hasher.combine(status)
		hasher.combine(subject)
	}
}

/**
 Indicates whether the medication is or is not being consumed or administered.
 */
open class MedicationStatementAdherence: BackboneElement {
	
	/// Type of adherence
	public var code: CodeableConcept
	
	/// Details of the reason for the current use of the medication
	public var reason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case reason
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try reason?.encode(on: &_container, forKey: .reason)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationStatementAdherence else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(reason)
	}
}
