//
//  MedicinalProductPharmaceutical.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical)
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
 A pharmaceutical product described in terms of its composition and dose form.
 */
open class MedicinalProductPharmaceutical: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductPharmaceutical }
	
	/// An identifier for the pharmaceutical medicinal product
	public var identifier: [Identifier]?
	
	/// The administrable dose form, after necessary reconstitution
	public var administrableDoseForm: CodeableConcept
	
	/// Todo
	public var unitOfPresentation: CodeableConcept?
	
	/// Ingredient
	public var ingredient: [Reference]?
	
	/// Accompanying device
	public var device: [Reference]?
	
	/// Characteristics e.g. a products onset of action
	public var characteristics: [MedicinalProductPharmaceuticalCharacteristics]?
	
	/// The path by which the pharmaceutical product is taken into or makes contact with the body
	public var routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration]
	
	/// Designated initializer taking all required properties
	public init(administrableDoseForm: CodeableConcept, routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration]) {
		self.administrableDoseForm = administrableDoseForm
		self.routeOfAdministration = routeOfAdministration
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							administrableDoseForm: CodeableConcept,
							characteristics: [MedicinalProductPharmaceuticalCharacteristics]? = nil,
							contained: [ResourceProxy]? = nil,
							device: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							ingredient: [Reference]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration],
							text: Narrative? = nil,
							unitOfPresentation: CodeableConcept? = nil)
	{
		self.init(administrableDoseForm: administrableDoseForm, routeOfAdministration: routeOfAdministration)
		self.characteristics = characteristics
		self.contained = contained
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administrableDoseForm
		case characteristics
		case device
		case identifier
		case ingredient
		case routeOfAdministration
		case unitOfPresentation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.administrableDoseForm = try CodeableConcept(from: _container, forKey: .administrableDoseForm)
		self.characteristics = try [MedicinalProductPharmaceuticalCharacteristics](from: _container, forKeyIfPresent: .characteristics)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.ingredient = try [Reference](from: _container, forKeyIfPresent: .ingredient)
		self.routeOfAdministration = try [MedicinalProductPharmaceuticalRouteOfAdministration](from: _container, forKey: .routeOfAdministration)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administrableDoseForm.encode(on: &_container, forKey: .administrableDoseForm)
		try characteristics?.encode(on: &_container, forKey: .characteristics)
		try device?.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try routeOfAdministration.encode(on: &_container, forKey: .routeOfAdministration)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductPharmaceutical else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return administrableDoseForm == _other.administrableDoseForm
		    && characteristics == _other.characteristics
		    && device == _other.device
		    && identifier == _other.identifier
		    && ingredient == _other.ingredient
		    && routeOfAdministration == _other.routeOfAdministration
		    && unitOfPresentation == _other.unitOfPresentation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administrableDoseForm)
		hasher.combine(characteristics)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(ingredient)
		hasher.combine(routeOfAdministration)
		hasher.combine(unitOfPresentation)
	}
}

/**
 Characteristics e.g. a products onset of action.
 */
open class MedicinalProductPharmaceuticalCharacteristics: BackboneElement {
	
	/// A coded characteristic
	public var code: CodeableConcept
	
	/// The status of characteristic e.g. assigned or pending
	public var status: CodeableConcept?
	
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
							status: CodeableConcept? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try status?.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductPharmaceuticalCharacteristics else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(status)
	}
}

/**
 The path by which the pharmaceutical product is taken into or makes contact with the body.
 */
open class MedicinalProductPharmaceuticalRouteOfAdministration: BackboneElement {
	
	/// Coded expression for the route
	public var code: CodeableConcept
	
	/// The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using
	/// a numerical value and its unit of measurement
	public var firstDose: Quantity?
	
	/// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using
	/// a numerical value and its unit of measurement
	public var maxSingleDose: Quantity?
	
	/// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be
	/// administered as per the protocol referenced in the clinical trial authorisation
	public var maxDosePerDay: Quantity?
	
	/// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical
	/// trial authorisation
	public var maxDosePerTreatmentPeriod: Ratio?
	
	/// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the
	/// protocol referenced in the clinical trial authorisation
	public var maxTreatmentPeriod: Duration?
	
	/// A species for which this route applies
	public var targetSpecies: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies]?
	
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
							targetSpecies: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies]? = nil)
	{
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
		self.targetSpecies = try [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies](from: _container, forKeyIfPresent: .targetSpecies)
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
		guard let _other = _other as? MedicinalProductPharmaceuticalRouteOfAdministration else {
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
open class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies: BackboneElement {
	
	/// Coded expression for the species
	public var code: CodeableConcept
	
	/// A species specific time during which consumption of animal product is not appropriate
	public var withdrawalPeriod: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod]?
	
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
							withdrawalPeriod: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod]? = nil)
	{
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
		self.withdrawalPeriod = try [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod](from: _container, forKeyIfPresent: .withdrawalPeriod)
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
		guard let _other = _other as? MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies else {
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
open class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod: BackboneElement {
	
	/// Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk
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
							value: Quantity)
	{
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
		guard let _other = _other as? MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod else {
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
