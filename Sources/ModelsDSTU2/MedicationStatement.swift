//
//  MedicationStatement.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/MedicationStatement)
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
 Record of medication being taken by a patient.
 
 A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may
 be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.
 The source of this information can be the patient, significant other (such as a family member or spouse), or a
 clinician.  A common scenario where this information is captured is during the history taking process during a patient
 visit or stay.   The medication information may come from e.g. the patient's memory, from a prescription bottle,  or
 from a list of medications the patient, clinician or other party maintains
 
 The primary difference between a medication statement and a medication administration is that the medication
 administration has complete administration information and is based on actual administration information from the
 person who administered the medication.  A medication statement is often, if not always, less specific.  There is no
 required date/time when the medication was administered, in fact we only know that a source has reported the patient is
 taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or
 missing or less precise.  As stated earlier, the medication statement information may come from the patient's memory,
 from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication
 administration is more formal and is not missing detailed information.
 */
public struct MedicationStatement: DomainResource {
	
	public static let resourceType: ResourceType = .medicationStatement
	
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
	
	/// All possible types for "reasonForUse[x]"
	public enum ReasonForUseX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the statement was asserted?
	public var dateAsserted: FHIRPrimitive<DateTime>?
	
	/// Details of how medication was taken
	public var dosage: [MedicationStatementDosage]?
	
	/// Over what period was medication consumed?
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// None
	public var informationSource: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// What medication was taken
	/// One of `medication[x]`
	public var medication: MedicationX
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Further information about the statement
	public var note: FHIRPrimitive<FHIRString>?
	
	/// Who is/was taking  the medication
	public var patient: Reference
	
	/// 
	/// One of `reasonForUse[x]`
	public var reasonForUse: ReasonForUseX?
	
	/// True if asserting medication was not given
	public var reasonNotTaken: [CodeableConcept]?
	
	/// A code representing the patient or other source's judgment about the state of the medication used that this
	/// statement is about.  Generally this will be active or completed.
	/// Restricted to: ['active', 'completed', 'entered-in-error', 'intended']
	public var status: FHIRPrimitive<MedicationStatementStatus>
	
	/// Additional supporting information
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// True if medication is/was not being taken
	public var wasNotTaken: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		dateAsserted: FHIRPrimitive<DateTime>? = nil,
		dosage: [MedicationStatementDosage]? = nil,
		effective: EffectiveX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		medication: MedicationX,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: FHIRPrimitive<FHIRString>? = nil,
		patient: Reference,
		reasonForUse: ReasonForUseX? = nil,
		reasonNotTaken: [CodeableConcept]? = nil,
		status: FHIRPrimitive<MedicationStatementStatus>,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		wasNotTaken: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.contained = contained
		self.dateAsserted = dateAsserted
		self.dosage = dosage
		self.effective = effective
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.language = language
		self.medication = medication
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.patient = patient
		self.reasonForUse = reasonForUse
		self.reasonNotTaken = reasonNotTaken
		self.status = status
		self.supportingInformation = supportingInformation
		self.text = text
		self.wasNotTaken = wasNotTaken
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case dateAsserted; case _dateAsserted
		case dosage
		case effectiveDateTime; case _effectiveDateTime
		case effectivePeriod
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case informationSource
		case language; case _language
		case medicationCodeableConcept
		case medicationReference
		case meta
		case modifierExtension
		case note; case _note
		case patient
		case reasonForUseCodeableConcept
		case reasonForUseReference
		case reasonNotTaken
		case status; case _status
		case supportingInformation
		case text
		case wasNotTaken; case _wasNotTaken
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateAsserted = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateAsserted, auxiliaryKey: ._dateAsserted)
		self.dosage = try [MedicationStatementDosage](from: _container, forKeyIfPresent: .dosage)
		self.effective = try Self._decodeEffective(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.informationSource = try Reference(from: _container, forKeyIfPresent: .informationSource)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.medication = try Self._decodeMedication(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .note, auxiliaryKey: ._note)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.reasonForUse = try Self._decodeReasonForUse(from: _container)
		self.reasonNotTaken = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonNotTaken)
		self.status = try FHIRPrimitive<MedicationStatementStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.wasNotTaken = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .wasNotTaken, auxiliaryKey: ._wasNotTaken)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try dateAsserted?.encode(on: &_container, forKey: .dateAsserted, auxiliaryKey: ._dateAsserted)
		try dosage?.encode(on: &_container, forKey: .dosage)
		if let _enum = effective {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .effectiveDateTime, auxiliaryKey: ._effectiveDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .effectivePeriod)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
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
		try patient.encode(on: &_container, forKey: .patient)
		if let _enum = reasonForUse {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .reasonForUseCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reasonForUseReference)
		}
		}
		try reasonNotTaken?.encode(on: &_container, forKey: .reasonNotTaken)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
		try wasNotTaken?.encode(on: &_container, forKey: .wasNotTaken, auxiliaryKey: ._wasNotTaken)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX? {
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
	
	private static func _decodeReasonForUse(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonForUseX? {
		var _t_reasonForUse: ReasonForUseX? = nil
		if let reasonForUseCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonForUseCodeableConcept) {
			_t_reasonForUse = .codeableConcept(reasonForUseCodeableConcept)
		}
		if let reasonForUseReference = try Reference(from: _container, forKeyIfPresent: .reasonForUseReference) {
			if _t_reasonForUse != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonForUseReference, in: _container, debugDescription: "More than one value provided for \"reasonForUse\"")
			}
			_t_reasonForUse = .reference(reasonForUseReference)
		}
		return _t_reasonForUse
	}
}

/**
 Details of how medication was taken.
 
 Indicates how the medication is/was used by the patient.
 */
public struct MedicationStatementDosage: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// All possible types for "quantity[x]"
	public enum QuantityX: Equatable, Hashable, Sendable {
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
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum dose that was consumed per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique used to administer medication
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Amount administered in one dose
	/// One of `quantity[x]`
	public var quantity: QuantityX?
	
	/// Dose quantity per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// How the medication entered the body
	public var route: CodeableConcept?
	
	/// Where (on body) medication is/was administered
	/// One of `site[x]`
	public var site: SiteX?
	
	/// Reported dosage information
	public var text: FHIRPrimitive<FHIRString>?
	
	/// When/how often was medication taken
	public var timing: Timing?
	
	/// Designated initializer
	public init(
		asNeeded: AsNeededX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerPeriod: Ratio? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: QuantityX? = nil,
		rate: RateX? = nil,
		route: CodeableConcept? = nil,
		site: SiteX? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		timing: Timing? = nil
	) {
		self.asNeeded = asNeeded
		self.`extension` = `extension`
		self.id = id
		self.maxDosePerPeriod = maxDosePerPeriod
		self.method = method
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.rate = rate
		self.route = route
		self.site = site
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case `extension` = "extension"
		case id; case _id
		case maxDosePerPeriod
		case method
		case modifierExtension
		case quantityQuantity
		case quantityRange
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
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Self._decodeQuantity(from: _container)
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
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = quantity {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .quantityQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .quantityRange)
		}
		}
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
	
	private static func _decodeQuantity(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> QuantityX? {
		var _t_quantity: QuantityX? = nil
		if let quantityQuantity = try Quantity(from: _container, forKeyIfPresent: .quantityQuantity) {
			_t_quantity = .quantity(quantityQuantity)
		}
		if let quantityRange = try Range(from: _container, forKeyIfPresent: .quantityRange) {
			if _t_quantity != nil {
				throw DecodingError.dataCorruptedError(forKey: .quantityRange, in: _container, debugDescription: "More than one value provided for \"quantity\"")
			}
			_t_quantity = .range(quantityRange)
		}
		return _t_quantity
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
