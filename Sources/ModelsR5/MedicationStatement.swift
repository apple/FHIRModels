//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
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
 
 The MedicationStatement resource was previously called MedicationStatement.
 */
public struct MedicationStatement: DomainResource {
	
	public static let resourceType: ResourceType = .medicationStatement
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Indicates whether the medication is or is not being consumed or administered
	public var adherence: MedicationStatementAdherence?
	
	/// Type of medication statement
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the usage was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Link to information used to derive the MedicationStatement
	public var derivedFrom: [Reference]?
	
	/// Details of how medication is/was taken or should be taken
	public var dosage: [Dosage]?
	
	/// The date/time or interval when the medication is/was/will be taken
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Encounter associated with MedicationStatement
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Person or organization that provided the information about the taking of this medication
	public var informationSource: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What medication was taken
	public var medication: CodeableReference
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Further information about the usage
	public var note: [Annotation]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Reason for why the medication is being/was taken
	public var reason: [CodeableReference]?
	
	/// Link to information relevant to the usage of a medication
	public var relatedClinicalInformation: [Reference]?
	
	/// Full representation of the dosage instructions
	public var renderedDosageInstruction: FHIRPrimitive<FHIRString>?
	
	/// A code representing the status of recording the medication statement.
	public var status: FHIRPrimitive<MedicationStatementStatusCodes>
	
	/// Who is/was taking  the medication
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.reason = reason
		self.relatedClinicalInformation = relatedClinicalInformation
		self.renderedDosageInstruction = renderedDosageInstruction
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case adherence
		case category
		case contained
		case dateAsserted; case _dateAsserted
		case derivedFrom
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case effectiveTiming
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case language; case _language
		case medication
		case meta
		case modifierExtension
		case note
		case partOf
		case reason
		case relatedClinicalInformation
		case renderedDosageInstruction; case _renderedDosageInstruction
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.adherence = try MedicationStatementAdherence(from: _container, forKeyIfPresent: .adherence)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.dosage = try [Dosage](from: _container, forKeyIfPresent: .dosage)
		self.effective = try Self._decodeEffective(from: _container)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try [Reference](from: _container, forKeyIfPresent: .informationSource)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relatedClinicalInformation = try [Reference](from: _container, forKeyIfPresent: .relatedClinicalInformation)
		self.renderedDosageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		self.status = try FHIRPrimitive<MedicationStatementStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try adherence?.encode(on: &_container, forKey: .adherence)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medication.encode(on: &_container, forKey: .medication)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try reason?.encode(on: &_container, forKey: .reason)
		try relatedClinicalInformation?.encode(on: &_container, forKey: .relatedClinicalInformation)
		try renderedDosageInstruction?.encode(on: &_container, forKey: .renderedDosageInstruction, auxiliaryKey: ._renderedDosageInstruction)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
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
		if let effectiveTiming = try Timing(from: _container, forKeyIfPresent: .effectiveTiming) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTiming, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .timing(effectiveTiming)
		}
		return _t_effective
	}
}

/**
 Indicates whether the medication is or is not being consumed or administered.
 */
public struct MedicationStatementAdherence: BackboneElement {
	
	/// Type of adherence
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Details of the reason for the current use of the medication
	public var reason: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
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
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
	}
}
