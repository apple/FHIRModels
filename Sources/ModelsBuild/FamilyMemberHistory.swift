//
//  FamilyMemberHistory.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory)
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
 
 Significant health conditions for a person related to the patient relevant in the context of care for the patient.
 */
public struct FamilyMemberHistory: DomainResource {
	
	public static let resourceType: ResourceType = .familyMemberHistory
	
	/// All possible types for "age[x]"
	public enum AgeX: Equatable, Hashable, Sendable {
		indirect case age(Age)
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
		indirect case age(Age)
		case boolean(FHIRPrimitive<FHIRBool>)
		case date(FHIRPrimitive<FHIRDate>)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// (approximate) age
	/// One of `age[x]`
	public var age: AgeX?
	
	/// Person or device that asserts this family member history
	public var asserter: Reference?
	
	/// (approximate) date of birth
	/// One of `born[x]`
	public var born: BornX?
	
	/// Condition that the related person had
	public var condition: [FamilyMemberHistoryCondition]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// subject-unknown | withheld | unable-to-obtain | deferred
	public var dataAbsentReason: CodeableConcept?
	
	/// When history was recorded or last updated
	public var date: FHIRPrimitive<DateTime>?
	
	/// Dead? How old/when?
	/// One of `deceased[x]`
	public var deceased: DeceasedX?
	
	/// Age is estimated?
	public var estimatedAge: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
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
	public var note: [Annotation]?
	
	/// Patient history is about
	public var patient: Reference
	
	/// Procedures that the related person had
	public var procedure: [FamilyMemberHistoryProcedure]?
	
	/// Why was family member history performed?
	public var reason: [CodeableReference]?
	
	/// Who recorded the family member history
	public var recorder: Reference?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept
	
	/// male | female | other | unknown
	public var sex: CodeableConcept?
	
	/// A code specifying the status of the record of the family history of a specific family member.
	public var status: FHIRPrimitive<FamilyHistoryStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		age: AgeX? = nil,
		asserter: Reference? = nil,
		born: BornX? = nil,
		condition: [FamilyMemberHistoryCondition]? = nil,
		contained: [ResourceProxy]? = nil,
		dataAbsentReason: CodeableConcept? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		deceased: DeceasedX? = nil,
		estimatedAge: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		patient: Reference,
		procedure: [FamilyMemberHistoryProcedure]? = nil,
		reason: [CodeableReference]? = nil,
		recorder: Reference? = nil,
		relationship: CodeableConcept,
		sex: CodeableConcept? = nil,
		status: FHIRPrimitive<FamilyHistoryStatus>,
		text: Narrative? = nil
	) {
		self.age = age
		self.asserter = asserter
		self.born = born
		self.condition = condition
		self.contained = contained
		self.dataAbsentReason = dataAbsentReason
		self.date = date
		self.deceased = deceased
		self.estimatedAge = estimatedAge
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.patient = patient
		self.procedure = procedure
		self.reason = reason
		self.recorder = recorder
		self.relationship = relationship
		self.sex = sex
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case ageAge
		case ageRange
		case ageString; case _ageString
		case asserter
		case bornDate; case _bornDate
		case bornPeriod
		case bornString; case _bornString
		case condition
		case contained
		case dataAbsentReason
		case date; case _date
		case deceasedAge
		case deceasedBoolean; case _deceasedBoolean
		case deceasedDate; case _deceasedDate
		case deceasedRange
		case deceasedString; case _deceasedString
		case estimatedAge; case _estimatedAge
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case name; case _name
		case note
		case patient
		case procedure
		case reason
		case recorder
		case relationship
		case sex
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.age = try Self._decodeAge(from: _container)
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.born = try Self._decodeBorn(from: _container)
		self.condition = try [FamilyMemberHistoryCondition](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataAbsentReason = try CodeableConcept(from: _container, forKeyIfPresent: .dataAbsentReason)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.deceased = try Self._decodeDeceased(from: _container)
		self.estimatedAge = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .estimatedAge, auxiliaryKey: ._estimatedAge)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.procedure = try [FamilyMemberHistoryProcedure](from: _container, forKeyIfPresent: .procedure)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.relationship = try CodeableConcept(from: _container, forKey: .relationship)
		self.sex = try CodeableConcept(from: _container, forKeyIfPresent: .sex)
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
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .ageAge)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .ageRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .ageString, auxiliaryKey: ._ageString)
		}
		}
		try asserter?.encode(on: &_container, forKey: .asserter)
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
		try dataAbsentReason?.encode(on: &_container, forKey: .dataAbsentReason)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		if let _enum = deceased {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .deceasedAge)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .deceasedDate, auxiliaryKey: ._deceasedDate)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .deceasedRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .deceasedString, auxiliaryKey: ._deceasedString)
		}
		}
		try estimatedAge?.encode(on: &_container, forKey: .estimatedAge, auxiliaryKey: ._estimatedAge)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try patient.encode(on: &_container, forKey: .patient)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try relationship.encode(on: &_container, forKey: .relationship)
		try sex?.encode(on: &_container, forKey: .sex)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAge(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AgeX? {
		var _t_age: AgeX? = nil
		if let ageAge = try Age(from: _container, forKeyIfPresent: .ageAge) {
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
		if let deceasedAge = try Age(from: _container, forKeyIfPresent: .deceasedAge) {
			_t_deceased = .age(deceasedAge)
		}
		if let deceasedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .deceasedBoolean, auxiliaryKey: ._deceasedBoolean) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedBoolean, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .boolean(deceasedBoolean)
		}
		if let deceasedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .deceasedDate, auxiliaryKey: ._deceasedDate) {
			if _t_deceased != nil {
				throw DecodingError.dataCorruptedError(forKey: .deceasedDate, in: _container, debugDescription: "More than one value provided for \"deceased\"")
			}
			_t_deceased = .date(deceasedDate)
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
		indirect case age(Age)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Condition, allergy, or intolerance suffered by relation
	public var code: CodeableConcept
	
	/// Whether the condition contributed to the cause of death
	public var contributedToDeath: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Extra information about condition
	public var note: [Annotation]?
	
	/// When condition first manifested
	/// One of `onset[x]`
	public var onset: OnsetX?
	
	/// deceased | permanent disability | etc
	public var outcome: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		contributedToDeath: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		onset: OnsetX? = nil,
		outcome: CodeableConcept? = nil
	) {
		self.code = code
		self.contributedToDeath = contributedToDeath
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
		case contributedToDeath; case _contributedToDeath
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case onsetAge
		case onsetPeriod
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
		self.contributedToDeath = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .contributedToDeath, auxiliaryKey: ._contributedToDeath)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.onset = try Self._decodeOnset(from: _container)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try contributedToDeath?.encode(on: &_container, forKey: .contributedToDeath, auxiliaryKey: ._contributedToDeath)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = onset {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .onsetAge)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .onsetPeriod)
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
		if let onsetAge = try Age(from: _container, forKeyIfPresent: .onsetAge) {
			_t_onset = .age(onsetAge)
		}
		if let onsetPeriod = try Period(from: _container, forKeyIfPresent: .onsetPeriod) {
			if _t_onset != nil {
				throw DecodingError.dataCorruptedError(forKey: .onsetPeriod, in: _container, debugDescription: "More than one value provided for \"onset\"")
			}
			_t_onset = .period(onsetPeriod)
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

/**
 Procedures that the related person had.
 
 The significant Procedures (or procedure) that the family member had. This is a repeating section to allow a system to
 represent more than one procedure per resource, though there is nothing stopping multiple resources - one per
 procedure.
 */
public struct FamilyMemberHistoryProcedure: BackboneElement {
	
	/// All possible types for "performed[x]"
	public enum PerformedX: Equatable, Hashable, Sendable {
		indirect case age(Age)
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case range(Range)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Procedures performed on the related person
	public var code: CodeableConcept
	
	/// Whether the procedure contributed to the cause of death
	public var contributedToDeath: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Extra information about the procedure
	public var note: [Annotation]?
	
	/// What happened following the procedure
	public var outcome: CodeableConcept?
	
	/// When the procedure was performed
	/// One of `performed[x]`
	public var performed: PerformedX?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		contributedToDeath: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		outcome: CodeableConcept? = nil,
		performed: PerformedX? = nil
	) {
		self.code = code
		self.contributedToDeath = contributedToDeath
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.outcome = outcome
		self.performed = performed
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case contributedToDeath; case _contributedToDeath
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case note
		case outcome
		case performedAge
		case performedDateTime; case _performedDateTime
		case performedPeriod
		case performedRange
		case performedString; case _performedString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contributedToDeath = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .contributedToDeath, auxiliaryKey: ._contributedToDeath)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.performed = try Self._decodePerformed(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try contributedToDeath?.encode(on: &_container, forKey: .contributedToDeath, auxiliaryKey: ._contributedToDeath)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try outcome?.encode(on: &_container, forKey: .outcome)
		if let _enum = performed {
		switch _enum {
		case .age(let _value):
			try _value.encode(on: &_container, forKey: .performedAge)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .performedDateTime, auxiliaryKey: ._performedDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .performedPeriod)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .performedRange)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .performedString, auxiliaryKey: ._performedString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodePerformed(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> PerformedX? {
		var _t_performed: PerformedX? = nil
		if let performedAge = try Age(from: _container, forKeyIfPresent: .performedAge) {
			_t_performed = .age(performedAge)
		}
		if let performedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .performedDateTime, auxiliaryKey: ._performedDateTime) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedDateTime, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .dateTime(performedDateTime)
		}
		if let performedPeriod = try Period(from: _container, forKeyIfPresent: .performedPeriod) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedPeriod, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .period(performedPeriod)
		}
		if let performedRange = try Range(from: _container, forKeyIfPresent: .performedRange) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedRange, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .range(performedRange)
		}
		if let performedString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .performedString, auxiliaryKey: ._performedString) {
			if _t_performed != nil {
				throw DecodingError.dataCorruptedError(forKey: .performedString, in: _container, debugDescription: "More than one value provided for \"performed\"")
			}
			_t_performed = .string(performedString)
		}
		return _t_performed
	}
}
