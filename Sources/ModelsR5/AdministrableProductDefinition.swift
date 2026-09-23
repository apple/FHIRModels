//
//  AdministrableProductDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/AdministrableProductDefinition)
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
 A medicinal product in the final form, suitable for administration - after any mixing of multiple components.
 
 A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple
 components, dissolution etc. has been performed).
 */
public struct AdministrableProductDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .administrableProductDefinition
	
	/// The dose form of the final product after necessary reconstitution or processing
	public var administrableDoseForm: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// A general description of the product, when in its final form, suitable for administration e.g. effervescent blue
	/// liquid, to be swallowed
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A device that is integral to the medicinal product, in effect being considered as an "ingredient" of the
	/// medicinal product
	public var device: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// References a product from which one or more of the constituent parts of that product can be prepared and used as
	/// described by this administrable product
	public var formOf: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the administrable product
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The ingredients of this administrable medicinal product. This is only needed if the ingredients are not
	/// specified either using ManufacturedItemDefiniton, or using by incoming references from the Ingredient resource
	public var ingredient: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates the specific manufactured items that are part of the 'formOf' product that are used in the preparation
	/// of this specific administrable form
	public var producedFrom: [Reference]?
	
	/// Characteristics e.g. a product's onset of action
	public var property: [AdministrableProductDefinitionProperty]?
	
	/// The path by which the product is taken into or makes contact with the body
	public var routeOfAdministration: [AdministrableProductDefinitionRouteOfAdministration]
	
	/// The status of this administrable product. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The presentation type in which this item is given to a patient. e.g. for a spray - 'puff'
	public var unitOfPresentation: CodeableConcept?
	
	/// Designated initializer
	public init(
		administrableDoseForm: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
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
		self.administrableDoseForm = administrableDoseForm
		self.contained = contained
		self.description_fhir = description_fhir
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
		self.routeOfAdministration = routeOfAdministration
		self.status = status
		self.text = text
		self.unitOfPresentation = unitOfPresentation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case administrableDoseForm
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case device
		case `extension` = "extension"
		case formOf
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case ingredient
		case language; case _language
		case meta
		case modifierExtension
		case producedFrom
		case property
		case routeOfAdministration
		case status; case _status
		case text
		case unitOfPresentation
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.administrableDoseForm = try CodeableConcept(from: _container, forKeyIfPresent: .administrableDoseForm)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.formOf = try [Reference](from: _container, forKeyIfPresent: .formOf)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [CodeableConcept](from: _container, forKeyIfPresent: .ingredient)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.producedFrom = try [Reference](from: _container, forKeyIfPresent: .producedFrom)
		self.property = try [AdministrableProductDefinitionProperty](from: _container, forKeyIfPresent: .property)
		self.routeOfAdministration = try [AdministrableProductDefinitionRouteOfAdministration](from: _container, forKey: .routeOfAdministration)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.unitOfPresentation = try CodeableConcept(from: _container, forKeyIfPresent: .unitOfPresentation)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try administrableDoseForm?.encode(on: &_container, forKey: .administrableDoseForm)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try device?.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try formOf?.encode(on: &_container, forKey: .formOf)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try producedFrom?.encode(on: &_container, forKey: .producedFrom)
		try property?.encode(on: &_container, forKey: .property)
		try routeOfAdministration.encode(on: &_container, forKey: .routeOfAdministration)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try unitOfPresentation?.encode(on: &_container, forKey: .unitOfPresentation)
	}
}

/**
 Characteristics e.g. a product's onset of action.
 */
public struct AdministrableProductDefinitionProperty: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		case date(FHIRPrimitive<FHIRDate>)
		case markdown(FHIRPrimitive<FHIRString>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The status of characteristic e.g. assigned or pending
	public var status: CodeableConcept?
	
	/// A code expressing the type of characteristic
	public var type: CodeableConcept
	
	/// A value for the characteristic
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil,
		type: CodeableConcept,
		value: ValueX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.status = status
		self.type = type
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case status
		case type
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueDate; case _valueDate
		case valueMarkdown; case _valueMarkdown
		case valueQuantity
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try status?.encode(on: &_container, forKey: .status)
		try type.encode(on: &_container, forKey: .type)
		if let _enum = value {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .markdown(let _value):
			try _value.encode(on: &_container, forKey: .valueMarkdown, auxiliaryKey: ._valueMarkdown)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueMarkdown = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueMarkdown, auxiliaryKey: ._valueMarkdown) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueMarkdown, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .markdown(valueMarkdown)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		return _t_value
	}
}

/**
 The path by which the product is taken into or makes contact with the body.
 
 The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the
 licenced or approved route. RouteOfAdministration cannot be used when the 'formOf' product already uses
 MedicinalProductDefinition.route (and vice versa).
 */
public struct AdministrableProductDefinitionRouteOfAdministration: BackboneElement {
	
	/// Coded expression for the route
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The first dose (dose quantity) administered can be specified for the product
	public var firstDose: Quantity?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The maximum dose quantity to be administered in any one 24-h period
	public var maxDosePerDay: Quantity?
	
	/// The maximum dose per treatment period that can be administered
	public var maxDosePerTreatmentPeriod: Ratio?
	
	/// The maximum single dose that can be administered
	public var maxSingleDose: Quantity?
	
	/// The maximum treatment period during which the product can be administered
	public var maxTreatmentPeriod: Duration?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A species for which this route applies
	public var targetSpecies: [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies]?
	
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
		targetSpecies: [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies]? = nil
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
		self.targetSpecies = try [AdministrableProductDefinitionRouteOfAdministrationTargetSpecies](from: _container, forKeyIfPresent: .targetSpecies)
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
public struct AdministrableProductDefinitionRouteOfAdministrationTargetSpecies: BackboneElement {
	
	/// Coded expression for the species
	public var code: CodeableConcept
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A species specific time during which consumption of animal product is not appropriate
	public var withdrawalPeriod: [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod]?
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		withdrawalPeriod: [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod]? = nil
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
		self.withdrawalPeriod = try [AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod](from: _container, forKeyIfPresent: .withdrawalPeriod)
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
public struct AdministrableProductDefinitionRouteOfAdministrationTargetSpeciesWithdrawalPeriod: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Extra information about the withdrawal period
	public var supportingInformation: FHIRPrimitive<FHIRString>?
	
	/// The type of tissue for which the withdrawal period applies, e.g. meat, milk
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
