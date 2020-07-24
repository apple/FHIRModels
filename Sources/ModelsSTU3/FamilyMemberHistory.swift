//
//  FamilyMemberHistory.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory)
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
 Information about patient's relatives, relevant for patient.
 
 Significant health events and conditions for a person related to the patient relevant in the context of care for the
 patient.
 */
open class FamilyMemberHistory: DomainResource {
	
	override open class var resourceType: ResourceType { return .familyMemberHistory }
	
	/// All possible types for "age[x]"
	public enum AgeX: Hashable {
		case age(Age)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "born[x]"
	public enum BornX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Hashable {
		case age(Age)
		case boolean(FHIRPrimitive<FHIRBool>)
		case date(FHIRPrimitive<FHIRDate>)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// A code specifying the status of the record of the family history of a specific family member.
	public var status: FHIRPrimitive<FamilyHistoryStatus>
	
	/// The taking of a family member's history did not occur
	public var notDone: FHIRPrimitive<FHIRBool>?
	
	/// subject-unknown | withheld | unable-to-obtain | deferred
	public var notDoneReason: CodeableConcept?
	
	/// Patient history is about
	public var patient: Reference
	
	/// When history was captured/updated
	public var date: FHIRPrimitive<DateTime>?
	
	/// The family member described
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept
	
	/// Administrative Gender - the gender that the relative is considered to have for administration and record keeping
	/// purposes.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// (approximate) date of birth
	/// One of `born[x]`
	public var born: BornX?
	
	/// (approximate) age
	/// One of `age[x]`
	public var age: AgeX?
	
	/// Age is estimated?
	public var estimatedAge: FHIRPrimitive<FHIRBool>?
	
	/// Dead? How old/when?
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Why was family member history performed?
	public var reasonCode: [CodeableConcept]?
	
	/// Why was family member history performed?
	public var reasonReference: [Reference]?
	
	/// General note about related person
	public var note: [Annotation]?
	
	/// Condition that the related person had
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, relationship: CodeableConcept, status: FHIRPrimitive<FamilyHistoryStatus>) {
		self.patient = patient
		self.relationship = relationship
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							age: AgeX? = nil,
							born: BornX? = nil,
							condition: [FamilyMemberHistoryCondition]? = nil,
							contained: [ResourceProxy]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							deceased: DeceasedX? = nil,
							definition: [Reference]? = nil,
							estimatedAge: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							gender: FHIRPrimitive<AdministrativeGender>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							notDone: FHIRPrimitive<FHIRBool>? = nil,
							notDoneReason: CodeableConcept? = nil,
							note: [Annotation]? = nil,
							patient: Reference,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							relationship: CodeableConcept,
							status: FHIRPrimitive<FamilyHistoryStatus>,
							text: Narrative? = nil)
	{
		self.init(patient: patient, relationship: relationship, status: status)
		self.age = age
		self.born = born
		self.condition = condition
		self.contained = contained
		self.date = date
		self.deceased = deceased
		self.definition = definition
		self.estimatedAge = estimatedAge
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.notDone = notDone
		self.notDoneReason = notDoneReason
		self.note = note
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ageAge
		case ageRange
		case ageString; case _ageString
		case bornDate; case _bornDate
		case bornPeriod
		case bornString; case _bornString
		case condition
		case date; case _date
		case deceasedAge
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDate; case _deceasedDate
		case deceasedRange
		case deceasedString; case _deceasedString
		case definition
		case estimatedAge; case _estimatedAge
		case gender; case _gender
		case identifier
		case name; case _name
		case notDone; case _notDone
		case notDoneReason
		case note
		case patient
		case reasonCode
		case reasonReference
		case relationship
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_age: AgeX? = nil
		if let ageAge = try Age(from: _container, forKeyIfPresent: .ageAge) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageAge, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .age(ageAge)
		}
		if let ageRange = try Range(from: _container, forKeyIfPresent: .ageRange) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageRange, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .range(ageRange)
		}
		if let ageString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ageString, auxiliaryKey: ._ageString) {
			if _t_age != nil {
				throw DecodingError.dataCorruptedError(forKey: .ageString, in: _container, debugDescription: "More than one value provided for \"age\"")
			}
			_t_age = .string(ageString)
		}
		self.age = _t_age
		var _t_born: BornX? = nil
		if let bornPeriod = try Period(from: _container, forKeyIfPresent: .bornPeriod) {
			if _t_born != nil {
				throw DecodingError.dataCorruptedError(forKey: .bornPeriod, in: _container, debugDescription: "More than one value provided for \"born\"")
			}
			_t_born = .period(bornPeriod)
		}
		if let bornDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .bornDate, auxiliaryKey: ._bornDate) {
			if _t_born != nil {
				throw DecodingError.dataCorruptedError(forKey: .bornDate, in: _container, debugDescription: "More than one value provided for \"born\"")
			}
			_t_born = .date(bornDate)
		}
		if let bornString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bornString, auxiliaryKey: ._bornString) {
			if _t_born != nil {
				throw DecodingError.dataCorruptedError(forKey: .bornString, in: _container, debugDescription: "More than one value provided for \"born\"")
			}
			_t_born = .string(bornString)
		}
		self.born = _t_born
		self.condition = try [FamilyMemberHistoryCondition](from: _container, forKeyIfPresent: .condition)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		var _t_deceased: DeceasedX? = nil
		if let deceasedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedBoolean, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .boolean(deceasedBoolean)
		}
		if let deceasedAge = try Age(from: _container, forKeyIfPresent: .deceasedAge) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedAge, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .age(deceasedAge)
		}
		if let deceasedRange = try Range(from: _container, forKeyIfPresent: .deceasedRange) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedRange, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .range(deceasedRange)
		}
		if let deceasedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .deceasedDate, auxiliaryKey: ._deceasedDate) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedDate, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .date(deceasedDate)
		}
		if let deceasedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deceasedString, auxiliaryKey: ._deceasedString) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedString, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .string(deceasedString)
		}
		self.deceased = _t_deceased
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.estimatedAge = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .estimatedAge, auxiliaryKey: ._estimatedAge)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.notDone = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notDone, auxiliaryKey: ._notDone)
		self.notDoneReason = try CodeableConcept(from: _container, forKeyIfPresent: .notDoneReason)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.relationship = try CodeableConcept(from: _container, forKey: .relationship)
		self.status = try FHIRPrimitive<FamilyHistoryStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = age {
			switch _enum {
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .ageAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .ageRange)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .ageString, auxiliaryKey: ._ageString)
			}
		}
		if let _enum = born {
			switch _enum {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .bornPeriod)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .bornDate, auxiliaryKey: ._bornDate)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .bornString, auxiliaryKey: ._bornString)
			}
		}
		try condition?.encode(on: &_container, forKey: .condition)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		if let _enum = deceased {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean)
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .deceasedAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .deceasedRange)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .deceasedDate, auxiliaryKey: ._deceasedDate)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .deceasedString, auxiliaryKey: ._deceasedString)
			}
		}
		try definition?.encode(on: &_container, forKey: .definition)
		try estimatedAge?.encode(on: &_container, forKey: .estimatedAge, auxiliaryKey: ._estimatedAge)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try notDone?.encode(on: &_container, forKey: .notDone, auxiliaryKey: ._notDone)
		try notDoneReason?.encode(on: &_container, forKey: .notDoneReason)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try relationship.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? FamilyMemberHistory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return age == _other.age
		    && born == _other.born
		    && condition == _other.condition
		    && date == _other.date
		    && deceased == _other.deceased
		    && definition == _other.definition
		    && estimatedAge == _other.estimatedAge
		    && gender == _other.gender
		    && identifier == _other.identifier
		    && name == _other.name
		    && notDone == _other.notDone
		    && notDoneReason == _other.notDoneReason
		    && note == _other.note
		    && patient == _other.patient
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && relationship == _other.relationship
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(age)
		hasher.combine(born)
		hasher.combine(condition)
		hasher.combine(date)
		hasher.combine(deceased)
		hasher.combine(definition)
		hasher.combine(estimatedAge)
		hasher.combine(gender)
		hasher.combine(identifier)
		hasher.combine(name)
		hasher.combine(notDone)
		hasher.combine(notDoneReason)
		hasher.combine(note)
		hasher.combine(patient)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(relationship)
		hasher.combine(status)
	}
}

/**
 Condition that the related person had.
 
 The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to
 represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 condition.
 */
open class FamilyMemberHistoryCondition: BackboneElement {
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Hashable {
		case age(Age)
		case period(Period)
		case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Condition suffered by relation
	public var code: CodeableConcept
	
	/// deceased | permanent disability | etc.
	public var outcome: CodeableConcept?
	
	/// When condition first manifested
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// Extra information about condition
	public var note: [Annotation]?
	
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
							note: [Annotation]? = nil,
							onset: OnsetX? = nil,
							outcome: CodeableConcept? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.onset = onset
		self.outcome = outcome
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case note
		case onsetAge
		case onsetPeriod
		case onsetRange
		case onsetString; case _onsetString
		case outcome
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_onset: OnsetX? = nil
		if let onsetAge = try Age(from: _container, forKeyIfPresent: .onsetAge) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetAge, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .age(onsetAge)
		}
		if let onsetRange = try Range(from: _container, forKeyIfPresent: .onsetRange) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetRange, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .range(onsetRange)
		}
		if let onsetPeriod = try Period(from: _container, forKeyIfPresent: .onsetPeriod) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetPeriod, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .period(onsetPeriod)
		}
		if let onsetString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .onsetString, auxiliaryKey: ._onsetString) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetString, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .string(onsetString)
		}
		self.onset = _t_onset
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = onset {
			switch _enum {
			case .age(let _value):
				try _value.encode(on: &_container, forKey: .onsetAge)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .onsetRange)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .onsetPeriod)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .onsetString, auxiliaryKey: ._onsetString)
			}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? FamilyMemberHistoryCondition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && note == _other.note
		    && onset == _other.onset
		    && outcome == _other.outcome
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(note)
		hasher.combine(onset)
		hasher.combine(outcome)
	}
}
