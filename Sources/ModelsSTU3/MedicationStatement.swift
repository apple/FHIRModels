//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
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
 Record of medication being taken by a patient.
 
 A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may
 be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.
 The source of this information can be the patient, significant other (such as a family member or spouse), or a
 clinician.  A common scenario where this information is captured is during the history taking process during a patient
 visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription
 bottle,  or from a list of medications the patient, clinician or other party maintains
 
 The primary difference between a medication statement and a medication administration is that the medication
 administration has complete administration information and is based on actual administration information from the
 person who administered the medication.  A medication statement is often, if not always, less specific.  There is no
 required date/time when the medication was administered, in fact we only know that a source has reported the patient is
 taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or
 missing or less precise.  As stated earlier, the medication statement information may come from the patient's memory,
 from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 administration is more formal and is not missing detailed information.
 */
public struct MedicationStatement: DomainResource {
	
	public static let resourceType: ResourceType = .medicationStatement
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Fulfils plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter / Episode associated with MedicationStatement
	public var context: Reference?
	
	/// When the statement was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Additional supporting information
	public var derivedFrom: [Reference]?
	
	/// Details of how medication is/was taken or should be taken
	public var dosage: [Dosage]?
	
	/// The date/time or interval when the medication was taken
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Person or organization that provided the information about the taking of this medication
	public var informationSource: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What medication was taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Further information about the statement
	public var note: [Annotation]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Reason for why the medication is being/was taken
	public var reasonCode: [CodeableConcept]?
	
	/// True if asserting medication was not given
	public var reasonNotTaken: [CodeableConcept]?
	
	/// Condition or observation that supports why the medication is being/was taken
	public var reasonReference: [Reference]?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// statement is about.  Generally this will be active or completed.
	public var status: FHIRPrimitive<MedicationStatementStatus>
	
	/// Who is/was taking  the medication
	public var subject: Reference
	
	/// Indicator of the certainty of whether the medication was taken by the patient.
	public var taken: FHIRPrimitive<MedicationStatementTaken>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		reasonNotTaken: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		status: FHIRPrimitive<MedicationStatementStatus>,
		subject: Reference,
		taken: FHIRPrimitive<MedicationStatementTaken>,
		text: Narrative? = nil
	) {
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
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.reasonCode = reasonCode
		self.reasonNotTaken = reasonNotTaken
		self.reasonReference = reasonReference
		self.status = status
		self.subject = subject
		self.taken = taken
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case category
		case contained
		case context
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case note
		case partOf
		case reasonCode
		case reasonNotTaken
		case reasonReference
		case status; case _status
		case subject
		case taken; case _taken
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.dosage = try [Dosage](from: _container, forKeyIfPresent: .dosage)
		self.effective = try Self._decodeEffective(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonNotTaken = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotTaken)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.status = try FHIRPrimitive<MedicationStatementStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.taken = try FHIRPrimitive<MedicationStatementTaken>(from: _container, forKey: .taken, auxiliaryKey: ._taken)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
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
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonNotTaken?.encode(on: &_container, forKey: .reasonNotTaken)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try taken.encode(on: &_container, forKey: .taken, auxiliaryKey: ._taken)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX? {
		var _t_effective: EffectiveX? = nil
		if let effectiveDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime) {
			_t_effective = .dateTime(effectiveDateTime)
		}
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		return _t_effective
	}
	
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
