//
//  NutritionIntake.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/NutritionIntake)
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
 Record of intake by a patient.
 
 A record of intake by a patient.  A NutritionIntake may indicate that the patient may be consuming the food (i.e.,
 solid and/or liquid), breastmilk, infant formula, supplements, enteral formula now or has consumed it in the past.  The
 source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.
 A common scenario where this information is captured is during the history taking process during a patient visit or
 stay or through an app that tracks food (i.e., solid and/or liquid), breastmilk, infant formula, supplements, enteral
 formula consumed.   The consumption information may come from sources such as the patient's memory, from a nutrition
 label, or from a clinician documenting observed intake.
 */
open class NutritionIntake: DomainResource {
	
	override open class var resourceType: ResourceType { return .nutritionIntake }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case reference(Reference)
	}
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Fulfils plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Code representing an overall type of nutrition intake
	public var code: CodeableConcept?
	
	/// Who is/was consuming the food (i.e. solid and/or liquid)
	public var subject: Reference
	
	/// Encounter associated with NutritionIntake
	public var encounter: Reference?
	
	/// The date/time or interval when the food (i.e. solid and/or liquid) is/was consumed
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the intake was recorded
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Indicates if this is a reported rather than a primary record.  Can also indicate the source that provided the
	/// information about the consumption
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// The nutrition product intended for consumption and/or administration
	public var nutritionItem: [NutritionIntakeNutritionItem]?
	
	/// Who performed the intake and how they were involved
	public var performer: [NutritionIntakePerformer]?
	
	/// Where the intake occurred
	public var location: Reference?
	
	/// Additional supporting information
	public var derivedFrom: [Reference]?
	
	/// Reason for why the food (i.e. solid and/or liquid) is /was consumed
	public var reason: [CodeableReference]?
	
	/// Further information about the consumption
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		basedOn: [Reference]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		derivedFrom: [Reference]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		nutritionItem: [NutritionIntakeNutritionItem]? = nil,
		occurrence: OccurrenceX? = nil,
		partOf: [Reference]? = nil,
		performer: [NutritionIntakePerformer]? = nil,
		reason: [CodeableReference]? = nil,
		recorded: FHIRPrimitive<DateTime>? = nil,
		reported: ReportedX? = nil,
		status: FHIRPrimitive<FHIRString>,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference,
		text: Narrative? = nil
	) {
		self.init(status: status, subject: subject)
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.nutritionItem = nutritionItem
		self.occurrence = occurrence
		self.partOf = partOf
		self.performer = performer
		self.reason = reason
		self.recorded = recorded
		self.reported = reported
		self.statusReason = statusReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case code
		case derivedFrom
		case encounter
		case identifier
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case location
		case note
		case nutritionItem
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case partOf
		case performer
		case reason
		case recorded; case _recorded
		case reportedBoolean; case _reportedBoolean
		case reportedReference
		case status; case _status
		case statusReason
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.nutritionItem = try [NutritionIntakeNutritionItem](from: _container, forKeyIfPresent: .nutritionItem)
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
		self.occurrence = _t_occurrence
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [NutritionIntakePerformer](from: _container, forKeyIfPresent: .performer)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		var _t_reported: ReportedX? = nil
		if let reportedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reportedBoolean, auxiliaryKey: ._reportedBoolean) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedBoolean, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .boolean(reportedBoolean)
		}
		if let reportedReference = try Reference(from: _container, forKeyIfPresent: .reportedReference) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedReference, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .reference(reportedReference)
		}
		self.reported = _t_reported
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try code?.encode(on: &_container, forKey: .code)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try location?.encode(on: &_container, forKey: .location)
		try note?.encode(on: &_container, forKey: .note)
		try nutritionItem?.encode(on: &_container, forKey: .nutritionItem)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			}
		}
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		if let _enum = reported {
			switch _enum {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .reportedBoolean, auxiliaryKey: ._reportedBoolean)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reportedReference)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntake else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && code == _other.code
		    && derivedFrom == _other.derivedFrom
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && location == _other.location
		    && note == _other.note
		    && nutritionItem == _other.nutritionItem
		    && occurrence == _other.occurrence
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && reason == _other.reason
		    && recorded == _other.recorded
		    && reported == _other.reported
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(code)
		hasher.combine(derivedFrom)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(location)
		hasher.combine(note)
		hasher.combine(nutritionItem)
		hasher.combine(occurrence)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(reason)
		hasher.combine(recorded)
		hasher.combine(reported)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
	}
}

/**
 The nutrition product intended for consumption and/or administration.
 */
open class NutritionIntakeNutritionItem: BackboneElement {
	
	/// The type of food (i.e. solid or liquid) product
	public var type: CodeableConcept?
	
	/// A product used for nutritional purposes (e.g. food or supplement)
	public var nutritionProduct: CodeableReference?
	
	/// What nutrition item was consumed
	public var consumedItem: [NutritionIntakeNutritionItemConsumedItem]?
	
	/// Flag to indicate if the food (i.e. solid and/or liquid) was refused or otherwise not consumed
	public var notConsumed: FHIRPrimitive<FHIRBool>?
	
	/// Reason the nutrition item was not consumed
	public var notConsumedReason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		consumedItem: [NutritionIntakeNutritionItemConsumedItem]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		notConsumed: FHIRPrimitive<FHIRBool>? = nil,
		notConsumedReason: CodeableConcept? = nil,
		nutritionProduct: CodeableReference? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.consumedItem = consumedItem
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.notConsumed = notConsumed
		self.notConsumedReason = notConsumedReason
		self.nutritionProduct = nutritionProduct
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case consumedItem
		case notConsumed; case _notConsumed
		case notConsumedReason
		case nutritionProduct
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.consumedItem = try [NutritionIntakeNutritionItemConsumedItem](from: _container, forKeyIfPresent: .consumedItem)
		self.notConsumed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notConsumed, auxiliaryKey: ._notConsumed)
		self.notConsumedReason = try CodeableConcept(from: _container, forKeyIfPresent: .notConsumedReason)
		self.nutritionProduct = try CodeableReference(from: _container, forKeyIfPresent: .nutritionProduct)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try consumedItem?.encode(on: &_container, forKey: .consumedItem)
		try notConsumed?.encode(on: &_container, forKey: .notConsumed, auxiliaryKey: ._notConsumed)
		try notConsumedReason?.encode(on: &_container, forKey: .notConsumedReason)
		try nutritionProduct?.encode(on: &_container, forKey: .nutritionProduct)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntakeNutritionItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return consumedItem == _other.consumedItem
		    && notConsumed == _other.notConsumed
		    && notConsumedReason == _other.notConsumedReason
		    && nutritionProduct == _other.nutritionProduct
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(consumedItem)
		hasher.combine(notConsumed)
		hasher.combine(notConsumedReason)
		hasher.combine(nutritionProduct)
		hasher.combine(type)
	}
}

/**
 What nutrition item was consumed.
 */
open class NutritionIntakeNutritionItemConsumedItem: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Scheduled frequency of consumption
	public var schedule: Timing?
	
	/// Quantity of the specified food (i.e. solid and/or liquid)
	public var amount: Quantity?
	
	/// Rate of enteral feeding administration
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Nutrients and/or energy contained in the intake
	public var totalIntake: [NutritionIntakeNutritionItemConsumedItemTotalIntake]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rate: RateX? = nil,
		schedule: Timing? = nil,
		totalIntake: [NutritionIntakeNutritionItemConsumedItemTotalIntake]? = nil
	) {
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.rate = rate
		self.schedule = schedule
		self.totalIntake = totalIntake
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case rateQuantity
		case rateRatio
		case schedule
		case totalIntake
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		var _t_rate: RateX? = nil
		if let rateQuantity = try Quantity(from: _container, forKeyIfPresent: .rateQuantity) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateQuantity, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .quantity(rateQuantity)
		}
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		self.rate = _t_rate
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
		self.totalIntake = try [NutritionIntakeNutritionItemConsumedItemTotalIntake](from: _container, forKeyIfPresent: .totalIntake)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		if let _enum = rate {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .rateQuantity)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .rateRatio)
			}
		}
		try schedule?.encode(on: &_container, forKey: .schedule)
		try totalIntake?.encode(on: &_container, forKey: .totalIntake)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntakeNutritionItemConsumedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && rate == _other.rate
		    && schedule == _other.schedule
		    && totalIntake == _other.totalIntake
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(rate)
		hasher.combine(schedule)
		hasher.combine(totalIntake)
	}
}

/**
 Nutrients and/or energy contained in the intake.
 */
open class NutritionIntakeNutritionItemConsumedItemTotalIntake: BackboneElement {
	
	/// Type of nutrient consumed in the intake
	public var nutrient: CodeableReference
	
	/// Total amount of nutrient consumed
	public var amount: Quantity
	
	/// Total energy consumed in kilocalories or kilojoules
	public var energy: Quantity?
	
	/// Designated initializer taking all required properties
	public init(amount: Quantity, nutrient: CodeableReference) {
		self.amount = amount
		self.nutrient = nutrient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Quantity,
		energy: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		nutrient: CodeableReference
	) {
		self.init(amount: amount, nutrient: nutrient)
		self.energy = energy
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case energy
		case nutrient
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKey: .amount)
		self.energy = try Quantity(from: _container, forKeyIfPresent: .energy)
		self.nutrient = try CodeableReference(from: _container, forKey: .nutrient)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount)
		try energy?.encode(on: &_container, forKey: .energy)
		try nutrient.encode(on: &_container, forKey: .nutrient)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntakeNutritionItemConsumedItemTotalIntake else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && energy == _other.energy
		    && nutrient == _other.nutrient
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(energy)
		hasher.combine(nutrient)
	}
}

/**
 Who performed the intake and how they were involved.
 */
open class NutritionIntakePerformer: BackboneElement {
	
	/// Type of performer
	public var function: CodeableConcept?
	
	/// Who performed the intake
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
		guard let _other = _other as? NutritionIntakePerformer else {
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
