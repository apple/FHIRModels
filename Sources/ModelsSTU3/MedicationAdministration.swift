//
//  MedicationAdministration.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration)
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
	
	/// Type of medication usage
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter or Episode of Care administered as part of
	public var context: Reference?
	
	/// Instantiates protocol or definition
	public var definition: [Reference]?
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration
	/// One of `effective[x]`
	public var effective: EffectiveX
	
	/// A list of events of interest in the lifecycle
	public var eventHistory: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What was administered
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// True if medication not administered
	public var notGiven: FHIRPrimitive<FHIRBool>?
	
	/// Information about the administration
	public var note: [Annotation]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Who administered substance
	public var performer: [MedicationAdministrationPerformer]?
	
	/// Request administration performed against
	public var prescription: Reference?
	
	/// Reason administration performed
	public var reasonCode: [CodeableConcept]?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Condition or Observation that supports why the medication was administered
	public var reasonReference: [Reference]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions it is possible for an administration to be started but not completed or it may be paused while
	/// some other process is under way.
	public var status: FHIRPrimitive<MedicationAdministrationStatus>
	
	/// Who received medication
	public var subject: Reference
	
	/// Additional information to support administration
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		category: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		definition: [Reference]? = nil,
		device: [Reference]? = nil,
		dosage: MedicationAdministrationDosage? = nil,
		effective: EffectiveX,
		eventHistory: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		notGiven: FHIRPrimitive<FHIRBool>? = nil,
		note: [Annotation]? = nil,
		partOf: [Reference]? = nil,
		performer: [MedicationAdministrationPerformer]? = nil,
		prescription: Reference? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonNotGiven: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		status: FHIRPrimitive<MedicationAdministrationStatus>,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.category = category
		self.contained = contained
		self.context = context
		self.definition = definition
		self.device = device
		self.dosage = dosage
		self.effective = effective
		self.eventHistory = eventHistory
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.notGiven = notGiven
		self.note = note
		self.partOf = partOf
		self.performer = performer
		self.prescription = prescription
		self.reasonCode = reasonCode
		self.reasonNotGiven = reasonNotGiven
		self.reasonReference = reasonReference
		self.status = status
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category
		case contained
		case context
		case definition
		case device
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case eventHistory
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case notGiven; case _notGiven
		case note
		case partOf
		case performer
		case prescription
		case reasonCode
		case reasonNotGiven
		case reasonReference
		case status; case _status
		case subject
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.definition = try [Reference](from: _container, forKeyIfPresent: .definition)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.dosage = try MedicationAdministrationDosage(from: _container, forKeyIfPresent: .dosage)
		self.effective = try Self._decodeEffective(from: _container)
		self.eventHistory = try [Reference](from: _container, forKeyIfPresent: .eventHistory)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notGiven = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notGiven, auxiliaryKey: ._notGiven)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [MedicationAdministrationPerformer](from: _container, forKeyIfPresent: .performer)
		self.prescription = try Reference(from: _container, forKeyIfPresent: .prescription)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonNotGiven = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotGiven)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.status = try FHIRPrimitive<MedicationAdministrationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try definition?.encode(on: &_container, forKey: .definition)
		try device?.encode(on: &_container, forKey: .device)
		try dosage?.encode(on: &_container, forKey: .dosage)
		
		switch effective {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .effectivePeriod)
		}
		
		try eventHistory?.encode(on: &_container, forKey: .eventHistory)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		
		switch medication {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .medicationCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .medicationReference)
		}
		
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notGiven?.encode(on: &_container, forKey: .notGiven, auxiliaryKey: ._notGiven)
		try note?.encode(on: &_container, forKey: .note)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try prescription?.encode(on: &_container, forKey: .prescription)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonNotGiven?.encode(on: &_container, forKey: .reasonNotGiven)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX {
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
		guard let _t_effective else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.effectivePeriod)
			throw DecodingError.valueNotFound(EffectiveX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"effective\" but have none"))
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
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
 Who administered substance.
 
 The individual who was responsible for giving the medication to the patient.
 */
public struct MedicationAdministrationPerformer: BackboneElement {
	
	/// Individual who was performing
	public var actor: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Organization organization was acting for
	public var onBehalfOf: Reference?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOf
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
	}
}
