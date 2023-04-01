//
//  NutritionOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/NutritionOrder)
//  Copyright 2023 Apple Inc.
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
 
 A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
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
	
	/// Who is desired to perform the administration of what is being ordered
	public var performer: [CodeableReference]?
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Order-specific modifier about the type of food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Capture when a food item is brought in by the patient and/or family
	public var outsideFoodAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Supplement components
	public var supplement: [NutritionOrderSupplement]?
	
	/// Enteral formula components
	public var enteralFormula: NutritionOrderEnteralFormula?
	
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
		return allergyIntolerance == _other.allergyIntolerance
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
 Enteral formula components.
 
 Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to
 the oral cavity.
 */
open class NutritionOrderEnteralFormula: BackboneElement {
	
	/// Type of enteral or infant formula
	public var baseFormulaType: CodeableReference?
	
	/// Product or brand name of the enteral or infant formula
	public var baseFormulaProductName: FHIRPrimitive<FHIRString>?
	
	/// Intended type of device for the administration
	public var deliveryDevice: [CodeableReference]?
	
	/// Components to add to the feeding
	public var additive: [NutritionOrderEnteralFormulaAdditive]?
	
	/// Amount of energy per specified volume that is required
	public var caloricDensity: Quantity?
	
	/// How the formula should enter the patient's gastrointestinal tract
	public var routeOfAdministration: CodeableConcept?
	
	/// Formula feeding instruction as structured data
	public var administration: [NutritionOrderEnteralFormulaAdministration]?
	
	/// Upper limit on formula volume per unit of time
	public var maxVolumeToDeliver: Quantity?
	
	/// Formula feeding instructions expressed as text
	public var administrationInstruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additive: [NutritionOrderEnteralFormulaAdditive]? = nil,
		administration: [NutritionOrderEnteralFormulaAdministration]? = nil,
		administrationInstruction: FHIRPrimitive<FHIRString>? = nil,
		baseFormulaProductName: FHIRPrimitive<FHIRString>? = nil,
		baseFormulaType: CodeableReference? = nil,
		caloricDensity: Quantity? = nil,
		deliveryDevice: [CodeableReference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxVolumeToDeliver: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		routeOfAdministration: CodeableConcept? = nil
	) {
		self.init()
		self.additive = additive
		self.administration = administration
		self.administrationInstruction = administrationInstruction
		self.baseFormulaProductName = baseFormulaProductName
		self.baseFormulaType = baseFormulaType
		self.caloricDensity = caloricDensity
		self.deliveryDevice = deliveryDevice
		self.`extension` = `extension`
		self.id = id
		self.maxVolumeToDeliver = maxVolumeToDeliver
		self.modifierExtension = modifierExtension
		self.routeOfAdministration = routeOfAdministration
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case administration
		case administrationInstruction; case _administrationInstruction
		case baseFormulaProductName; case _baseFormulaProductName
		case baseFormulaType
		case caloricDensity
		case deliveryDevice
		case maxVolumeToDeliver
		case routeOfAdministration
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try [NutritionOrderEnteralFormulaAdditive](from: _container, forKeyIfPresent: .additive)
		self.administration = try [NutritionOrderEnteralFormulaAdministration](from: _container, forKeyIfPresent: .administration)
		self.administrationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		self.baseFormulaProductName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .baseFormulaProductName, auxiliaryKey: ._baseFormulaProductName)
		self.baseFormulaType = try CodeableReference(from: _container, forKeyIfPresent: .baseFormulaType)
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.deliveryDevice = try [CodeableReference](from: _container, forKeyIfPresent: .deliveryDevice)
		self.maxVolumeToDeliver = try Quantity(from: _container, forKeyIfPresent: .maxVolumeToDeliver)
		self.routeOfAdministration = try CodeableConcept(from: _container, forKeyIfPresent: .routeOfAdministration)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try administration?.encode(on: &_container, forKey: .administration)
		try administrationInstruction?.encode(on: &_container, forKey: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		try baseFormulaProductName?.encode(on: &_container, forKey: .baseFormulaProductName, auxiliaryKey: ._baseFormulaProductName)
		try baseFormulaType?.encode(on: &_container, forKey: .baseFormulaType)
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try deliveryDevice?.encode(on: &_container, forKey: .deliveryDevice)
		try maxVolumeToDeliver?.encode(on: &_container, forKey: .maxVolumeToDeliver)
		try routeOfAdministration?.encode(on: &_container, forKey: .routeOfAdministration)
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
		return additive == _other.additive
		    && administration == _other.administration
		    && administrationInstruction == _other.administrationInstruction
		    && baseFormulaProductName == _other.baseFormulaProductName
		    && baseFormulaType == _other.baseFormulaType
		    && caloricDensity == _other.caloricDensity
		    && deliveryDevice == _other.deliveryDevice
		    && maxVolumeToDeliver == _other.maxVolumeToDeliver
		    && routeOfAdministration == _other.routeOfAdministration
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(administration)
		hasher.combine(administrationInstruction)
		hasher.combine(baseFormulaProductName)
		hasher.combine(baseFormulaType)
		hasher.combine(caloricDensity)
		hasher.combine(deliveryDevice)
		hasher.combine(maxVolumeToDeliver)
		hasher.combine(routeOfAdministration)
	}
}

/**
 Components to add to the feeding.
 
 Indicates modular components to be provided in addition or mixed with the base formula.
 */
open class NutritionOrderEnteralFormulaAdditive: BackboneElement {
	
	/// Type of modular component to add to the feeding
	public var type: CodeableReference?
	
	/// Product or brand name of the modular additive
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Amount of additive to be given or mixed in
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
		productName: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil,
		type: CodeableReference? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.productName = productName
		self.quantity = quantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case productName; case _productName
		case quantity
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? NutritionOrderEnteralFormulaAdditive else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return productName == _other.productName
		    && quantity == _other.quantity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(productName)
		hasher.combine(quantity)
		hasher.combine(type)
	}
}

/**
 Formula feeding instruction as structured data.
 
 Formula administration instructions as structured data.  This repeating structure allows for changing the
 administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an
 instruction to increase the rate of continuous feeding every 2 hours.
 */
open class NutritionOrderEnteralFormulaAdministration: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case quantity(Quantity)
		case ratio(Ratio)
	}
	
	/// Scheduling information for enteral formula products
	public var schedule: NutritionOrderEnteralFormulaAdministrationSchedule?
	
	/// The volume of formula to provide
	public var quantity: Quantity?
	
	/// Speed with which the formula is provided per period of time
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
 Scheduling information for enteral formula products.
 
 Schedule information for an enteral formula.
 */
open class NutritionOrderEnteralFormulaAdministrationSchedule: BackboneElement {
	
	/// Scheduled frequency of enteral formula
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
 
 Diet given orally in contrast to enteral (tube) feeding.
 */
open class NutritionOrderOralDiet: BackboneElement {
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally
	public var type: [CodeableConcept]?
	
	/// Scheduling information for oral diets
	public var schedule: NutritionOrderOralDietSchedule?
	
	/// Required  nutrient modifications
	public var nutrient: [NutritionOrderOralDietNutrient]?
	
	/// Required  texture modifications
	public var texture: [NutritionOrderOralDietTexture]?
	
	/// The required consistency of fluids and liquids provided to the patient
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		fluidConsistencyType: [CodeableConcept]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		nutrient: [NutritionOrderOralDietNutrient]? = nil,
		schedule: NutritionOrderOralDietSchedule? = nil,
		texture: [NutritionOrderOralDietTexture]? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.fluidConsistencyType = fluidConsistencyType
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
		case fluidConsistencyType
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
		self.fluidConsistencyType = try [CodeableConcept](from: _container, forKeyIfPresent: .fluidConsistencyType)
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
		try fluidConsistencyType?.encode(on: &_container, forKey: .fluidConsistencyType)
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
		return fluidConsistencyType == _other.fluidConsistencyType
		    && instruction == _other.instruction
		    && nutrient == _other.nutrient
		    && schedule == _other.schedule
		    && texture == _other.texture
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(fluidConsistencyType)
		hasher.combine(instruction)
		hasher.combine(nutrient)
		hasher.combine(schedule)
		hasher.combine(texture)
		hasher.combine(type)
	}
}

/**
 Required  nutrient modifications.
 
 Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required
 for the oral diet.
 */
open class NutritionOrderOralDietNutrient: BackboneElement {
	
	/// Type of nutrient that is being modified
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
 Required  texture modifications.
 
 Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
 */
open class NutritionOrderOralDietTexture: BackboneElement {
	
	/// Code to indicate how to alter the texture of the foods, e.g. pureed
	public var modifier: CodeableConcept?
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes
	public var foodType: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		foodType: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.foodType = foodType
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case foodType
		case modifier
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.foodType = try CodeableConcept(from: _container, forKeyIfPresent: .foodType)
		self.modifier = try CodeableConcept(from: _container, forKeyIfPresent: .modifier)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try foodType?.encode(on: &_container, forKey: .foodType)
		try modifier?.encode(on: &_container, forKey: .modifier)
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
		return foodType == _other.foodType
		    && modifier == _other.modifier
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(foodType)
		hasher.combine(modifier)
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
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		return instruction == _other.instruction
		    && productName == _other.productName
		    && quantity == _other.quantity
		    && schedule == _other.schedule
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
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
