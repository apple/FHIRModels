//
//  NutritionOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/NutritionOrder)
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
 Diet, formula or nutritional supplement request.
 
 A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to an individual or group.
 */
open class NutritionOrder: DomainResource {
	
	override open class var resourceType: ResourceType { return .nutritionOrder }
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Instantiates protocol or definition
	public var instantiates: [FHIRPrimitive<FHIRURI>]?
	
	/// What this order fulfills
	public var basedOn: [Reference]?
	
	/// Composite Request ID
	public var groupIdentifier: Identifier?
	
	/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
	public var intent: FHIRPrimitive<FHIRString>
	
	/// routine | urgent | asap | stat
	public var priority: FHIRPrimitive<FHIRString>?
	
	/// Who requires the diet, formula or nutritional supplement
	public var subject: Reference
	
	/// The encounter associated with this nutrition order
	public var encounter: Reference?
	
	/// Information to support fulfilling of the nutrition order
	public var supportingInformation: [Reference]?
	
	/// Date and time the nutrition order was requested
	public var dateTime: FHIRPrimitive<DateTime>
	
	/// Who ordered the diet, formula or nutritional supplement
	public var orderer: Reference?
	
	/// Who is intended to perform the administration of the nutrition order
	public var performer: [CodeableReference]?
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Capture if patient is permitted to consume food from outside of current setting brought by the patient, family,
	/// and/or caregiver
	public var outsideFoodAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Supplement components
	public var supplement: [NutritionOrderSupplement]?
	
	/// Enteral formula product
	public var enteralFormula: NutritionOrderEnteralFormula?
	
	/// Modular additive to add to the oral diet, supplement, and/or enteral feeding
	public var additive: [NutritionOrderAdditive]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(dateTime: FHIRPrimitive<DateTime>, intent: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.dateTime = dateTime
		self.intent = intent
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additive: [NutritionOrderAdditive]? = nil,
		allergyIntolerance: [Reference]? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		dateTime: FHIRPrimitive<DateTime>,
		encounter: Reference? = nil,
		enteralFormula: NutritionOrderEnteralFormula? = nil,
		excludeFoodModifier: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		foodPreferenceModifier: [CodeableConcept]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiates: [FHIRPrimitive<FHIRURI>]? = nil,
		instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
		instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
		intent: FHIRPrimitive<FHIRString>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		oralDiet: NutritionOrderOralDiet? = nil,
		orderer: Reference? = nil,
		outsideFoodAllowed: FHIRPrimitive<FHIRBool>? = nil,
		performer: [CodeableReference]? = nil,
		priority: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<FHIRString>,
		subject: Reference,
		supplement: [NutritionOrderSupplement]? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.init(dateTime: dateTime, intent: intent, status: status, subject: subject)
		self.additive = additive
		self.allergyIntolerance = allergyIntolerance
		self.basedOn = basedOn
		self.contained = contained
		self.encounter = encounter
		self.enteralFormula = enteralFormula
		self.excludeFoodModifier = excludeFoodModifier
		self.`extension` = `extension`
		self.foodPreferenceModifier = foodPreferenceModifier
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiates = instantiates
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.oralDiet = oralDiet
		self.orderer = orderer
		self.outsideFoodAllowed = outsideFoodAllowed
		self.performer = performer
		self.priority = priority
		self.supplement = supplement
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case allergyIntolerance
		case basedOn
		case dateTime; case _dateTime
		case encounter
		case enteralFormula
		case excludeFoodModifier
		case foodPreferenceModifier
		case groupIdentifier
		case identifier
		case instantiates; case _instantiates
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case intent; case _intent
		case note
		case oralDiet
		case orderer
		case outsideFoodAllowed; case _outsideFoodAllowed
		case performer
		case priority; case _priority
		case status; case _status
		case subject
		case supplement
		case supportingInformation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try [NutritionOrderAdditive](from: _container, forKeyIfPresent: .additive)
		self.allergyIntolerance = try [Reference](from: _container, forKeyIfPresent: .allergyIntolerance)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.enteralFormula = try NutritionOrderEnteralFormula(from: _container, forKeyIfPresent: .enteralFormula)
		self.excludeFoodModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .excludeFoodModifier)
		self.foodPreferenceModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .foodPreferenceModifier)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiates = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiates, auxiliaryKey: ._instantiates)
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.intent = try FHIRPrimitive<FHIRString>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.oralDiet = try NutritionOrderOralDiet(from: _container, forKeyIfPresent: .oralDiet)
		self.orderer = try Reference(from: _container, forKeyIfPresent: .orderer)
		self.outsideFoodAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .outsideFoodAllowed, auxiliaryKey: ._outsideFoodAllowed)
		self.performer = try [CodeableReference](from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supplement = try [NutritionOrderSupplement](from: _container, forKeyIfPresent: .supplement)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try allergyIntolerance?.encode(on: &_container, forKey: .allergyIntolerance)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enteralFormula?.encode(on: &_container, forKey: .enteralFormula)
		try excludeFoodModifier?.encode(on: &_container, forKey: .excludeFoodModifier)
		try foodPreferenceModifier?.encode(on: &_container, forKey: .foodPreferenceModifier)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiates?.encode(on: &_container, forKey: .instantiates, auxiliaryKey: ._instantiates)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try note?.encode(on: &_container, forKey: .note)
		try oralDiet?.encode(on: &_container, forKey: .oralDiet)
		try orderer?.encode(on: &_container, forKey: .orderer)
		try outsideFoodAllowed?.encode(on: &_container, forKey: .outsideFoodAllowed, auxiliaryKey: ._outsideFoodAllowed)
		try performer?.encode(on: &_container, forKey: .performer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supplement?.encode(on: &_container, forKey: .supplement)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrder else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && allergyIntolerance == _other.allergyIntolerance
		    && basedOn == _other.basedOn
		    && dateTime == _other.dateTime
		    && encounter == _other.encounter
		    && enteralFormula == _other.enteralFormula
		    && excludeFoodModifier == _other.excludeFoodModifier
		    && foodPreferenceModifier == _other.foodPreferenceModifier
		    && groupIdentifier == _other.groupIdentifier
		    && identifier == _other.identifier
		    && instantiates == _other.instantiates
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && intent == _other.intent
		    && note == _other.note
		    && oralDiet == _other.oralDiet
		    && orderer == _other.orderer
		    && outsideFoodAllowed == _other.outsideFoodAllowed
		    && performer == _other.performer
		    && priority == _other.priority
		    && status == _other.status
		    && subject == _other.subject
		    && supplement == _other.supplement
		    && supportingInformation == _other.supportingInformation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(allergyIntolerance)
		hasher.combine(basedOn)
		hasher.combine(dateTime)
		hasher.combine(encounter)
		hasher.combine(enteralFormula)
		hasher.combine(excludeFoodModifier)
		hasher.combine(foodPreferenceModifier)
		hasher.combine(groupIdentifier)
		hasher.combine(identifier)
		hasher.combine(instantiates)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(intent)
		hasher.combine(note)
		hasher.combine(oralDiet)
		hasher.combine(orderer)
		hasher.combine(outsideFoodAllowed)
		hasher.combine(performer)
		hasher.combine(priority)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supplement)
		hasher.combine(supportingInformation)
	}
}

/**
 Modular additive to add to the oral diet, supplement, and/or enteral feeding.
 
 Indicates modular components to be provided in addition or mixed with the oral diet, supplement, and/or enteral
 feeding.
 */
open class NutritionOrderAdditive: BackboneElement {
	
	/// Type of modular component to add to the oral diet, supplement, and/or enteral feeding
	public var modularType: CodeableReference?
	
	/// Product or brand name of the modular additive
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Amount of additive to be given or mixed in with the oral diet, supplement, and/or enteral feeding
	public var quantity: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		modularType: CodeableReference? = nil,
		productName: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.modularType = modularType
		self.productName = productName
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case modularType
		case productName; case _productName
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.modularType = try CodeableReference(from: _container, forKeyIfPresent: .modularType)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try modularType?.encode(on: &_container, forKey: .modularType)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderAdditive else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return modularType == _other.modularType
		    && productName == _other.productName
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(modularType)
		hasher.combine(productName)
		hasher.combine(quantity)
	}
}

/**
 Enteral formula product.
 
 Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to
 the oral cavity.
 */
open class NutritionOrderEnteralFormula: BackboneElement {
	
	/// Type of patient enteral feeding
	public var type: CodeableReference?
	
	/// Product or brand name of the enteral feeding
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Intended type of device for the enteral feeding administration
	public var deliveryDevice: [CodeableReference]?
	
	/// Amount of energy per specified volume of feeding that is required
	public var caloricDensity: Quantity?
	
	/// How the enteral feeding should enter the patient's gastrointestinal tract
	public var routeOfAdministration: [CodeableConcept]?
	
	/// Formula feeding instruction as structured data
	public var administration: [NutritionOrderEnteralFormulaAdministration]?
	
	/// Upper limit on formula feeding volume per unit of time
	public var maxVolumeToAdminister: Quantity?
	
	/// Formula feeding instructions expressed as text
	public var administrationInstruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		administration: [NutritionOrderEnteralFormulaAdministration]? = nil,
		administrationInstruction: FHIRPrimitive<FHIRString>? = nil,
		caloricDensity: Quantity? = nil,
		deliveryDevice: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxVolumeToAdminister: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		productName: FHIRPrimitive<FHIRString>? = nil,
		routeOfAdministration: [CodeableConcept]? = nil,
		type: CodeableReference? = nil
	) {
		self.init()
		self.administration = administration
		self.administrationInstruction = administrationInstruction
		self.caloricDensity = caloricDensity
		self.deliveryDevice = deliveryDevice
		self.`extension` = `extension`
		self.id = id
		self.maxVolumeToAdminister = maxVolumeToAdminister
		self.modifierExtension = modifierExtension
		self.productName = productName
		self.routeOfAdministration = routeOfAdministration
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administration
		case administrationInstruction; case _administrationInstruction
		case caloricDensity
		case deliveryDevice
		case maxVolumeToAdminister
		case productName; case _productName
		case routeOfAdministration
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administration = try [NutritionOrderEnteralFormulaAdministration](from: _container, forKeyIfPresent: .administration)
		self.administrationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.deliveryDevice = try [CodeableReference](from: _container, forKeyIfPresent: .deliveryDevice)
		self.maxVolumeToAdminister = try Quantity(from: _container, forKeyIfPresent: .maxVolumeToAdminister)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.routeOfAdministration = try [CodeableConcept](from: _container, forKeyIfPresent: .routeOfAdministration)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administration?.encode(on: &_container, forKey: .administration)
		try administrationInstruction?.encode(on: &_container, forKey: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try deliveryDevice?.encode(on: &_container, forKey: .deliveryDevice)
		try maxVolumeToAdminister?.encode(on: &_container, forKey: .maxVolumeToAdminister)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try routeOfAdministration?.encode(on: &_container, forKey: .routeOfAdministration)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderEnteralFormula else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administration == _other.administration
		    && administrationInstruction == _other.administrationInstruction
		    && caloricDensity == _other.caloricDensity
		    && deliveryDevice == _other.deliveryDevice
		    && maxVolumeToAdminister == _other.maxVolumeToAdminister
		    && productName == _other.productName
		    && routeOfAdministration == _other.routeOfAdministration
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administration)
		hasher.combine(administrationInstruction)
		hasher.combine(caloricDensity)
		hasher.combine(deliveryDevice)
		hasher.combine(maxVolumeToAdminister)
		hasher.combine(productName)
		hasher.combine(routeOfAdministration)
		hasher.combine(type)
	}
}

/**
 Formula feeding instruction as structured data.
 
 Formula feeding administration instructions as structured data.  This repeating structure allows for changing the
 administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an
 instruction to increase the rate of continuous feeding every 2 hours.
 */
open class NutritionOrderEnteralFormulaAdministration: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Scheduling information for enteral feeding products
	public var schedule: NutritionOrderEnteralFormulaAdministrationSchedule?
	
	/// The volume of formula feeding to provide
	public var quantity: Quantity?
	
	/// Speed with which the formula feeding is provided per period of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		rate: RateX? = nil,
		schedule: NutritionOrderEnteralFormulaAdministrationSchedule? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.rate = rate
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case quantity
		case rateQuantity
		case rateRatio
		case schedule
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		self.schedule = try NutritionOrderEnteralFormulaAdministrationSchedule(from: _container, forKeyIfPresent: .schedule)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try quantity?.encode(on: &_container, forKey: .quantity)
		if let _enum = rate {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .rateQuantity)
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .rateRatio)
			}
		}
		try schedule?.encode(on: &_container, forKey: .schedule)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderEnteralFormulaAdministration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return quantity == _other.quantity
		    && rate == _other.rate
		    && schedule == _other.schedule
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(quantity)
		hasher.combine(rate)
		hasher.combine(schedule)
	}
}

/**
 Scheduling information for enteral feeding products.
 
 Schedule information for an enteral feeding.
 */
open class NutritionOrderEnteralFormulaAdministrationSchedule: BackboneElement {
	
	/// Scheduled frequency of enteral feeding
	public var timing: [Timing]?
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
		self.init()
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeeded; case _asNeeded
		case asNeededFor
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try timing?.encode(on: &_container, forKey: .timing)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderEnteralFormulaAdministrationSchedule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && asNeededFor == _other.asNeededFor
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(asNeededFor)
		hasher.combine(timing)
	}
}

/**
 Oral diet components.
 
 Diet given orally that may include texture modification, such as International Dysphagia Diet Standardisation
 Initiative Framework - Slightly Thick Level 1 drinks and Minced and International Dysphagia Diet Standardisation
 Initiative Framework - Minced and Moist Level 5 food as well as, for example, Decreased potassium diet (ie, nutrient
 modification), Halal diet (ie, cultural modification), and/or Low microbial diet (eg, other modification).
 */
open class NutritionOrderOralDiet: BackboneElement {
	
	/// Type of oral diet or diet restrictions that can be consumed orally
	public var type: [CodeableConcept]?
	
	/// Scheduling information for oral diets
	public var schedule: NutritionOrderOralDietSchedule?
	
	/// The nutrient that is modified and the quantity in the diet
	public var nutrient: [NutritionOrderOralDietNutrient]?
	
	/// Texture modifications in addition to the oral diet type
	public var texture: [NutritionOrderOralDietTexture]?
	
	/// Instructions or additional information about the oral diet
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Amount of energy per specified volume of oral diet
	public var caloricDensity: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		caloricDensity: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		nutrient: [NutritionOrderOralDietNutrient]? = nil,
		schedule: NutritionOrderOralDietSchedule? = nil,
		texture: [NutritionOrderOralDietTexture]? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.caloricDensity = caloricDensity
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.modifierExtension = modifierExtension
		self.nutrient = nutrient
		self.schedule = schedule
		self.texture = texture
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case caloricDensity
		case instruction; case _instruction
		case nutrient
		case schedule
		case texture
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.nutrient = try [NutritionOrderOralDietNutrient](from: _container, forKeyIfPresent: .nutrient)
		self.schedule = try NutritionOrderOralDietSchedule(from: _container, forKeyIfPresent: .schedule)
		self.texture = try [NutritionOrderOralDietTexture](from: _container, forKeyIfPresent: .texture)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try nutrient?.encode(on: &_container, forKey: .nutrient)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try texture?.encode(on: &_container, forKey: .texture)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderOralDiet else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return caloricDensity == _other.caloricDensity
		    && instruction == _other.instruction
		    && nutrient == _other.nutrient
		    && schedule == _other.schedule
		    && texture == _other.texture
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(caloricDensity)
		hasher.combine(instruction)
		hasher.combine(nutrient)
		hasher.combine(schedule)
		hasher.combine(texture)
		hasher.combine(type)
	}
}

/**
 The nutrient that is modified and the quantity in the diet.
 
 Defines the quantity and the nutrient modified (for example carbohydrate, fiber or sodium) in the oral diet.
 */
open class NutritionOrderOralDietNutrient: BackboneElement {
	
	/// Nutrient modified in the oral diet type
	public var modifier: CodeableConcept?
	
	/// Quantity of the specified nutrient
	public var amount: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case modifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.modifier = try CodeableConcept(from: _container, forKeyIfPresent: .modifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount?.encode(on: &_container, forKey: .amount)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderOralDietNutrient else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && modifier == _other.modifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(modifier)
	}
}

/**
 Scheduling information for oral diets.
 
 Schedule information for an oral diet.
 */
open class NutritionOrderOralDietSchedule: BackboneElement {
	
	/// Scheduled frequency of diet
	public var timing: [Timing]?
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
		self.init()
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeeded; case _asNeeded
		case asNeededFor
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try timing?.encode(on: &_container, forKey: .timing)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderOralDietSchedule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && asNeededFor == _other.asNeededFor
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(asNeededFor)
		hasher.combine(timing)
	}
}

/**
 Texture modifications in addition to the oral diet type.
 
 Class that describes any texture modifications in addition to the oral diet type required for the patient to safely
 consume various types of foods (i.e. solid and/or liquid).
 */
open class NutritionOrderOralDietTexture: BackboneElement {
	
	/// Food (i.e. solid and/or liquid) texture modifications in addition to those in the oral diet type
	public var modifier: CodeableConcept?
	
	/// Food (i.e. solid and/or liquid) types that undergo texture alteration
	public var type: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case modifier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.modifier = try CodeableConcept(from: _container, forKeyIfPresent: .modifier)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try modifier?.encode(on: &_container, forKey: .modifier)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderOralDietTexture else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return modifier == _other.modifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(modifier)
		hasher.combine(type)
	}
}

/**
 Supplement components.
 
 Oral nutritional products given in order to add further nutritional value to the patient's diet.
 */
open class NutritionOrderSupplement: BackboneElement {
	
	/// Type of supplement product requested
	public var type: CodeableReference?
	
	/// Product or brand name of the nutritional supplement
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Scheduling information for supplements
	public var schedule: NutritionOrderSupplementSchedule?
	
	/// Amount of the nutritional supplement
	public var quantity: Quantity?
	
	/// Instructions or additional information about the oral supplement
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Amount of energy per specified volume of supplement that is required
	public var caloricDensity: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		caloricDensity: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		productName: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil,
		schedule: NutritionOrderSupplementSchedule? = nil,
		type: CodeableReference? = nil
	) {
		self.init()
		self.caloricDensity = caloricDensity
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.modifierExtension = modifierExtension
		self.productName = productName
		self.quantity = quantity
		self.schedule = schedule
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case caloricDensity
		case instruction; case _instruction
		case productName; case _productName
		case quantity
		case schedule
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.schedule = try NutritionOrderSupplementSchedule(from: _container, forKeyIfPresent: .schedule)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderSupplement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return caloricDensity == _other.caloricDensity
		    && instruction == _other.instruction
		    && productName == _other.productName
		    && quantity == _other.quantity
		    && schedule == _other.schedule
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(caloricDensity)
		hasher.combine(instruction)
		hasher.combine(productName)
		hasher.combine(quantity)
		hasher.combine(schedule)
		hasher.combine(type)
	}
}

/**
 Scheduling information for supplements.
 
 Schedule information for a supplement.
 */
open class NutritionOrderSupplementSchedule: BackboneElement {
	
	/// Scheduled frequency of supplement
	public var timing: [Timing]?
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
		self.init()
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asNeeded; case _asNeeded
		case asNeededFor
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try timing?.encode(on: &_container, forKey: .timing)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderSupplementSchedule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asNeeded == _other.asNeeded
		    && asNeededFor == _other.asNeededFor
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asNeeded)
		hasher.combine(asNeededFor)
		hasher.combine(timing)
	}
}
