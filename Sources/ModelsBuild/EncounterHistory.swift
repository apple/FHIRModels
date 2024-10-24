//
//  EncounterHistory.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/EncounterHistory)
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
 A record of significant events/milestones key data throughout the history of an Encounter.
 
 A record of significant events/milestones key data throughout the history of an Encounter, often tracked for specific
 purposes such as billing.
 */
open class EncounterHistory: DomainResource {
	
	override open class var resourceType: ResourceType { return .encounterHistory }
	
	/// The Encounter associated with this set of historic values
	public var encounter: Reference?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// Classification of patient encounter
	public var `class`: CodeableConcept
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Specific type of service
	public var serviceType: [CodeableReference]?
	
	/// The patient or group related to this encounter
	public var subject: Reference?
	
	/// The current status of the subject in relation to the Encounter
	public var subjectStatus: CodeableConcept?
	
	/// The actual start and end time associated with this set of values associated with the encounter
	public var actualPeriod: Period?
	
	/// The planned start date/time (or admission date) of the encounter
	public var plannedStartDate: FHIRPrimitive<DateTime>?
	
	/// The planned end date/time (or discharge date) of the encounter
	public var plannedEndDate: FHIRPrimitive<DateTime>?
	
	/// Actual quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// Location of the patient at this point in the encounter
	public var location: [EncounterHistoryLocation]?
	
	/// Designated initializer taking all required properties
	public init(`class`: CodeableConcept, status: FHIRPrimitive<EncounterStatus>) {
		self.`class` = `class`
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actualPeriod: Period? = nil,
		`class`: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		length: Duration? = nil,
		location: [EncounterHistoryLocation]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		plannedEndDate: FHIRPrimitive<DateTime>? = nil,
		plannedStartDate: FHIRPrimitive<DateTime>? = nil,
		serviceType: [CodeableReference]? = nil,
		status: FHIRPrimitive<EncounterStatus>,
		subject: Reference? = nil,
		subjectStatus: CodeableConcept? = nil,
		text: Narrative? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(class: `class`, status: status)
		self.actualPeriod = actualPeriod
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.length = length
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.plannedEndDate = plannedEndDate
		self.plannedStartDate = plannedStartDate
		self.serviceType = serviceType
		self.subject = subject
		self.subjectStatus = subjectStatus
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actualPeriod
		case `class` = "class"
		case encounter
		case identifier
		case length
		case location
		case plannedEndDate; case _plannedEndDate
		case plannedStartDate; case _plannedStartDate
		case serviceType
		case status; case _status
		case subject
		case subjectStatus
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actualPeriod = try Period(from: _container, forKeyIfPresent: .actualPeriod)
		self.`class` = try CodeableConcept(from: _container, forKey: .`class`)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.length = try Duration(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterHistoryLocation](from: _container, forKeyIfPresent: .location)
		self.plannedEndDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		self.plannedStartDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		self.serviceType = try [CodeableReference](from: _container, forKeyIfPresent: .serviceType)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subjectStatus = try CodeableConcept(from: _container, forKeyIfPresent: .subjectStatus)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actualPeriod?.encode(on: &_container, forKey: .actualPeriod)
		try `class`.encode(on: &_container, forKey: .`class`)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try plannedEndDate?.encode(on: &_container, forKey: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		try plannedStartDate?.encode(on: &_container, forKey: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try subjectStatus?.encode(on: &_container, forKey: .subjectStatus)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterHistory else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actualPeriod == _other.actualPeriod
		    && `class` == _other.`class`
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && length == _other.length
		    && location == _other.location
		    && plannedEndDate == _other.plannedEndDate
		    && plannedStartDate == _other.plannedStartDate
		    && serviceType == _other.serviceType
		    && status == _other.status
		    && subject == _other.subject
		    && subjectStatus == _other.subjectStatus
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actualPeriod)
		hasher.combine(`class`)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(length)
		hasher.combine(location)
		hasher.combine(plannedEndDate)
		hasher.combine(plannedStartDate)
		hasher.combine(serviceType)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(subjectStatus)
		hasher.combine(type)
	}
}

/**
 Location of the patient at this point in the encounter.
 
 The location of the patient at this point in the encounter, the multiple cardinality permits de-normalizing the levels
 of the location hierarchy, such as site/ward/room/bed.
 */
open class EncounterHistoryLocation: BackboneElement {
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// The physical type of the location (usually the level in the location hierarchy - bed, room, ward, virtual etc.)
	public var form: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(location: Reference) {
		self.location = location
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(location: location)
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case form
		case location
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.location = try Reference(from: _container, forKey: .location)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try form?.encode(on: &_container, forKey: .form)
		try location.encode(on: &_container, forKey: .location)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EncounterHistoryLocation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return form == _other.form
		    && location == _other.location
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(form)
		hasher.combine(location)
	}
}
