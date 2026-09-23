//
//  MedicinalProductPharmaceutical.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical)
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
 A pharmaceutical product described in terms of its composition and dose form.
 */
public struct MedicinalProductPharmaceutical: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductPharmaceutical
	
	/// The administrable dose form, after necessary reconstitution
	public var administrableDoseForm: CodeableConcept
	
	/// Characteristics e.g. a products onset of action
	public var characteristics: [MedicinalProductPharmaceuticalCharacteristics]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Accompanying device
	public var device: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the pharmaceutical medicinal product
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Ingredient
	public var ingredient: [Reference]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The path by which the pharmaceutical product is taken into or makes contact with the body
	public var routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration]
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Todo
	public var unitOfPresentation: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		unitOfPresentation: CodeableConcept? = nil
	) {
		self.administrableDoseForm = administrableDoseForm
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
		self.routeOfAdministration = routeOfAdministration
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case administrableDoseForm
		case characteristics
		case contained
		case device
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case ingredient
		case language; case _language
		case meta
		case modifierExtension
		case routeOfAdministration
		case text
		case unitOfPresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administrableDoseForm = try CodeableConcept(from: _container, forKey: .administrableDoseForm)
		self.characteristics = try [MedicinalProductPharmaceuticalCharacteristics](from: _container, forKeyIfPresent: .characteristics)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [Reference](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.routeOfAdministration = try [MedicinalProductPharmaceuticalRouteOfAdministration](from: _container, forKey: .routeOfAdministration)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try administrableDoseForm.encode(on: &_container, forKey: .administrableDoseForm)
		try characteristics?.encode(on: &_container, forKey: .characteristics)
		try contained?.encode(on: &_container, forKey: .contained)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try routeOfAdministration.encode(on: &_container, forKey: .routeOfAdministration)
		try text?.encode(on: &_container, forKey: .text)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
	}
}

/**
 Characteristics e.g. a products onset of action.
 */
public struct MedicinalProductPharmaceuticalCharacteristics: BackboneElement {
	
	/// A coded characteristic
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The status of characteristic e.g. assigned or pending
	public var status: CodeableConcept?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try status?.encode(on: &_container, forKey: .status)
	}
}

/**
 The path by which the pharmaceutical product is taken into or makes contact with the body.
 */
public struct MedicinalProductPharmaceuticalRouteOfAdministration: BackboneElement {
	
	/// Coded expression for the route
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using
	/// a numerical value and its unit of measurement
	public var firstDose: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be
	/// administered as per the protocol referenced in the clinical trial authorisation
	public var maxDosePerDay: Quantity?
	
	/// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical
	/// trial authorisation
	public var maxDosePerTreatmentPeriod: Ratio?
	
	/// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using
	/// a numerical value and its unit of measurement
	public var maxSingleDose: Quantity?
	
	/// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the
	/// protocol referenced in the clinical trial authorisation
	public var maxTreatmentPeriod: Duration?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A species for which this route applies
	public var targetSpecies: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		firstDose: Quantity? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerDay: Quantity? = nil,
		maxDosePerTreatmentPeriod: Ratio? = nil,
		maxSingleDose: Quantity? = nil,
		maxTreatmentPeriod: Duration? = nil,
		modifierExtension: [Extension]? = nil,
		targetSpecies: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies]? = nil
	) {
		self.code = code
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
		case `extension` = "extension"
		case firstDose
		case id; case _id
		case maxDosePerDay
		case maxDosePerTreatmentPeriod
		case maxSingleDose
		case maxTreatmentPeriod
		case modifierExtension
		case targetSpecies
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.firstDose = try Quantity(from: _container, forKeyIfPresent: .firstDose)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDosePerDay = try Quantity(from: _container, forKeyIfPresent: .maxDosePerDay)
		self.maxDosePerTreatmentPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerTreatmentPeriod)
		self.maxSingleDose = try Quantity(from: _container, forKeyIfPresent: .maxSingleDose)
		self.maxTreatmentPeriod = try Duration(from: _container, forKeyIfPresent: .maxTreatmentPeriod)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.targetSpecies = try [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies](from: _container, forKeyIfPresent: .targetSpecies)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try firstDose?.encode(on: &_container, forKey: .firstDose)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDosePerDay?.encode(on: &_container, forKey: .maxDosePerDay)
		try maxDosePerTreatmentPeriod?.encode(on: &_container, forKey: .maxDosePerTreatmentPeriod)
		try maxSingleDose?.encode(on: &_container, forKey: .maxSingleDose)
		try maxTreatmentPeriod?.encode(on: &_container, forKey: .maxTreatmentPeriod)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try targetSpecies?.encode(on: &_container, forKey: .targetSpecies)
	}
}

/**
 A species for which this route applies.
 */
public struct MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies: BackboneElement {
	
	/// Coded expression for the species
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A species specific time during which consumption of animal product is not appropriate
	public var withdrawalPeriod: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		withdrawalPeriod: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod]? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.withdrawalPeriod = withdrawalPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case withdrawalPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.withdrawalPeriod = try [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod](from: _container, forKeyIfPresent: .withdrawalPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try withdrawalPeriod?.encode(on: &_container, forKey: .withdrawalPeriod)
	}
}

/**
 A species specific time during which consumption of animal product is not appropriate.
 */
public struct MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Extra information about the withdrawal period
	public var supportingInformation: FHIRPrimitive<FHIRString>?
	
	/// Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk
	public var tissue: CodeableConcept
	
	/// A value for the time
	public var value: Quantity
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		supportingInformation: FHIRPrimitive<FHIRString>? = nil,
		tissue: CodeableConcept,
		value: Quantity
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.supportingInformation = supportingInformation
		self.tissue = tissue
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case supportingInformation; case _supportingInformation
		case tissue
		case value
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.supportingInformation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .supportingInformation, auxiliaryKey: ._supportingInformation)
		self.tissue = try CodeableConcept(from: _container, forKey: .tissue)
		self.value = try Quantity(from: _container, forKey: .value)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation, auxiliaryKey: ._supportingInformation)
		try tissue.encode(on: &_container, forKey: .tissue)
		try value.encode(on: &_container, forKey: .value)
	}
}
