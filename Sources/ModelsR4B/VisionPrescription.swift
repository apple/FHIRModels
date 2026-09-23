//
//  VisionPrescription.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/VisionPrescription)
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
 Prescription for vision correction products for a patient.
 
 An authorization for the provision of glasses and/or contact lenses to a patient.
 */
public struct VisionPrescription: DomainResource {
	
	public static let resourceType: ResourceType = .visionPrescription
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for vision prescription
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Vision lens authorization
	public var lensSpecification: [VisionPrescriptionLensSpecification]
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who prescription is for
	public var patient: Reference
	
	/// Who authorized the vision prescription
	public var prescriber: Reference
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>,
		dateWritten: FHIRPrimitive<DateTime>,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lensSpecification: [VisionPrescriptionLensSpecification],
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference,
		prescriber: Reference,
		status: FHIRPrimitive<FinancialResourceStatusCodes>,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.created = created
		self.dateWritten = dateWritten
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.lensSpecification = lensSpecification
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.prescriber = prescriber
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case created; case _created
		case dateWritten; case _dateWritten
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case lensSpecification
		case meta
		case modifierExtension
		case patient
		case prescriber
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lensSpecification = try [VisionPrescriptionLensSpecification](from: _container, forKey: .lensSpecification)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.prescriber = try Reference(from: _container, forKey: .prescriber)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try dateWritten.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lensSpecification.encode(on: &_container, forKey: .lensSpecification)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient.encode(on: &_container, forKey: .patient)
		try prescriber.encode(on: &_container, forKey: .prescriber)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Vision lens authorization.
 
 Contain the details of  the individual lens specifications and serves as the authorization for the fullfillment by
 certified professionals.
 */
public struct VisionPrescriptionLensSpecification: BackboneElement {
	
	/// Added power for multifocal levels
	public var add: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens meridian which contain no power for astigmatism
	public var axis: FHIRPrimitive<FHIRInteger>?
	
	/// Contact lens back curvature
	public var backCurve: FHIRPrimitive<FHIRDecimal>?
	
	/// Brand required
	public var brand: FHIRPrimitive<FHIRString>?
	
	/// Color required
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Lens power for astigmatism
	public var cylinder: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens diameter
	public var diameter: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens wear duration
	public var duration: Quantity?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The eye for which the lens specification applies.
	public var eye: FHIRPrimitive<VisionEyes>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Notes for coatings
	public var note: [Annotation]?
	
	/// Contact lens power
	public var power: FHIRPrimitive<FHIRDecimal>?
	
	/// Eye alignment compensation
	public var prism: [VisionPrescriptionLensSpecificationPrism]?
	
	/// Product to be supplied
	public var product: CodeableConcept
	
	/// Power of the lens
	public var sphere: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		add: FHIRPrimitive<FHIRDecimal>? = nil,
		axis: FHIRPrimitive<FHIRInteger>? = nil,
		backCurve: FHIRPrimitive<FHIRDecimal>? = nil,
		brand: FHIRPrimitive<FHIRString>? = nil,
		color: FHIRPrimitive<FHIRString>? = nil,
		cylinder: FHIRPrimitive<FHIRDecimal>? = nil,
		diameter: FHIRPrimitive<FHIRDecimal>? = nil,
		duration: Quantity? = nil,
		`extension`: [Extension]? = nil,
		eye: FHIRPrimitive<VisionEyes>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		power: FHIRPrimitive<FHIRDecimal>? = nil,
		prism: [VisionPrescriptionLensSpecificationPrism]? = nil,
		product: CodeableConcept,
		sphere: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.add = add
		self.axis = axis
		self.backCurve = backCurve
		self.brand = brand
		self.color = color
		self.cylinder = cylinder
		self.diameter = diameter
		self.duration = duration
		self.`extension` = `extension`
		self.eye = eye
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.power = power
		self.prism = prism
		self.product = product
		self.sphere = sphere
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case add; case _add
		case axis; case _axis
		case backCurve; case _backCurve
		case brand; case _brand
		case color; case _color
		case cylinder; case _cylinder
		case diameter; case _diameter
		case duration
		case `extension` = "extension"
		case eye; case _eye
		case id; case _id
		case modifierExtension
		case note
		case power; case _power
		case prism
		case product
		case sphere; case _sphere
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.add = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .add, auxiliaryKey: ._add)
		self.axis = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .axis, auxiliaryKey: ._axis)
		self.backCurve = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .backCurve, auxiliaryKey: ._backCurve)
		self.brand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .brand, auxiliaryKey: ._brand)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.cylinder = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .cylinder, auxiliaryKey: ._cylinder)
		self.diameter = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .diameter, auxiliaryKey: ._diameter)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.eye = try FHIRPrimitive<VisionEyes>(from: _container, forKey: .eye, auxiliaryKey: ._eye)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.power = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .power, auxiliaryKey: ._power)
		self.prism = try [VisionPrescriptionLensSpecificationPrism](from: _container, forKeyIfPresent: .prism)
		self.product = try CodeableConcept(from: _container, forKey: .product)
		self.sphere = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .sphere, auxiliaryKey: ._sphere)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try add?.encode(on: &_container, forKey: .add, auxiliaryKey: ._add)
		try axis?.encode(on: &_container, forKey: .axis, auxiliaryKey: ._axis)
		try backCurve?.encode(on: &_container, forKey: .backCurve, auxiliaryKey: ._backCurve)
		try brand?.encode(on: &_container, forKey: .brand, auxiliaryKey: ._brand)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try cylinder?.encode(on: &_container, forKey: .cylinder, auxiliaryKey: ._cylinder)
		try diameter?.encode(on: &_container, forKey: .diameter, auxiliaryKey: ._diameter)
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try eye.encode(on: &_container, forKey: .eye, auxiliaryKey: ._eye)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try power?.encode(on: &_container, forKey: .power, auxiliaryKey: ._power)
		try prism?.encode(on: &_container, forKey: .prism)
		try product.encode(on: &_container, forKey: .product)
		try sphere?.encode(on: &_container, forKey: .sphere, auxiliaryKey: ._sphere)
	}
}

/**
 Eye alignment compensation.
 
 Allows for adjustment on two axis.
 */
public struct VisionPrescriptionLensSpecificationPrism: BackboneElement {
	
	/// Amount of adjustment
	public var amount: FHIRPrimitive<FHIRDecimal>
	
	/// The relative base, or reference lens edge, for the prism.
	public var base: FHIRPrimitive<VisionBase>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		amount: FHIRPrimitive<FHIRDecimal>,
		base: FHIRPrimitive<VisionBase>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.amount = amount
		self.base = base
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount; case _amount
		case base; case _base
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.amount = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .amount, auxiliaryKey: ._amount)
		self.base = try FHIRPrimitive<VisionBase>(from: _container, forKey: .base, auxiliaryKey: ._base)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try amount.encode(on: &_container, forKey: .amount, auxiliaryKey: ._amount)
		try base.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
