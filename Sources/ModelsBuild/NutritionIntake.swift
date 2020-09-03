//
//  NutritionIntake.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/NutritionIntake)
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
 Record of food or fluid being taken by a patient.
 
 A record of food or fluid that is being consumed by a patient.   A NutritionIntake may indicate that the patient may be
 consuming the food or fluid now or has consumed the food or fluid in the past.  The source of this information can be
 the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this
 information is captured is during the history taking process during a patient visit or stay or through an app that
 tracks food or fluids consumed.   The consumption information may come from sources such as the patient's memory, from
 a nutrition label,  or from a clinician documenting observed intake.
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
	
	/// A code representing the patient or other source's judgment about the state of the intake that this assertion is
	/// about.  Generally, this will be active or completed.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Type of nutrition intake setting/reporting
	public var code: CodeableConcept?
	
	/// Who is/was consuming the food or fluid
	public var subject: Reference
	
	/// Encounter associated with NutritionIntake
	public var encounter: Reference?
	
	/// The date/time or interval when the food or fluid is/was consumed
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// When the intake was recorded
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Person or organization that provided the information about the consumption of this food or fluid
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// What food or fluid product or item was consumed
	public var consumedItem: [NutritionIntakeConsumedItem]
	
	/// Total nutrient for the whole meal, product, serving
	public var ingredientLabel: [NutritionIntakeIngredientLabel]?
	
	/// Who was performed in the intake
	public var performer: [NutritionIntakePerformer]?
	
	/// Where the intake occurred
	public var location: Reference?
	
	/// Additional supporting information
	public var derivedFrom: [Reference]?
	
	/// Reason for why the food or fluid is /was consumed
	public var reason: [CodeableReference]?
	
	/// Further information about the consumption
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(consumedItem: [NutritionIntakeConsumedItem], status: FHIRPrimitive<EventStatus>, subject: Reference) {
		self.consumedItem = consumedItem
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							code: CodeableConcept? = nil,
							consumedItem: [NutritionIntakeConsumedItem],
							contained: [ResourceProxy]? = nil,
							derivedFrom: [Reference]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredientLabel: [NutritionIntakeIngredientLabel]? = nil,
							instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
							instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX? = nil,
							partOf: [Reference]? = nil,
							performer: [NutritionIntakePerformer]? = nil,
							reason: [CodeableReference]? = nil,
							recorded: FHIRPrimitive<DateTime>? = nil,
							reported: ReportedX? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: [CodeableConcept]? = nil,
							subject: Reference,
							text: Narrative? = nil)
	{
		self.init(consumedItem: consumedItem, status: status, subject: subject)
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredientLabel = ingredientLabel
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
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
		case consumedItem
		case derivedFrom
		case encounter
		case identifier
		case ingredientLabel
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case location
		case note
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
		self.consumedItem = try [NutritionIntakeConsumedItem](from: _container, forKey: .consumedItem)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredientLabel = try [NutritionIntakeIngredientLabel](from: _container, forKeyIfPresent: .ingredientLabel)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
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
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
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
		try consumedItem.encode(on: &_container, forKey: .consumedItem)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredientLabel?.encode(on: &_container, forKey: .ingredientLabel)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try location?.encode(on: &_container, forKey: .location)
		try note?.encode(on: &_container, forKey: .note)
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
		    && consumedItem == _other.consumedItem
		    && derivedFrom == _other.derivedFrom
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && ingredientLabel == _other.ingredientLabel
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && location == _other.location
		    && note == _other.note
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
		hasher.combine(consumedItem)
		hasher.combine(derivedFrom)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(ingredientLabel)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(location)
		hasher.combine(note)
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
 What food or fluid product or item was consumed.
 */
open class NutritionIntakeConsumedItem: BackboneElement {
	
	/// The type of food or fluid product
	public var type: CodeableConcept
	
	/// Code that identifies the food or fluid product that was consumed
	public var nutritionProduct: CodeableReference
	
	/// Scheduled frequency of consumption
	public var schedule: Timing?
	
	/// Quantity of the specified food
	public var amount: Quantity?
	
	/// Rate at which enteral feeding was administered
	public var rate: Quantity?
	
	/// Flag to indicate if the food or fluid item was refused or otherwise not consumed
	public var notConsumed: FHIRPrimitive<FHIRBool>?
	
	/// Reason food or fluid was not consumed
	public var notConsumedReason: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(nutritionProduct: CodeableReference, type: CodeableConcept) {
		self.nutritionProduct = nutritionProduct
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							notConsumed: FHIRPrimitive<FHIRBool>? = nil,
							notConsumedReason: CodeableConcept? = nil,
							nutritionProduct: CodeableReference,
							rate: Quantity? = nil,
							schedule: Timing? = nil,
							type: CodeableConcept)
	{
		self.init(nutritionProduct: nutritionProduct, type: type)
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.notConsumed = notConsumed
		self.notConsumedReason = notConsumedReason
		self.rate = rate
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case notConsumed; case _notConsumed
		case notConsumedReason
		case nutritionProduct
		case rate
		case schedule
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.notConsumed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .notConsumed, auxiliaryKey: ._notConsumed)
		self.notConsumedReason = try CodeableConcept(from: _container, forKeyIfPresent: .notConsumedReason)
		self.nutritionProduct = try CodeableReference(from: _container, forKey: .nutritionProduct)
		self.rate = try Quantity(from: _container, forKeyIfPresent: .rate)
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try notConsumed?.encode(on: &_container, forKey: .notConsumed, auxiliaryKey: ._notConsumed)
		try notConsumedReason?.encode(on: &_container, forKey: .notConsumedReason)
		try nutritionProduct.encode(on: &_container, forKey: .nutritionProduct)
		try rate?.encode(on: &_container, forKey: .rate)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntakeConsumedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && notConsumed == _other.notConsumed
		    && notConsumedReason == _other.notConsumedReason
		    && nutritionProduct == _other.nutritionProduct
		    && rate == _other.rate
		    && schedule == _other.schedule
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(notConsumed)
		hasher.combine(notConsumedReason)
		hasher.combine(nutritionProduct)
		hasher.combine(rate)
		hasher.combine(schedule)
		hasher.combine(type)
	}
}

/**
 Total nutrient for the whole meal, product, serving.
 
 Total nutrient amounts for the whole meal, product, serving, etc.
 */
open class NutritionIntakeIngredientLabel: BackboneElement {
	
	/// Total nutrient consumed
	public var nutrient: CodeableReference
	
	/// Total amount of nutrient consumed
	public var amount: Quantity
	
	/// Designated initializer taking all required properties
	public init(amount: Quantity, nutrient: CodeableReference) {
		self.amount = amount
		self.nutrient = nutrient
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: Quantity,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							nutrient: CodeableReference)
	{
		self.init(amount: amount, nutrient: nutrient)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case nutrient
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKey: .amount)
		self.nutrient = try CodeableReference(from: _container, forKey: .nutrient)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount)
		try nutrient.encode(on: &_container, forKey: .nutrient)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionIntakeIngredientLabel else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && nutrient == _other.nutrient
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(nutrient)
	}
}

/**
 Who was performed in the intake.
 
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
