//
//  NutritionIntake.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/NutritionIntake)
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
 Record of intake by a patient.
 
 A record of intake by a patient.  A NutritionIntake may indicate that the patient may be consuming the food (i.e.,
 solid and/or liquid), breastmilk, infant formula, supplements, enteral formula now or has consumed it in the past.  The
 source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.
 A common scenario where this information is captured is during the history taking process during a patient visit or
 stay or through an app that tracks food (i.e., solid and/or liquid), breastmilk, infant formula, supplements, enteral
 formula consumed.   The consumption information may come from sources such as the patient's memory, from a nutrition
 label, or from a clinician documenting observed intake.
 */
public struct NutritionIntake: DomainResource {
	
	public static let resourceType: ResourceType = .nutritionIntake
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// All possible types for "reported[x]"
	public enum ReportedX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case reference(Reference)
	}
	
	/// Fulfils plan, proposal or order
	public var basedOn: [Reference]?
	
	/// Code representing an overall type of nutrition intake
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional supporting information
	public var derivedFrom: [Reference]?
	
	/// Encounter associated with NutritionIntake
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the intake occurred
	public var location: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Further information about the consumption
	public var note: [Annotation]?
	
	/// The nutrition product intended for consumption and/or administration
	public var nutritionItem: [NutritionIntakeNutritionItem]?
	
	/// The date/time or interval when the food (i.e. solid and/or liquid) is/was consumed
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Part of referenced event
	public var partOf: [Reference]?
	
	/// Who or what performed the intake and how they were involved
	public var performer: [NutritionIntakePerformer]?
	
	/// Reason for why the food (i.e. solid and/or liquid) is /was consumed
	public var reason: [CodeableReference]?
	
	/// When the intake was recorded
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Indicates if this is a reported rather than a primary record.  Can also indicate the source that provided the
	/// information about the consumption
	/// One of `reported[x]`
	public var reported: ReportedX?
	
	/// A code representing the patient or other source's judgment about the state of the intake that this assertion is
	/// about.  Generally, this will be active or completed.
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: [CodeableConcept]?
	
	/// Who is/was consuming the food (i.e. solid and/or liquid)
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		derivedFrom: [Reference]? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
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
		status: FHIRPrimitive<EventStatus>,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference,
		text: Narrative? = nil
	) {
		self.basedOn = basedOn
		self.code = code
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
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
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case code
		case contained
		case derivedFrom
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.nutritionItem = try [NutritionIntakeNutritionItem](from: _container, forKeyIfPresent: .nutritionItem)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [NutritionIntakePerformer](from: _container, forKeyIfPresent: .performer)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.reported = try Self._decodeReported(from: _container)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
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
		return _t_occurrence
	}
	
	private static func _decodeReported(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReportedX? {
		var _t_reported: ReportedX? = nil
		if let reportedBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reportedBoolean, auxiliaryKey: ._reportedBoolean) {
			_t_reported = .boolean(reportedBoolean)
		}
		if let reportedReference = try Reference(from: _container, forKeyIfPresent: .reportedReference) {
			if _t_reported != nil {
				throw DecodingError.dataCorruptedError(forKey: .reportedReference, in: _container, debugDescription: "More than one value provided for \"reported\"")
			}
			_t_reported = .reference(reportedReference)
		}
		return _t_reported
	}
}

/**
 The nutrition product intended for consumption and/or administration.
 */
public struct NutritionIntakeNutritionItem: BackboneElement {
	
	/// What nutrition item was consumed
	public var consumedItem: [NutritionIntakeNutritionItemConsumedItem]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// What nutrition item was not consumed
	public var notConsumedItem: [NutritionIntakeNutritionItemNotConsumedItem]?
	
	/// A product used for nutritional purposes (e.g. food or supplement)
	public var nutritionProduct: CodeableReference?
	
	/// The type of food (i.e. solid or liquid) product
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		consumedItem: [NutritionIntakeNutritionItemConsumedItem]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		notConsumedItem: [NutritionIntakeNutritionItemNotConsumedItem]? = nil,
		nutritionProduct: CodeableReference? = nil,
		type: CodeableConcept? = nil
	) {
		self.consumedItem = consumedItem
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.notConsumedItem = notConsumedItem
		self.nutritionProduct = nutritionProduct
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case consumedItem
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case notConsumedItem
		case nutritionProduct
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.consumedItem = try [NutritionIntakeNutritionItemConsumedItem](from: _container, forKeyIfPresent: .consumedItem)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notConsumedItem = try [NutritionIntakeNutritionItemNotConsumedItem](from: _container, forKeyIfPresent: .notConsumedItem)
		self.nutritionProduct = try CodeableReference(from: _container, forKeyIfPresent: .nutritionProduct)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try consumedItem?.encode(on: &_container, forKey: .consumedItem)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notConsumedItem?.encode(on: &_container, forKey: .notConsumedItem)
		try nutritionProduct?.encode(on: &_container, forKey: .nutritionProduct)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 What nutrition item was consumed.
 */
public struct NutritionIntakeNutritionItemConsumedItem: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
	}
	
	/// Quantity of the specified food (i.e. solid and/or liquid)
	public var amount: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Rate of enteral feeding administration
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Scheduled frequency of consumption
	public var schedule: Timing?
	
	/// Nutrients and/or energy contained in the intake
	public var totalIntake: [NutritionIntakeNutritionItemConsumedItemTotalIntake]?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		rate: RateX? = nil,
		schedule: Timing? = nil,
		totalIntake: [NutritionIntakeNutritionItemConsumedItemTotalIntake]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case rateQuantity
		case rateRatio
		case schedule
		case totalIntake
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rate = try Self._decodeRate(from: _container)
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
		self.totalIntake = try [NutritionIntakeNutritionItemConsumedItemTotalIntake](from: _container, forKeyIfPresent: .totalIntake)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
 Nutrients and/or energy contained in the intake.
 */
public struct NutritionIntakeNutritionItemConsumedItemTotalIntake: BackboneElement {
	
	/// Total amount of nutrient consumed
	public var amount: Quantity
	
	/// Total energy consumed in kilocalories or kilojoules
	public var energy: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of nutrient consumed in the intake
	public var nutrient: CodeableReference
	
	/// Designated initializer
	public init(
		amount: Quantity,
		energy: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		nutrient: CodeableReference
	) {
		self.amount = amount
		self.energy = energy
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.nutrient = nutrient
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case energy
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case nutrient
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKey: .amount)
		self.energy = try Quantity(from: _container, forKeyIfPresent: .energy)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.nutrient = try CodeableReference(from: _container, forKey: .nutrient)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount.encode(on: &_container, forKey: .amount)
		try energy?.encode(on: &_container, forKey: .energy)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try nutrient.encode(on: &_container, forKey: .nutrient)
	}
}

/**
 What nutrition item was not consumed.
 */
public struct NutritionIntakeNutritionItemNotConsumedItem: BackboneElement {
	
	/// Quantity of the specified food (i.e. solid and/or liquid) that was not consumed
	public var amount: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reason the nutrition item was not consumed
	public var reason: CodeableConcept?
	
	/// The intended frequency of consumption that was not followed
	public var schedule: Timing?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reason: CodeableConcept? = nil,
		schedule: Timing? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reason = reason
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reason
		case schedule
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reason = try CodeableConcept(from: _container, forKeyIfPresent: .reason)
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reason?.encode(on: &_container, forKey: .reason)
		try schedule?.encode(on: &_container, forKey: .schedule)
	}
}

/**
 Who or what performed the intake and how they were involved.
 */
public struct NutritionIntakePerformer: BackboneElement {
	
	/// Who or what performed the intake
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performer
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
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
		self.actor = try Reference(from: _container, forKey: .actor)
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
