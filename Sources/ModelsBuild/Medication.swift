//
//  Medication.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Medication)
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
 Definition of a Medication.
 
 This resource is primarily used for the identification and definition of a medication, including ingredients, for the
 purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication
 use.
 */
public struct Medication: DomainResource {
	
	public static let resourceType: ResourceType = .medication
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Formal definition of the medication
	public var definition: Reference?
	
	/// powder | tablets | capsule +
	public var doseForm: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this medication
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Components of a medication. These can be ingredient substances or other medications, in the case of combination
	/// packaged medications
	public var ingredient: [MedicationIngredient]?
	
	/// Details about packaged medications
	public var instance: MedicationInstance?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Organization that has authorization to market medication
	public var marketingAuthorizationHolder: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// When the code does not specify the package size, this backbone element can be used to specify the overall amount
	/// of medication in the package
	public var packageSize: MedicationPackageSize?
	
	/// A code to indicate if the medication is in active use.
	public var status: FHIRPrimitive<MedicationStatusCodes>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		definition: Reference? = nil,
		doseForm: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		ingredient: [MedicationIngredient]? = nil,
		instance: MedicationInstance? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		marketingAuthorizationHolder: Reference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		packageSize: MedicationPackageSize? = nil,
		status: FHIRPrimitive<MedicationStatusCodes>? = nil,
		text: Narrative? = nil
	) {
		self.code = code
		self.contained = contained
		self.definition = definition
		self.doseForm = doseForm
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.ingredient = ingredient
		self.instance = instance
		self.language = language
		self.marketingAuthorizationHolder = marketingAuthorizationHolder
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.packageSize = packageSize
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case code
		case contained
		case definition
		case doseForm
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case ingredient
		case instance
		case language; case _language
		case marketingAuthorizationHolder
		case meta
		case modifierExtension
		case packageSize
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.definition = try Reference(from: _container, forKeyIfPresent: .definition)
		self.doseForm = try CodeableConcept(from: _container, forKeyIfPresent: .doseForm)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.ingredient = try [MedicationIngredient](from: _container, forKeyIfPresent: .ingredient)
		self.instance = try MedicationInstance(from: _container, forKeyIfPresent: .instance)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.marketingAuthorizationHolder = try Reference(from: _container, forKeyIfPresent: .marketingAuthorizationHolder)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.packageSize = try MedicationPackageSize(from: _container, forKeyIfPresent: .packageSize)
		self.status = try FHIRPrimitive<MedicationStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try definition?.encode(on: &_container, forKey: .definition)
		try doseForm?.encode(on: &_container, forKey: .doseForm)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try ingredient?.encode(on: &_container, forKey: .ingredient)
		try instance?.encode(on: &_container, forKey: .instance)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try marketingAuthorizationHolder?.encode(on: &_container, forKey: .marketingAuthorizationHolder)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try packageSize?.encode(on: &_container, forKey: .packageSize)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Components of a medication. These can be ingredient substances or other medications, in the case of combination
 packaged medications.
 
 Identifies a particular constituent of interest in the product.
 */
public struct MedicationIngredient: BackboneElement {
	
	/// All possible types for "strength[x]"
	public enum StrengthX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case ratio(Ratio)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Active ingredient indicator
	public var isActive: FHIRPrimitive<FHIRBool>?
	
	/// The specific substance or medication that is the ingredient
	public var item: CodeableReference
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// A code that defines the type of ingredient, active, base, etc.
	public var role: CodeableConcept?
	
	/// Quantity of ingredient present
	/// One of `strength[x]`
	public var strength: StrengthX?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isActive: FHIRPrimitive<FHIRBool>? = nil,
		item: CodeableReference,
		modifierExtension: [Extension]? = nil,
		role: CodeableConcept? = nil,
		strength: StrengthX? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.isActive = isActive
		self.item = item
		self.modifierExtension = modifierExtension
		self.role = role
		self.strength = strength
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case isActive; case _isActive
		case item
		case modifierExtension
		case role
		case strengthCodeableConcept
		case strengthQuantity
		case strengthRatio
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isActive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isActive, auxiliaryKey: ._isActive)
		self.item = try CodeableReference(from: _container, forKey: .item)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.strength = try Self._decodeStrength(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isActive?.encode(on: &_container, forKey: .isActive, auxiliaryKey: ._isActive)
		try item.encode(on: &_container, forKey: .item)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
		if let _enum = strength {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .strengthCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .strengthQuantity)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .strengthRatio)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeStrength(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> StrengthX? {
		var _t_strength: StrengthX? = nil
		if let strengthCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .strengthCodeableConcept) {
			_t_strength = .codeableConcept(strengthCodeableConcept)
		}
		if let strengthQuantity = try Quantity(from: _container, forKeyIfPresent: .strengthQuantity) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthQuantity, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .quantity(strengthQuantity)
		}
		if let strengthRatio = try Ratio(from: _container, forKeyIfPresent: .strengthRatio) {
			if _t_strength != nil {
				throw DecodingError.dataCorruptedError(forKey: .strengthRatio, in: _container, debugDescription: "More than one value provided for \"strength\"")
			}
			_t_strength = .ratio(strengthRatio)
		}
		return _t_strength
	}
}

/**
 Details about packaged medications.
 
 Information that only applies to packages (not products).
 */
public struct MedicationInstance: BackboneElement {
	
	/// When instance will expire
	public var expirationDate: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for the physical instance, typically a serial number
	public var identifier: [Identifier]?
	
	/// Identifier assigned to batch
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		expirationDate: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.lotNumber = lotNumber
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case id; case _id
		case identifier
		case lotNumber; case _lotNumber
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expirationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 When the code does not specify the package size, this backbone element can be used to specify the overall amount of
 medication in the package.
 */
public struct MedicationPackageSize: BackboneElement {
	
	/// The amount per each item
	public var amountPerItem: Ratio?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The number of items in the package that are represented by the code
	public var numberOfItems: Quantity?
	
	/// Designated initializer
	public init(
		amountPerItem: Ratio? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		numberOfItems: Quantity? = nil
	) {
		self.amountPerItem = amountPerItem
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.numberOfItems = numberOfItems
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amountPerItem
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case numberOfItems
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amountPerItem = try Ratio(from: _container, forKeyIfPresent: .amountPerItem)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.numberOfItems = try Quantity(from: _container, forKeyIfPresent: .numberOfItems)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amountPerItem?.encode(on: &_container, forKey: .amountPerItem)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try numberOfItems?.encode(on: &_container, forKey: .numberOfItems)
	}
}
