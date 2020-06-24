//
//  MedicationAdministration.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration)
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
 Administration of medication to a patient.
 
 Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
 prescription, and the specific encounter between patient and health care practitioner.
 */
open class MedicationAdministration: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicationAdministration }
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Instantiates protocol or definition
	public var instantiates: [FHIRPrimitive<FHIRURI>]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions, it is possible for an administration to be started but not completed or it may be paused
	/// while some other process is under way.
	public var status: FHIRPrimitive<MedicationAdministrationStatusCodes>
	
	/// Reason administration not performed
	public var statusReason: [CodeableConcept]?
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// What was administered
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Who received medication
	public var subject: Reference
	
	/// Encounter or Episode of Care administered as part of
	public var context: Reference?
	
	/// Additional information to support administration
	public var supportingInformation: [Reference]?
	
	/// Start and end time of administration
	/// One of `effective[x]`
	public var effective: EffectiveX
	
	/// Who performed the medication administration and what they did
	public var performer: [MedicationAdministrationPerformer]?
	
	/// Reason administration performed
	public var reasonCode: [CodeableConcept]?
	
	/// Condition or observation that supports why the medication was administered
	public var reasonReference: [Reference]?
	
	/// Request administration performed against
	public var request: Reference?
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Information about the administration
	public var note: [Annotation]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(effective: EffectiveX, medication: MedicationX, status: FHIRPrimitive<MedicationAdministrationStatusCodes>, subject: Reference) {
		self.effective = effective
		self.medication = medication
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							context: Reference? = nil,
							device: [Reference]? = nil,
							dosage: MedicationAdministrationDosage? = nil,
							effective: EffectiveX,
							eventHistory: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							instantiates: [FHIRPrimitive<FHIRURI>]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							medication: MedicationX,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							partOf: [Reference]? = nil,
							performer: [MedicationAdministrationPerformer]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							request: Reference? = nil,
							status: FHIRPrimitive<MedicationAdministrationStatusCodes>,
							statusReason: [CodeableConcept]? = nil,
							subject: Reference,
							supportingInformation: [Reference]? = nil,
							text: Narrative? = nil)
	{
		self.init(effective: effective, medication: medication, status: status, subject: subject)
		self.category = category
		self.contained = contained
		self.context = context
		self.device = device
		self.dosage = dosage
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiates = instantiates
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.request = request
		self.statusReason = statusReason
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case context
		case device
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case eventHistory
		case identifier
		case instantiates; case _instantiates
		case medicationCodeableConcept
		case medicationReference
		case note
		case partOf
		case performer
		case reasonCode
		case reasonReference
		case request
		case status; case _status
		case statusReason
		case subject
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.medicationCodeableConcept) || _container.contains(CodingKeys.medicationReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.medicationCodeableConcept, CodingKeys.medicationReference], debugDescription: "Must have at least one value for \"medication\" but have none"))
		}
		guard _container.contains(CodingKeys.effectiveDateTime) || _container.contains(CodingKeys.effectivePeriod) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.effectiveDateTime, CodingKeys.effectivePeriod], debugDescription: "Must have at least one value for \"effective\" but have none"))
		}
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.dosage = try MedicationAdministrationDosage(from: _container, forKeyIfPresent: .dosage)
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
		self.effective = _t_effective!
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiates = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		var _t_medication: MedicationX? = nil
		if let medicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .medicationCodeableConcept) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .codeableConcept(medicationCodeableConcept)
		}
		if let medicationReference = try Reference(from: _container, forKeyIfPresent: .medicationReference) {
			if _t_medication != nil {
				throw DecodingError.dataCorruptedError(forKey: .medicationReference, in: _container, debugDescription: "More than one value provided for \"medication\"")
			}
			_t_medication = .reference(medicationReference)
		}
		self.medication = _t_medication!
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [MedicationAdministrationPerformer](from: _container, forKeyIfPresent: .performer)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<MedicationAdministrationStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try context?.encode(on: &_container, forKey: .context)
		try device?.encode(on: &_container, forKey: .device)
		try dosage?.encode(on: &_container, forKey: .dosage)
		
			switch effective {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			}
		
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		
			switch medication {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .medicationReference)
			}
		
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try request?.encode(on: &_container, forKey: .request)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
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
		return category == _other.category
		    && context == _other.context
		    && device == _other.device
		    && dosage == _other.dosage
		    && effective == _other.effective
		    && eventHistory == _other.eventHistory
		    && identifier == _other.identifier
		    && instantiates == _other.instantiates
		    && medication == _other.medication
		    && note == _other.note
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && request == _other.request
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(context)
		hasher.combine(device)
		hasher.combine(dosage)
		hasher.combine(effective)
		hasher.combine(eventHistory)
		hasher.combine(identifier)
		hasher.combine(instantiates)
		hasher.combine(medication)
		hasher.combine(note)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(statusReason)
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
							text: FHIRPrimitive<FHIRString>? = nil)
	{
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
 Who performed the medication administration and what they did.
 
 Indicates who or what performed the medication administration and how they were involved.
 */
open class MedicationAdministrationPerformer: BackboneElement {
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Who performed the medication administration
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							function: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
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
		self.actor = try Reference(from: _container, forKey: .actor)
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
