//
//  FamilyMemberHistory.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory)
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
 Information about patient's relatives, relevant for patient.
 
 Significant health events and conditions for a person related to the patient relevant in the context of care for the
 patient.
 */
public struct FamilyMemberHistory: DomainResource {
	
	public static let resourceType: ResourceType = .familyMemberHistory
	
	/// All possible types for "age[x]"
	public enum AgeX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "born[x]"
	public enum BornX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "deceased[x]"
	public enum DeceasedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case date(FHIRPrimitive<FHIRDate>)
		indirect case quantity(Quantity)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// (approximate) age
	/// One of `age[x]`
	public var age: AgeX?
	
	/// (approximate) date of birth
	/// One of `born[x]`
	public var born: BornX?
	
	/// Condition that the related person had
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When history was captured/updated
	public var date: FHIRPrimitive<DateTime>?
	
	/// Dead? How old/when?
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Administrative Gender - the gender that the relative is considered to have for administration and record keeping
	/// purposes.
	/// Restricted to: ['male', 'female', 'other', 'unknown']
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The family member described
	public var name: FHIRPrimitive<FHIRString>?
	
	/// General note about related person
	public var note: Annotation?
	
	/// Patient history is about
	public var patient: Reference
	
	/// Relationship to the subject
	public var relationship: CodeableConcept
	
	/// A code specifying a state of a Family Member History record.
	/// Restricted to: ['partial', 'completed', 'entered-in-error', 'health-unknown']
	public var status: FHIRPrimitive<FamilyHistoryStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		age: AgeX? = nil,
		born: BornX? = nil,
		condition: [FamilyMemberHistoryCondition]? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		deceased: DeceasedX? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: Annotation? = nil,
		patient: Reference,
		relationship: CodeableConcept,
		status: FHIRPrimitive<FamilyHistoryStatus>,
		text: Narrative? = nil
	) {
		self.age = age
		self.born = born
		self.condition = condition
		self.contained = contained
		self.date = date
		self.deceased = deceased
		self.`extension` = `extension`
		self.gender = gender
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.patient = patient
		self.relationship = relationship
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case ageQuantity
		case ageRange
		case ageString; case _ageString
		case bornDate; case _bornDate
		case bornPeriod
		case bornString; case _bornString
		case condition
		case contained
		case date; case _date
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDate; case _deceasedDate
		case deceasedQuantity
		case deceasedRange
		case deceasedString; case _deceasedString
		case `extension` = "extension"
		case gender; case _gender
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case note
		case patient
		case relationship
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Self._decodeAge(from: _container)
		self.born = try Self._decodeBorn(from: _container)
		self.condition = try [FamilyMemberHistoryCondition](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.deceased = try Self._decodeDeceased(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.relationship = try CodeableConcept(from: _container, forKey: .relationship)
		self.status = try FHIRPrimitive<FamilyHistoryStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		if let _enum = age {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .ageQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .ageRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .ageString, auxiliaryKey: ._ageString)
		}
		}
		if let _enum = born {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .bornDate, auxiliaryKey: ._bornDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .bornPeriod)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .bornString, auxiliaryKey: ._bornString)
		}
		}
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		if let _enum = deceased {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .deceasedDate, auxiliaryKey: ._deceasedDate)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .deceasedQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .deceasedRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .deceasedString, auxiliaryKey: ._deceasedString)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try relationship.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAge(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AgeX? {
		var _t_age: AgeX? = nil
		if let ageQuantity = try Quantity(from: _container, forKeyIfPresent: .ageQuantity) {
			_t_age = .quantity(ageQuantity)
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
		return _t_age
	}
	
	private static func _decodeBorn(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> BornX? {
		var _t_born: BornX? = nil
		if let bornDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .bornDate, auxiliaryKey: ._bornDate) {
			_t_born = .date(bornDate)
		}
		if let bornPeriod = try Period(from: _container, forKeyIfPresent: .bornPeriod) {
			if _t_born != nil {
				throw DecodingError.dataCorruptedError(forKey: .bornPeriod, in: _container, debugDescription: "More than one value provided for \"born\"")
			}
			_t_born = .period(bornPeriod)
		}
		if let bornString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .bornString, auxiliaryKey: ._bornString) {
			if _t_born != nil {
				throw DecodingError.dataCorruptedError(forKey: .bornString, in: _container, debugDescription: "More than one value provided for \"born\"")
			}
			_t_born = .string(bornString)
		}
		return _t_born
	}
	
	private static func _decodeDeceased(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeceasedX? {
		var _t_deceased: DeceasedX? = nil
		if let deceasedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean) {
			_t_deceased = .boolean(deceasedBoolean)
		}
		if let deceasedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .deceasedDate, auxiliaryKey: ._deceasedDate) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedDate, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .date(deceasedDate)
		}
		if let deceasedQuantity = try Quantity(from: _container, forKeyIfPresent: .deceasedQuantity) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedQuantity, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .quantity(deceasedQuantity)
		}
		if let deceasedRange = try Range(from: _container, forKeyIfPresent: .deceasedRange) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedRange, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .range(deceasedRange)
		}
		if let deceasedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .deceasedString, auxiliaryKey: ._deceasedString) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedString, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .string(deceasedString)
		}
		return _t_deceased
	}
}

/**
 Condition that the related person had.
 
 The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to
 represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 condition.
 */
public struct FamilyMemberHistoryCondition: BackboneElement {
	
	/// All possible types for "onset[x]"
	public enum OnsetX: Equatable, Hashable, Sendable {
		indirect case period(Period)
		indirect case quantity(Quantity)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Condition suffered by relation
	public var code: CodeableConcept
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Extra information about condition
	public var note: Annotation?
	
	/// When condition first manifested
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// deceased | permanent disability | etc.
	public var outcome: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		onset: OnsetX? = nil,
		outcome: CodeableConcept? = nil
	) {
		self.code = code
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case onsetPeriod
		case onsetQuantity
		case onsetRange
		case onsetString; case _onsetString
		case outcome
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
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.onset = try Self._decodeOnset(from: _container)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = onset {
		switch _enum {
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .onsetPeriod)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .onsetQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .onsetRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .onsetString, auxiliaryKey: ._onsetString)
		}
		}
		try outcome?.encode(on: &_container, forKey: .outcome)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOnset(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OnsetX? {
		var _t_onset: OnsetX? = nil
		if let onsetPeriod = try Period(from: _container, forKeyIfPresent: .onsetPeriod) {
			_t_onset = .period(onsetPeriod)
		}
		if let onsetQuantity = try Quantity(from: _container, forKeyIfPresent: .onsetQuantity) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetQuantity, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .quantity(onsetQuantity)
		}
		if let onsetRange = try Range(from: _container, forKeyIfPresent: .onsetRange) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetRange, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .range(onsetRange)
		}
		if let onsetString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .onsetString, auxiliaryKey: ._onsetString) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetString, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .string(onsetString)
		}
		return _t_onset
	}
}
