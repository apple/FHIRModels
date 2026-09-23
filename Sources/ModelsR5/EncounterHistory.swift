//
//  EncounterHistory.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/EncounterHistory)
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
 A record of significant events/milestones key data throughout the history of an Encounter.
 
 A record of significant events/milestones key data throughout the history of an Encounter, often tracked for specific
 purposes such as billing.
 */
public struct EncounterHistory: DomainResource {
	
	public static let resourceType: ResourceType = .encounterHistory
	
	/// The actual start and end time associated with this set of values associated with the encounter
	public var actualPeriod: Period?
	
	/// Classification of patient encounter
	public var `class`: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The Encounter associated with this set of historic values
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier(s) by which this encounter is known
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Actual quantity of time the encounter lasted (less time absent)
	public var length: Duration?
	
	/// Location of the patient at this point in the encounter
	public var location: [EncounterHistoryLocation]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The planned end date/time (or discharge date) of the encounter
	public var plannedEndDate: FHIRPrimitive<DateTime>?
	
	/// The planned start date/time (or admission date) of the encounter
	public var plannedStartDate: FHIRPrimitive<DateTime>?
	
	/// Specific type of service
	public var serviceType: [CodeableReference]?
	
	/// None
	public var status: FHIRPrimitive<EncounterStatus>
	
	/// The patient or group related to this encounter
	public var subject: Reference?
	
	/// The current status of the subject in relation to the Encounter
	public var subjectStatus: CodeableConcept?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific type of encounter
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		self.actualPeriod = actualPeriod
		self.`class` = `class`
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
		self.status = status
		self.subject = subject
		self.subjectStatus = subjectStatus
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case actualPeriod
		case `class` = "class"
		case contained
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case length
		case location
		case meta
		case modifierExtension
		case plannedEndDate; case _plannedEndDate
		case plannedStartDate; case _plannedStartDate
		case serviceType
		case status; case _status
		case subject
		case subjectStatus
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actualPeriod = try Period(from: _container, forKeyIfPresent: .actualPeriod)
		self.`class` = try CodeableConcept(from: _container, forKey: .`class`)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.length = try Duration(from: _container, forKeyIfPresent: .length)
		self.location = try [EncounterHistoryLocation](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.plannedEndDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		self.plannedStartDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		self.serviceType = try [CodeableReference](from: _container, forKeyIfPresent: .serviceType)
		self.status = try FHIRPrimitive<EncounterStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.subjectStatus = try CodeableConcept(from: _container, forKeyIfPresent: .subjectStatus)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try actualPeriod?.encode(on: &_container, forKey: .actualPeriod)
		try `class`.encode(on: &_container, forKey: .`class`)
		try contained?.encode(on: &_container, forKey: .contained)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try length?.encode(on: &_container, forKey: .length)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try plannedEndDate?.encode(on: &_container, forKey: .plannedEndDate, auxiliaryKey: ._plannedEndDate)
		try plannedStartDate?.encode(on: &_container, forKey: .plannedStartDate, auxiliaryKey: ._plannedStartDate)
		try serviceType?.encode(on: &_container, forKey: .serviceType)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try subjectStatus?.encode(on: &_container, forKey: .subjectStatus)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Location of the patient at this point in the encounter.
 
 The location of the patient at this point in the encounter, the multiple cardinality permits de-normalizing the levels
 of the location hierarchy, such as site/ward/room/bed.
 */
public struct EncounterHistoryLocation: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The physical type of the location (usually the level in the location hierarchy - bed, room, ward, virtual etc.)
	public var form: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Location the encounter takes place
	public var location: Reference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		form: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		location: Reference,
		modifierExtension: [Extension]? = nil
	) {
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.location = location
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case form
		case id; case _id
		case location
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.location = try Reference(from: _container, forKey: .location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try form?.encode(on: &_container, forKey: .form)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try location.encode(on: &_container, forKey: .location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
