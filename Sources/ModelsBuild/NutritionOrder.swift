//
//  NutritionOrder.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/NutritionOrder)
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
 Diet, formula or nutritional supplement request.
 
 A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to an individual or group.
 */
public struct NutritionOrder: DomainResource {
	
	public static let resourceType: ResourceType = .nutritionOrder
	
	/// Modular additive to add to the oral diet, supplement, and/or enteral feeding
	public var additive: [NutritionOrderAdditive]?
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// What this order fulfills
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Date and time the nutrition order was requested
	public var dateTime: FHIRPrimitive<DateTime>
	
	/// The encounter associated with this nutrition order
	public var encounter: Reference?
	
	/// Enteral formula product
	public var enteralFormula: NutritionOrderEnteralFormula?
	
	/// Food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Composite Request ID
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Indicates the level of authority/intentionality associated with the NutrionOrder and where the request fits into
	/// the workflow chain.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Capture if patient is permitted to consume food from outside of current setting brought by the patient, family,
	/// and/or caregiver
	public var outsideFoodAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Who is intended to perform the administration of the nutrition order
	public var performer: [CodeableReference]?
	
	/// Indicates how quickly the Nutrition Order should be addressed with respect to other        requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Who ordered the diet, formula or nutritional supplement
	public var requester: Reference?
	
	/// The workflow status of the nutrition order/request.
	public var status: FHIRPrimitive<RequestStatus>
	
	/// Who requires the diet, formula or nutritional supplement
	public var subject: Reference
	
	/// Supplement components
	public var supplement: [NutritionOrderSupplement]?
	
	/// Information to support fulfilling of the nutrition order
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		oralDiet: NutritionOrderOralDiet? = nil,
		outsideFoodAllowed: FHIRPrimitive<FHIRBool>? = nil,
		performer: [CodeableReference]? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<RequestStatus>,
		subject: Reference,
		supplement: [NutritionOrderSupplement]? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.additive = additive
		self.allergyIntolerance = allergyIntolerance
		self.basedOn = basedOn
		self.contained = contained
		self.dateTime = dateTime
		self.encounter = encounter
		self.enteralFormula = enteralFormula
		self.excludeFoodModifier = excludeFoodModifier
		self.`extension` = `extension`
		self.foodPreferenceModifier = foodPreferenceModifier
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.intent = intent
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.oralDiet = oralDiet
		self.outsideFoodAllowed = outsideFoodAllowed
		self.performer = performer
		self.priority = priority
		self.requester = requester
		self.status = status
		self.subject = subject
		self.supplement = supplement
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case additive
		case allergyIntolerance
		case basedOn
		case contained
		case dateTime; case _dateTime
		case encounter
		case enteralFormula
		case excludeFoodModifier
		case `extension` = "extension"
		case foodPreferenceModifier
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case intent; case _intent
		case language; case _language
		case meta
		case modifierExtension
		case note
		case oralDiet
		case outsideFoodAllowed; case _outsideFoodAllowed
		case performer
		case priority; case _priority
		case requester
		case status; case _status
		case subject
		case supplement
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [NutritionOrderAdditive](from: _container, forKeyIfPresent: .additive)
		self.allergyIntolerance = try [Reference](from: _container, forKeyIfPresent: .allergyIntolerance)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.enteralFormula = try NutritionOrderEnteralFormula(from: _container, forKeyIfPresent: .enteralFormula)
		self.excludeFoodModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .excludeFoodModifier)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.foodPreferenceModifier = try [CodeableConcept](from: _container, forKeyIfPresent: .foodPreferenceModifier)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.oralDiet = try NutritionOrderOralDiet(from: _container, forKeyIfPresent: .oralDiet)
		self.outsideFoodAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .outsideFoodAllowed, auxiliaryKey: ._outsideFoodAllowed)
		self.performer = try [CodeableReference](from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supplement = try [NutritionOrderSupplement](from: _container, forKeyIfPresent: .supplement)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try allergyIntolerance?.encode(on: &_container, forKey: .allergyIntolerance)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try dateTime.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enteralFormula?.encode(on: &_container, forKey: .enteralFormula)
		try excludeFoodModifier?.encode(on: &_container, forKey: .excludeFoodModifier)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try foodPreferenceModifier?.encode(on: &_container, forKey: .foodPreferenceModifier)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try oralDiet?.encode(on: &_container, forKey: .oralDiet)
		try outsideFoodAllowed?.encode(on: &_container, forKey: .outsideFoodAllowed, auxiliaryKey: ._outsideFoodAllowed)
		try performer?.encode(on: &_container, forKey: .performer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try requester?.encode(on: &_container, forKey: .requester)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supplement?.encode(on: &_container, forKey: .supplement)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Modular additive to add to the oral diet, supplement, and/or enteral feeding.
 
 Indicates modular components to be provided in addition or mixed with the oral diet, supplement, and/or enteral
 feeding.
 */
public struct NutritionOrderAdditive: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of modular component to add to the oral diet, supplement, and/or enteral feeding
	public var modularType: CodeableReference?
	
	/// Product or brand name of the modular additive
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Amount of additive to be given or mixed in with the oral diet, supplement, and/or enteral feeding
	public var quantity: Quantity?
	
	/// How the additive should enter the patient's gastrointestinal tract
	public var routeOfAdministration: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		modularType: CodeableReference? = nil,
		productName: FHIRPrimitive<FHIRString>? = nil,
		quantity: Quantity? = nil,
		routeOfAdministration: [CodeableConcept]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.modularType = modularType
		self.productName = productName
		self.quantity = quantity
		self.routeOfAdministration = routeOfAdministration
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case modularType
		case productName; case _productName
		case quantity
		case routeOfAdministration
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.modularType = try CodeableReference(from: _container, forKeyIfPresent: .modularType)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.routeOfAdministration = try [CodeableConcept](from: _container, forKeyIfPresent: .routeOfAdministration)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try modularType?.encode(on: &_container, forKey: .modularType)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try routeOfAdministration?.encode(on: &_container, forKey: .routeOfAdministration)
	}
}

/**
 Enteral formula product.
 
 Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to
 the oral cavity.
 */
public struct NutritionOrderEnteralFormula: BackboneElement {
	
	/// All possible types for "deliveryDevice[x]"
	public enum DeliveryDeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// Formula feeding instruction as structured data
	public var administration: [NutritionOrderEnteralFormulaAdministration]?
	
	/// Formula feeding instructions expressed as text
	public var administrationInstruction: FHIRPrimitive<FHIRString>?
	
	/// Amount of energy per specified volume of feeding that is required
	public var caloricDensity: Quantity?
	
	/// Intended type of device for the enteral feeding administration
	/// One of `deliveryDevice[x]`
	public var deliveryDevice: DeliveryDeviceX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Upper limit on formula feeding volume per unit of time
	public var maxVolumeToAdminister: Quantity?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Product or brand name of the enteral feeding
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// How the enteral feeding should enter the patient's gastrointestinal tract
	public var routeOfAdministration: [CodeableConcept]?
	
	/// Type of patient enteral feeding
	public var type: CodeableReference?
	
	/// Designated initializer
	public init(
		administration: [NutritionOrderEnteralFormulaAdministration]? = nil,
		administrationInstruction: FHIRPrimitive<FHIRString>? = nil,
		caloricDensity: Quantity? = nil,
		deliveryDevice: DeliveryDeviceX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxVolumeToAdminister: Quantity? = nil,
		modifierExtension: [Extension]? = nil,
		productName: FHIRPrimitive<FHIRString>? = nil,
		routeOfAdministration: [CodeableConcept]? = nil,
		type: CodeableReference? = nil
	) {
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
		case deliveryDeviceCanonical; case _deliveryDeviceCanonical
		case deliveryDeviceCodeableConcept
		case `extension` = "extension"
		case id; case _id
		case maxVolumeToAdminister
		case modifierExtension
		case productName; case _productName
		case routeOfAdministration
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administration = try [NutritionOrderEnteralFormulaAdministration](from: _container, forKeyIfPresent: .administration)
		self.administrationInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.deliveryDevice = try Self._decodeDeliveryDevice(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxVolumeToAdminister = try Quantity(from: _container, forKeyIfPresent: .maxVolumeToAdminister)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.routeOfAdministration = try [CodeableConcept](from: _container, forKeyIfPresent: .routeOfAdministration)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try administration?.encode(on: &_container, forKey: .administration)
		try administrationInstruction?.encode(on: &_container, forKey: .administrationInstruction, auxiliaryKey: ._administrationInstruction)
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		if let _enum = deliveryDevice {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .deliveryDeviceCanonical, auxiliaryKey: ._deliveryDeviceCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .deliveryDeviceCodeableConcept)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxVolumeToAdminister?.encode(on: &_container, forKey: .maxVolumeToAdminister)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try routeOfAdministration?.encode(on: &_container, forKey: .routeOfAdministration)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDeliveryDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeliveryDeviceX? {
		var _t_deliveryDevice: DeliveryDeviceX? = nil
		if let deliveryDeviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .deliveryDeviceCanonical, auxiliaryKey: ._deliveryDeviceCanonical) {
			_t_deliveryDevice = .canonical(deliveryDeviceCanonical)
		}
		if let deliveryDeviceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .deliveryDeviceCodeableConcept) {
			if _t_deliveryDevice != nil {
				throw DecodingError.dataCorruptedError(forKey: .deliveryDeviceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"deliveryDevice\"")
			}
			_t_deliveryDevice = .codeableConcept(deliveryDeviceCodeableConcept)
		}
		return _t_deliveryDevice
	}
}

/**
 Formula feeding instruction as structured data.
 
 Formula feeding administration instructions as structured data.  This repeating structure allows for changing the
 administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an
 instruction to increase the rate of continuous feeding every 2 hours.
 */
public struct NutritionOrderEnteralFormulaAdministration: BackboneElement {
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The volume of formula feeding to provide
	public var quantity: Quantity?
	
	/// Speed with which the formula feeding is provided per period of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Scheduling information for enteral feeding products
	public var schedule: NutritionOrderEnteralFormulaAdministrationSchedule?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil,
		rate: RateX? = nil,
		schedule: NutritionOrderEnteralFormulaAdministrationSchedule? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.quantity = quantity
		self.rate = rate
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case quantity
		case rateQuantity
		case rateRatio
		case schedule
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.rate = try Self._decodeRate(from: _container)
		self.schedule = try NutritionOrderEnteralFormulaAdministrationSchedule(from: _container, forKeyIfPresent: .schedule)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
 Scheduling information for enteral feeding products.
 
 Schedule information for an enteral feeding.
 */
public struct NutritionOrderEnteralFormulaAdministrationSchedule: BackboneElement {
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Scheduled frequency of enteral feeding
	public var timing: [Timing]?
	
	/// Designated initializer
	public init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try timing?.encode(on: &_container, forKey: .timing)
	}
}

/**
 Oral diet components.
 
 Diet given orally that may include texture modification, such as International Dysphagia Diet Standardisation
 Initiative Framework - Slightly Thick Level 1 drinks and Minced and International Dysphagia Diet Standardisation
 Initiative Framework - Minced and Moist Level 5 food as well as, for example, Decreased potassium diet (ie, nutrient
 modification), Halal diet (ie, cultural modification), and/or Low microbial diet (eg, other modification).
 */
public struct NutritionOrderOralDiet: BackboneElement {
	
	/// Amount of energy per specified volume of oral diet
	public var caloricDensity: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instructions or additional information about the oral diet
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The nutrient that is modified and the quantity in the diet
	public var nutrient: [NutritionOrderOralDietNutrient]?
	
	/// Scheduling information for oral diets
	public var schedule: NutritionOrderOralDietSchedule?
	
	/// Texture modifications in addition to the oral diet type
	public var texture: [NutritionOrderOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that can be consumed orally
	public var type: [CodeableConcept]?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case instruction; case _instruction
		case modifierExtension
		case nutrient
		case schedule
		case texture
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.nutrient = try [NutritionOrderOralDietNutrient](from: _container, forKeyIfPresent: .nutrient)
		self.schedule = try NutritionOrderOralDietSchedule(from: _container, forKeyIfPresent: .schedule)
		self.texture = try [NutritionOrderOralDietTexture](from: _container, forKeyIfPresent: .texture)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try nutrient?.encode(on: &_container, forKey: .nutrient)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try texture?.encode(on: &_container, forKey: .texture)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The nutrient that is modified and the quantity in the diet.
 
 Defines the quantity and the nutrient modified (for example carbohydrate, fiber or sodium) in the oral diet.
 */
public struct NutritionOrderOralDietNutrient: BackboneElement {
	
	/// Quantity of the specified nutrient
	public var amount: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Nutrient modified in the oral diet type
	public var modifier: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: Quantity? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount
		case `extension` = "extension"
		case id; case _id
		case modifier
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try Quantity(from: _container, forKeyIfPresent: .amount)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try CodeableConcept(from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount?.encode(on: &_container, forKey: .amount)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Scheduling information for oral diets.
 
 Schedule information for an oral diet.
 */
public struct NutritionOrderOralDietSchedule: BackboneElement {
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Scheduled frequency of diet
	public var timing: [Timing]?
	
	/// Designated initializer
	public init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try timing?.encode(on: &_container, forKey: .timing)
	}
}

/**
 Texture modifications in addition to the oral diet type.
 
 Class that describes any texture modifications in addition to the oral diet type required for the patient to safely
 consume various types of foods (i.e. solid and/or liquid).
 */
public struct NutritionOrderOralDietTexture: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Food (i.e. solid and/or liquid) texture modifications in addition to those in the oral diet type
	public var modifier: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Food (i.e. solid and/or liquid) types that undergo texture alteration
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifier
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try CodeableConcept(from: _container, forKeyIfPresent: .modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Supplement components.
 
 Oral nutritional products given in order to add further nutritional value to the patient's diet.
 */
public struct NutritionOrderSupplement: BackboneElement {
	
	/// Amount of energy per specified volume of supplement that is required
	public var caloricDensity: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instructions or additional information about the oral supplement
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Product or brand name of the nutritional supplement
	public var productName: FHIRPrimitive<FHIRString>?
	
	/// Amount of the nutritional supplement
	public var quantity: Quantity?
	
	/// Scheduling information for supplements
	public var schedule: NutritionOrderSupplementSchedule?
	
	/// Type of supplement product requested
	public var type: CodeableReference?
	
	/// Designated initializer
	public init(
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
		case `extension` = "extension"
		case id; case _id
		case instruction; case _instruction
		case modifierExtension
		case productName; case _productName
		case quantity
		case schedule
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.caloricDensity = try Quantity(from: _container, forKeyIfPresent: .caloricDensity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.productName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productName, auxiliaryKey: ._productName)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.schedule = try NutritionOrderSupplementSchedule(from: _container, forKeyIfPresent: .schedule)
		self.type = try CodeableReference(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try caloricDensity?.encode(on: &_container, forKey: .caloricDensity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try productName?.encode(on: &_container, forKey: .productName, auxiliaryKey: ._productName)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Scheduling information for supplements.
 
 Schedule information for a supplement.
 */
public struct NutritionOrderSupplementSchedule: BackboneElement {
	
	/// Take 'as needed'
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Take 'as needed' for x
	public var asNeededFor: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Scheduled frequency of supplement
	public var timing: [Timing]?
	
	/// Designated initializer
	public init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		timing: [Timing]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.timing = try [Timing](from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try timing?.encode(on: &_container, forKey: .timing)
	}
}
