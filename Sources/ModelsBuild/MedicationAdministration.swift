//
//  MedicationAdministration.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration)
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
 Administration of medication to a patient.
 
 Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
 prescription, and the specific encounter between patient and health care practitioner.
 */
open class MedicationAdministration: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationAdministration }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Plan this is fulfilled by this administration
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions, it is possible for an administration to be started but not completed or it may be paused
	/// while some other process is under way.
	public var status: FHIRPrimitive<MedicationAdministrationStatusCodes>
	
	/// Reason administration not performed
	public var statusReason: [CodeableConcept]?
	
	/// Type of medication administration
	public var category: [CodeableConcept]?
	
	/// What was administered
	public var medication: CodeableReference
	
	/// Who received medication
	public var subject: Reference
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Additional information to support administration
	public var supportingInformation: [Reference]?
	
	/// Specific date/time or interval of time during which the administration took place (or did not take place)
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX
	
	/// When the MedicationAdministration was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Full dose was not administered
	public var isSubPotent: FHIRPrimitive<FHIRBool>?
	
	/// Reason full dose was not administered
	public var subPotentReason: [CodeableConcept]?
	
	/// Who or what performed the medication administration and what type of performance they did
	public var performer: [MedicationAdministrationPerformer]?
	
	/// Reason that supports why the medication was administered
	public var reason: [CodeableReference]?
	
	/// Request administration performed against
	public var request: Reference?
	
	/// Device used to administer
	public var device: [CodeableReference]?
	
	/// Information about the administration
	public var note: [Annotation]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(medication: CodeableReference, occurrence: OccurrenceX, status: FHIRPrimitive<MedicationAdministrationStatusCodes>, subject: Reference) {
		self.medication = medication
		self.occurrence = occurrence
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(medication: medication, occurrence: occurrence, status: status, subject: subject)
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
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.reason = reason
		self.recorded = recorded
		self.request = request
		self.statusReason = statusReason
		self.subPotentReason = subPotentReason
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case category
		case device
		case dosage
		case encounter
		case eventHistory
		case identifier
		case isSubPotent; case _isSubPotent
		case medication
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.occurrenceDateTime) || _container.contains(CodingKeys.occurrencePeriod) || _container.contains(CodingKeys.occurrenceTiming) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.occurrenceDateTime, CodingKeys.occurrencePeriod, CodingKeys.occurrenceTiming], debugDescription: "Must have at least one value for \"occurrence\" but have none"))
		}
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.device = try [CodeableReference](from: _container, forKeyIfPresent: .device)
		self.dosage = try MedicationAdministrationDosage(from: _container, forKeyIfPresent: .dosage)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.isSubPotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSubPotent, auxiliaryKey: ._isSubPotent)
		self.medication = try CodeableReference(from: _container, forKey: .medication)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
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
		self.occurrence = _t_occurrence!
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try category?.encode(on: &_container, forKey: .category)
		try device?.encode(on: &_container, forKey: .device)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try isSubPotent?.encode(on: &_container, forKey: .isSubPotent, auxiliaryKey: ._isSubPotent)
		try medication.encode(on: &_container, forKey: .medication)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationAdministration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && category == _other.category
		    && device == _other.device
		    && dosage == _other.dosage
		    && encounter == _other.encounter
		    && eventHistory == _other.eventHistory
		    && identifier == _other.identifier
		    && isSubPotent == _other.isSubPotent
		    && medication == _other.medication
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && reason == _other.reason
		    && recorded == _other.recorded
		    && request == _other.request
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subPotentReason == _other.subPotentReason
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(category)
		hasher.combine(device)
		hasher.combine(dosage)
		hasher.combine(encounter)
		hasher.combine(eventHistory)
		hasher.combine(identifier)
		hasher.combine(isSubPotent)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(reason)
		hasher.combine(recorded)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subPotentReason)
		hasher.combine(subject)
		hasher.combine(supportingInformation)
	}
}

/**
 Details of how medication was taken.
 
 Describes the medication dosage information details e.g. dose, rate, site, route, etc.
 */
open class MedicationAdministrationDosage: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Free text dosage instructions e.g. SIG
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Body site administered to
	public var site: CodeableConcept?
	
	/// Path of substance into body
	public var route: CodeableConcept?
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Amount of medication per dose
	public var dose: Quantity?
	
	/// Dose quantity per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case method
		case rateQuantity
		case rateRatio
		case route
		case site
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dose = try Quantity(from: _container, forKeyIfPresent: .dose)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		var _t_rate: RateX? = nil
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		if let rateQuantity = try Quantity(from: _container, forKeyIfPresent: .rateQuantity) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateQuantity, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .quantity(rateQuantity)
		}
		self.rate = _t_rate
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dose?.encode(on: &_container, forKey: .dose)
		try method?.encode(on: &_container, forKey: .method)
		if let _enum = rate {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .rateRatio)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .rateQuantity)
			}
		}
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationAdministrationDosage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dose == _other.dose
		    && method == _other.method
		    && rate == _other.rate
		    && route == _other.route
		    && site == _other.site
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dose)
		hasher.combine(method)
		hasher.combine(rate)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(text)
	}
}

/**
 Who or what performed the medication administration and what type of performance they did.
 
 The performer of the medication treatment.  For devices this is the device that performed the administration of the
 medication.  An IV Pump would be an example of a device that is performing the administration. Both the IV Pump and the
 practitioner that set the rate or bolus on the pump can be listed as performers.
 */
open class MedicationAdministrationPerformer: BackboneElement {
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Who or what performed the medication administration
	public var actor: CodeableReference
	
	/// Designated initializer taking all required properties
	public init(actor: CodeableReference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: CodeableReference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try CodeableReference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicationAdministrationPerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}
