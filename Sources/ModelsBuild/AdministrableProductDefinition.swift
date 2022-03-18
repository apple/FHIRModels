//
//  AdministrableProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/AdministrableProductDefinition)
//  Copyright 2022 Apple Inc.
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
 A medicinal product in the final form, suitable for administration - after any mixing of multiple components.
 
 A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple
 components, dissolution etc. has been performed).
 */
open class AdministrableProductDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .administrableProductDefinition }
	
	/// An identifier for the administrable product
	public var identifier: [Identifier]?
	
	/// The status of this administrable product. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// References a product from which one or more of the constituent parts of that product can be prepared and used as
	/// described by this administrable product
	public var formOf: [Reference]?
	
	/// The dose form of the final product after necessary reconstitution or processing
	public var administrableDoseForm: CodeableConcept?
	
	/// The presentation type in which this item is given to a patient. e.g. for a spray - 'puff'
	public var unitOfPresentation: CodeableConcept?
	
	/// Indicates the specific manufactured items that are part of the 'formOf' product that are used in the preparation
	/// of this specific administrable form
	public var producedFrom: [Reference]?
	
	/// The ingredients of this administrable medicinal product. This is only needed if the ingredients are not
	/// specified either using ManufacturedItemDefiniton, or using by incoming references from the Ingredient resource
	public var ingredient: [CodeableConcept]?
	
	/// A device that is integral to the medicinal product, in effect being considered as an "ingredient" of the
	/// medicinal product
	public var device: Reference?
	
	/// Characteristics e.g. a product's onset of action
	public var property: [AdministrableProductDefinitionProperty]?
	
	/// The path by which the product is taken into or makes contact with the body
	public var routeOfAdministration: [AdministrableProductDefinitionRouteOfAdministration]
	
	/// Designated initializer taking all required properties
	public init(routeOfAdministration: [AdministrableProductDefinitionRouteOfAdministration], status: FHIRPrimitive<PublicationStatus>) {
		self.routeOfAdministration = routeOfAdministration
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		administrableDoseForm: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		device: Reference? = nil,
		`extension`: [Extension]? = nil,
		formOf: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		producedFrom: [Reference]? = nil,
		property: [AdministrableProductDefinitionProperty]? = nil,
		routeOfAdministration: [AdministrableProductDefinitionRouteOfAdministration],
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		unitOfPresentation: CodeableConcept? = nil
	) {
		self.init(routeOfAdministration: routeOfAdministration, status: status)
		self.administrableDoseForm = administrableDoseForm
		self.contained = contained
		self.device = device
		self.`extension` = `extension`
		self.formOf = formOf
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.producedFrom = producedFrom
		self.property = property
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administrableDoseForm
		case device
		case formOf
		case identifier
		case ingredient
		case producedFrom
		case property
		case routeOfAdministration
		case status; case _status
		case unitOfPresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administrableDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .administrableDoseForm)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.formOf = try [Reference](from: _container, forKeyIfPresent: .formOf)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.producedFrom = try [Reference](from: _container, forKeyIfPresent: .producedFrom)
		self.property = try [AdministrableProductDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.routeOfAdministration = try [AdministrableProductDefinitionRouteOfAdministration](from: _container, forKey: .routeOfAdministration)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administrableDoseForm?.encode(on: &_container, forKey: .administrableDoseForm)
		try device?.encode(on: &_container, forKey: .device)
		try formOf?.encode(on: &_container, forKey: .formOf)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try producedFrom?.encode(on: &_container, forKey: .producedFrom)
		try property?.encode(on: &_container, forKey: .property)
		try routeOfAdministration.encode(on: &_container, forKey: .routeOfAdministration)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdministrableProductDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administrableDoseForm == _other.administrableDoseForm
		    && device == _other.device
		    && formOf == _other.formOf
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && producedFrom == _other.producedFrom
		    && property == _other.property
		    && routeOfAdministration == _other.routeOfAdministration
		    && status == _other.status
		    && unitOfPresentation == _other.unitOfPresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administrableDoseForm)
		hasher.combine(device)
		hasher.combine(formOf)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(producedFrom)
		hasher.combine(property)
		hasher.combine(routeOfAdministration)
		hasher.combine(status)
		hasher.combine(unitOfPresentation)
	}
}

/**
 Characteristics e.g. a product's onset of action.
 */
open class AdministrableProductDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case quantity(Quantity)
	}
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// The status of characteristic e.g. assigned or pending
	public var status: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil,
		type: CodeableConcept,
		value: ValueX? = nil
	) {
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case status
		case type
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueQuantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		self.value = _t_value
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try status?.encode(on: &_container, forKey: .status)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdministrableProductDefinitionProperty else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return status == _other.status
		    && type == _other.type
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(value)
	}
}

/**
 The path by which the product is taken into or makes contact with the body.
 
 The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the
 licenced or approved route. RouteOfAdministration cannot be used when the 'formOf' product already uses
 MedicinalProductDefinition.route (and vice versa).
 */
open class AdministrableProductDefinitionRouteOfAdministration: BackboneElement {
	
	/// Coded expression for the route
	public var code: CodeableConcept
	
	/// The first dose (dose quantity) administered can be specified for the product
	public var firstDose: Quantity?
	
	/// The maximum single dose that can be administered
	public var maxSingleDose: Quantity?
	
	/// The maximum dose quantity to be administered in any one 24-h period
	public var maxDosePerDay: Quantity?
	
	/// The maximum dose per treatment period that can be administered
	public var maxDosePerTreatmentPeriod: Ratio?
	
	/// The maximum treatment period during which the product can be administered
	public var maxTreatmentPeriod: Duration?
	
	/// A species for which this route applies
	public var targetSpecies: [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		firstDose: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerDay: Quantity? = nil,
		maxDosePerTreatmentPeriod: Ratio? = nil,
		maxSingleDose: Quantity? = nil,
		maxTreatmentPeriod: Duration? = nil,
		modifierExtension: [Extension]? = nil,
		targetSpecies: [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies]? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.firstDose = firstDose
		self.id = id
		self.maxDosePerDay = maxDosePerDay
		self.maxDosePerTreatmentPeriod = maxDosePerTreatmentPeriod
		self.maxSingleDose = maxSingleDose
		self.maxTreatmentPeriod = maxTreatmentPeriod
		self.modifierExtension = modifierExtension
		self.targetSpecies = targetSpecies
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case firstDose
		case maxDosePerDay
		case maxDosePerTreatmentPeriod
		case maxSingleDose
		case maxTreatmentPeriod
		case targetSpecies
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.firstDose = try Quantity(from: _container, forKeyIfPresent: .firstDose)
		self.maxDosePerDay = try Quantity(from: _container, forKeyIfPresent: .maxDosePerDay)
		self.maxDosePerTreatmentPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerTreatmentPeriod)
		self.maxSingleDose = try Quantity(from: _container, forKeyIfPresent: .maxSingleDose)
		self.maxTreatmentPeriod = try Duration(from: _container, forKeyIfPresent: .maxTreatmentPeriod)
		self.targetSpecies = try [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies](from: _container, forKeyIfPresent: .targetSpecies)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try firstDose?.encode(on: &_container, forKey: .firstDose)
		try maxDosePerDay?.encode(on: &_container, forKey: .maxDosePerDay)
		try maxDosePerTreatmentPeriod?.encode(on: &_container, forKey: .maxDosePerTreatmentPeriod)
		try maxSingleDose?.encode(on: &_container, forKey: .maxSingleDose)
		try maxTreatmentPeriod?.encode(on: &_container, forKey: .maxTreatmentPeriod)
		try targetSpecies?.encode(on: &_container, forKey: .targetSpecies)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdministrableProductDefinitionRouteOfAdministration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && firstDose == _other.firstDose
		    && maxDosePerDay == _other.maxDosePerDay
		    && maxDosePerTreatmentPeriod == _other.maxDosePerTreatmentPeriod
		    && maxSingleDose == _other.maxSingleDose
		    && maxTreatmentPeriod == _other.maxTreatmentPeriod
		    && targetSpecies == _other.targetSpecies
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(firstDose)
		hasher.combine(maxDosePerDay)
		hasher.combine(maxDosePerTreatmentPeriod)
		hasher.combine(maxSingleDose)
		hasher.combine(maxTreatmentPeriod)
		hasher.combine(targetSpecies)
	}
}

/**
 A species for which this route applies.
 */
open class AdministrableProductDefinitionRouteOfAdministrationTargetSpecies: BackboneElement {
	
	/// Coded expression for the species
	public var code: CodeableConcept
	
	/// A species specific time during which consumption of animal product is not appropriate
	public var withdrawalPeriod: [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		withdrawalPeriod: [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod]? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.withdrawalPeriod = withdrawalPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case withdrawalPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.withdrawalPeriod = try [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod](from: _container, forKeyIfPresent: .withdrawalPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try withdrawalPeriod?.encode(on: &_container, forKey: .withdrawalPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdministrableProductDefinitionRouteOfAdministrationTargetSpecies else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && withdrawalPeriod == _other.withdrawalPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(withdrawalPeriod)
	}
}

/**
 A species specific time during which consumption of animal product is not appropriate.
 */
open class AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod: BackboneElement {
	
	/// The type of tissue for which the withdrawal period applies, e.g. meat, milk
	public var tissue: CodeableConcept
	
	/// A value for the time
	public var value: Quantity
	
	/// Extra information about the withdrawal period
	public var supportingInformation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(tissue: CodeableConcept, value: Quantity) {
		self.tissue = tissue
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		supportingInformation: FHIRPrimitive<FHIRString>? = nil,
		tissue: CodeableConcept,
		value: Quantity
	) {
		self.init(tissue: tissue, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.supportingInformation = supportingInformation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case supportingInformation; case _supportingInformation
		case tissue
		case value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.supportingInformation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .supportingInformation, auxiliaryKey: ._supportingInformation)
		self.tissue = try CodeableConcept(from: _container, forKey: .tissue)
		self.value = try Quantity(from: _container, forKey: .value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation, auxiliaryKey: ._supportingInformation)
		try tissue.encode(on: &_container, forKey: .tissue)
		try value.encode(on: &_container, forKey: .value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return supportingInformation == _other.supportingInformation
		    && tissue == _other.tissue
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(supportingInformation)
		hasher.combine(tissue)
		hasher.combine(value)
	}
}
