//
//  MedicationDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationDispense)
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
 Dispensing a medication to a named patient.
 
 Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
 description of the medication product (supply) provided and the instructions for administering the medication.  The
 medication dispense is the result of a pharmacy system responding to a medication order.
 */
public struct MedicationDispense: DomainResource {
	
	public static let resourceType: ResourceType = .medicationDispense
	
	/// All possible types for "medication[x]"
	public enum MedicationX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Medication order that authorizes the dispense
	public var authorizingPrescription: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Days Supply
	public var daysSupply: Quantity?
	
	/// Where the medication was sent
	public var destination: Reference?
	
	/// Practitioner responsible for dispensing medication
	public var dispenser: Reference?
	
	/// Medicine administration instructions to the patient/caregiver
	public var dosageInstruction: [MedicationDispenseDosageInstruction]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What medication was supplied
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Information about the dispense
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Who the dispense is for
	public var patient: Reference?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the medication
	public var receiver: [Reference]?
	
	/// A code specifying the state of the set of dispense events.
	/// Restricted to: ['in-progress', 'on-hold', 'completed', 'entered-in-error', 'stopped']
	public var status: FHIRPrimitive<MedicationDispenseStatus>?
	
	/// Deals with substitution of one medicine for another
	public var substitution: MedicationDispenseSubstitution?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Trial fill, partial fill, emergency fill, etc.
	public var type: CodeableConcept?
	
	/// When product was given out
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Dispense processing time
	public var whenPrepared: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		authorizingPrescription: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		daysSupply: Quantity? = nil,
		destination: Reference? = nil,
		dispenser: Reference? = nil,
		dosageInstruction: [MedicationDispenseDosageInstruction]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: FHIRPrimitive<FHIRString>? = nil,
		patient: Reference? = nil,
		quantity: Quantity? = nil,
		receiver: [Reference]? = nil,
		status: FHIRPrimitive<MedicationDispenseStatus>? = nil,
		substitution: MedicationDispenseSubstitution? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		whenHandedOver: FHIRPrimitive<DateTime>? = nil,
		whenPrepared: FHIRPrimitive<DateTime>? = nil
	) {
		self.authorizingPrescription = authorizingPrescription
		self.contained = contained
		self.daysSupply = daysSupply
		self.destination = destination
		self.dispenser = dispenser
		self.dosageInstruction = dosageInstruction
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.quantity = quantity
		self.receiver = receiver
		self.status = status
		self.substitution = substitution
		self.text = text
		self.type = type
		self.whenHandedOver = whenHandedOver
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case authorizingPrescription
		case contained
		case daysSupply
		case destination
		case dispenser
		case dosageInstruction
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case note; case _note
		case patient
		case quantity
		case receiver
		case status; case _status
		case substitution
		case text
		case type
		case whenHandedOver; case _whenHandedOver
		case whenPrepared; case _whenPrepared
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authorizingPrescription = try [Reference](from: _container, forKeyIfPresent: .authorizingPrescription)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.daysSupply = try Quantity(from: _container, forKeyIfPresent: .daysSupply)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.dispenser = try Reference(from: _container, forKeyIfPresent: .dispenser)
		self.dosageInstruction = try [MedicationDispenseDosageInstruction](from: _container, forKeyIfPresent: .dosageInstruction)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .note, auxiliaryKey: ._note)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<MedicationDispenseStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.substitution = try MedicationDispenseSubstitution(from: _container, forKeyIfPresent: .substitution)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		self.whenPrepared = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenPrepared, auxiliaryKey: ._whenPrepared)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try authorizingPrescription?.encode(on: &_container, forKey: .authorizingPrescription)
		try contained?.encode(on: &_container, forKey: .contained)
		try daysSupply?.encode(on: &_container, forKey: .daysSupply)
		try destination?.encode(on: &_container, forKey: .destination)
		try dispenser?.encode(on: &_container, forKey: .dispenser)
		try dosageInstruction?.encode(on: &_container, forKey: .dosageInstruction)
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
		try note?.encode(on: &_container, forKey: .note, auxiliaryKey: ._note)
		try patient?.encode(on: &_container, forKey: .patient)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try substitution?.encode(on: &_container, forKey: .substitution)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try whenPrepared?.encode(on: &_container, forKey: .whenPrepared, auxiliaryKey: ._whenPrepared)
	}
	
	// MARK: ValueX Decoders
	
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
 Medicine administration instructions to the patient/caregiver.
 
 Indicates how the medication is to be used by the patient.
 */
public struct MedicationDispenseDosageInstruction: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "dose[x]"
	public enum DoseX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case range(Range)
		indirect case ratio(Ratio)
	}
	
	/// All possible types for "site[x]"
	public enum SiteX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// E.g. "Take with food"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Amount of medication per dose
	/// One of `dose[x]`
	public var dose: DoseX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Amount of medication per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// Body site to administer to
	/// One of `site[x]`
	public var site: SiteX?
	
	/// Dosage Instructions
	public var text: FHIRPrimitive<FHIRString>?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Designated initializer
	public init(
		additionalInstructions: CodeableConcept? = nil,
		asNeeded: AsNeededX? = nil,
		dose: DoseX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerPeriod: Ratio? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		rate: RateX? = nil,
		route: CodeableConcept? = nil,
		site: SiteX? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		timing: Timing? = nil
	) {
		self.additionalInstructions = additionalInstructions
		self.asNeeded = asNeeded
		self.dose = dose
		self.`extension` = `extension`
		self.id = id
		self.maxDosePerPeriod = maxDosePerPeriod
		self.method = method
		self.modifierExtension = modifierExtension
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalInstructions
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case doseQuantity
		case doseRange
		case `extension` = "extension"
		case id; case _id
		case maxDosePerPeriod
		case method
		case modifierExtension
		case rateRange
		case rateRatio
		case route
		case siteCodeableConcept
		case siteReference
		case text; case _text
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalInstructions = try CodeableConcept(from: _container, forKeyIfPresent: .additionalInstructions)
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.dose = try Self._decodeDose(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rate = try Self._decodeRate(from: _container)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try Self._decodeSite(from: _container)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.timing = try Timing(from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalInstructions?.encode(on: &_container, forKey: .additionalInstructions)
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		if let _enum = dose {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .doseQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .doseRange)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = rate {
		switch _enum {
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .rateRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .rateRatio)
		}
		}
		try route?.encode(on: &_container, forKey: .route)
		if let _enum = site {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .siteCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .siteReference)
		}
		}
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try timing?.encode(on: &_container, forKey: .timing)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
	}
	
	private static func _decodeDose(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DoseX? {
		var _t_dose: DoseX? = nil
		if let doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity) {
			_t_dose = .quantity(doseQuantity)
		}
		if let doseRange = try Range(from: _container, forKeyIfPresent: .doseRange) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseRange, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .range(doseRange)
		}
		return _t_dose
	}
	
	private static func _decodeRate(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> RateX? {
		var _t_rate: RateX? = nil
		if let rateRange = try Range(from: _container, forKeyIfPresent: .rateRange) {
			_t_rate = .range(rateRange)
		}
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		return _t_rate
	}
	
	private static func _decodeSite(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SiteX? {
		var _t_site: SiteX? = nil
		if let siteCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .siteCodeableConcept) {
			_t_site = .codeableConcept(siteCodeableConcept)
		}
		if let siteReference = try Reference(from: _container, forKeyIfPresent: .siteReference) {
			if _t_site != nil {
				throw DecodingError.dataCorruptedError(forKey: .siteReference, in: _container, debugDescription: "More than one value provided for \"site\"")
			}
			_t_site = .reference(siteReference)
		}
		return _t_site
	}
}

/**
 Deals with substitution of one medicine for another.
 
 Indicates whether or not substitution was made as part of the dispense.  In some cases substitution will be expected
 but does not happen, in other cases substitution is not expected but does happen.  This block explains what
 substitution did or did not happen and why.
 */
public struct MedicationDispenseSubstitution: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Why was substitution made
	public var reason: [CodeableConcept]?
	
	/// Who is responsible for the substitution
	public var responsibleParty: [Reference]?
	
	/// Type of substitution
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: [CodeableConcept]? = nil,
		responsibleParty: [Reference]? = nil,
		type: CodeableConcept
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.responsibleParty = responsibleParty
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case responsibleParty
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.responsibleParty = try [Reference](from: _container, forKeyIfPresent: .responsibleParty)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try responsibleParty?.encode(on: &_container, forKey: .responsibleParty)
		try type.encode(on: &_container, forKey: .type)
	}
}
