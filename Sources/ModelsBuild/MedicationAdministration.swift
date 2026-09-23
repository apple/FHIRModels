//
//  MedicationAdministration.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration)
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
 Administration of medication to a patient.
 
 Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
 prescription, and the specific encounter between patient and health care practitioner.
 */
public struct MedicationAdministration: DomainResource {
	
	public static let resourceType: ResourceType = .medicationAdministration
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Plan this is fulfilled by this administration
	public var basedOn: [Reference]?
	
	/// Type of medication administration
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Device used to administer
	public var device: [CodeableReference]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// An indication that the full ordered dose was not administered
	public var isSubPotent: FHIRPrimitive<FHIRBool>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What was administered
	public var medication: CodeableReference
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the administration
	public var note: [Annotation]?
	
	/// Specific date/time or interval of time during which the administration took place (or did not take place)
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Who or what performed the medication administration and what type of performance they did
	public var performer: [MedicationAdministrationPerformer]?
	
	/// Reason that supports why the medication was administered
	public var reason: [CodeableReference]?
	
	/// When the MedicationAdministration was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Request administration performed against
	public var request: Reference?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions, it is possible for an administration to be started but not completed or it may be paused
	/// while some other process is under way.
	public var status: FHIRPrimitive<MedicationAdministrationStatusCodes>
	
	/// Reason status of the administration changed
	public var statusReason: [CodeableConcept]?
	
	/// Reason full dose was not administered
	public var subPotentReason: [CodeableConcept]?
	
	/// Who received medication
	public var subject: Reference
	
	/// Additional information to support administration
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		device: [CodeableReference]? = nil,
		dosage: MedicationAdministrationDosage? = nil,
		encounter: Reference? = nil,
		eventHistory: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		isSubPotent: FHIRPrimitive<FHIRBool>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: CodeableReference,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX,
		partOf: [Reference]? = nil,
		performer: [MedicationAdministrationPerformer]? = nil,
		reason: [CodeableReference]? = nil,
		recorded: FHIRPrimitive<DateTime>? = nil,
		request: Reference? = nil,
		status: FHIRPrimitive<MedicationAdministrationStatusCodes>,
		statusReason: [CodeableConcept]? = nil,
		subPotentReason: [CodeableConcept]? = nil,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.basedOn = basedOn
		self.category = category
		self.contained = contained
		self.device = device
		self.dosage = dosage
		self.encounter = encounter
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.isSubPotent = isSubPotent
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.partOf = partOf
		self.performer = performer
		self.reason = reason
		self.recorded = recorded
		self.request = request
		self.status = status
		self.statusReason = statusReason
		self.subPotentReason = subPotentReason
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case category
		case contained
		case device
		case dosage
		case encounter
		case eventHistory
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case isSubPotent; case _isSubPotent
		case language; case _language
		case medication
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case partOf
		case performer
		case reason
		case recorded; case _recorded
		case request
		case status; case _status
		case statusReason
		case subPotentReason
		case subject
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.dosage = try MedicationAdministrationDosage(from: _container, forKeyIfPresent: .dosage)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.isSubPotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSubPotent, auxiliaryKey: ._isSubPotent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [MedicationAdministrationPerformer](from: _container, forKeyIfPresent: .performer)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<MedicationAdministrationStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subPotentReason = try [CodeableConcept](from: _container, forKeyIfPresent: .subPotentReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
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
		try device?.encode(on: &_container, forKey: .device)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try isSubPotent?.encode(on: &_container, forKey: .isSubPotent, auxiliaryKey: ._isSubPotent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try medication.encode(on: &_container, forKey: .medication)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		
		switch occurrence {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceTiming)
		}
		
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try request?.encode(on: &_container, forKey: .request)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subPotentReason?.encode(on: &_container, forKey: .subPotentReason)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		guard let _t_occurrence else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.occurrenceTiming)
			throw DecodingError.valueNotFound(OccurrenceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"occurrence\" but have none"))
		}
		return _t_occurrence
	}
}

/**
 Details of how medication was taken.
 
 Describes the medication dosage information details e.g. dose, rate, site, route, etc.
 */
public struct MedicationAdministrationDosage: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
	}
	
	/// Amount of medication per dose
	public var dose: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Dose quantity per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Path of substance into body
	public var route: CodeableConcept?
	
	/// Body site administered to
	public var site: CodeableConcept?
	
	/// Free text dosage instructions e.g. SIG
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		dose: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		rate: RateX? = nil,
		route: CodeableConcept? = nil,
		site: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>? = nil
	) {
		self.dose = dose
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dose
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case rateQuantity
		case rateRatio
		case route
		case site
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dose = try Quantity(from: _container, forKeyIfPresent: .dose)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rate = try Self._decodeRate(from: _container)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try dose?.encode(on: &_container, forKey: .dose)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = rate {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .rateQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .rateRatio)
		}
		}
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeRate(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> RateX? {
		var _t_rate: RateX? = nil
		if let rateQuantity = try Quantity(from: _container, forKeyIfPresent: .rateQuantity) {
			_t_rate = .quantity(rateQuantity)
		}
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		return _t_rate
	}
}

/**
 Who or what performed the medication administration and what type of performance they did.
 
 The performer of the medication treatment.  For devices this is the device that performed the administration of the
 medication.  An IV Pump would be an example of a device that is performing the administration. Both the IV Pump and the
 practitioner that set the rate or bolus on the pump can be listed as performers.
 */
public struct MedicationAdministrationPerformer: BackboneElement {
	
	/// Who or what performed the medication administration
	public var actor: CodeableReference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: CodeableReference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try CodeableReference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
