//
//  VisionPrescription.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/VisionPrescription)
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
 Prescription for vision correction products for a patient.
 
 An authorization for the provision of glasses and/or contact lenses to a patient.
 */
open class VisionPrescription: DomainResource {
	
	override open class var resourceType: ResourceType { return .visionPrescription }
	
	/// Business Identifier for vision prescription
	public var identifier: [Identifier]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<FinancialResourceStatusCodes>
	
	/// Response creation date
	public var created: FHIRPrimitive<DateTime>
	
	/// Who prescription is for
	public var patient: Reference
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>
	
	/// Who authorized the vision prescription
	public var prescriber: Reference
	
	/// Vision lens authorization
	public var lensSpecification: [VisionPrescriptionLensSpecification]
	
	/// Designated initializer taking all required properties
	public init(created: FHIRPrimitive<DateTime>, dateWritten: FHIRPrimitive<DateTime>, lensSpecification: [VisionPrescriptionLensSpecification], patient: Reference, prescriber: Reference, status: FHIRPrimitive<FinancialResourceStatusCodes>) {
		self.created = created
		self.dateWritten = dateWritten
		self.lensSpecification = lensSpecification
		self.patient = patient
		self.prescriber = prescriber
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(created: created, dateWritten: dateWritten, lensSpecification: lensSpecification, patient: patient, prescriber: prescriber, status: status)
		self.contained = contained
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case dateWritten; case _dateWritten
		case encounter
		case identifier
		case lensSpecification
		case patient
		case prescriber
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKey: .created, auxiliaryKey: ._created)
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.lensSpecification = try [VisionPrescriptionLensSpecification](from: _container, forKey: .lensSpecification)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.prescriber = try Reference(from: _container, forKey: .prescriber)
		self.status = try FHIRPrimitive<FinancialResourceStatusCodes>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try dateWritten.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try lensSpecification.encode(on: &_container, forKey: .lensSpecification)
		try patient.encode(on: &_container, forKey: .patient)
		try prescriber.encode(on: &_container, forKey: .prescriber)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VisionPrescription else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return created == _other.created
		    && dateWritten == _other.dateWritten
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && lensSpecification == _other.lensSpecification
		    && patient == _other.patient
		    && prescriber == _other.prescriber
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(dateWritten)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(lensSpecification)
		hasher.combine(patient)
		hasher.combine(prescriber)
		hasher.combine(status)
	}
}

/**
 Vision lens authorization.
 
 Contain the details of  the individual lens specifications and serves as the authorization for the fullfillment by
 certified professionals.
 */
open class VisionPrescriptionLensSpecification: BackboneElement {
	
	/// Product to be supplied
	public var product: CodeableConcept
	
	/// The eye for which the lens specification applies.
	public var eye: FHIRPrimitive<VisionEyes>
	
	/// Power of the lens
	public var sphere: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens power for astigmatism
	public var cylinder: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens meridian which contain no power for astigmatism
	public var axis: FHIRPrimitive<FHIRInteger>?
	
	/// Eye alignment compensation
	public var prism: [VisionPrescriptionLensSpecificationPrism]?
	
	/// Added power for multifocal levels
	public var add: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens power
	public var power: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens back curvature
	public var backCurve: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens diameter
	public var diameter: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens wear duration
	public var duration: Quantity?
	
	/// Color required
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Brand required
	public var brand: FHIRPrimitive<FHIRString>?
	
	/// Notes for coatings
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(eye: FHIRPrimitive<VisionEyes>, product: CodeableConcept) {
		self.eye = eye
		self.product = product
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							sphere: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(eye: eye, product: product)
		self.add = add
		self.axis = axis
		self.backCurve = backCurve
		self.brand = brand
		self.color = color
		self.cylinder = cylinder
		self.diameter = diameter
		self.duration = duration
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.power = power
		self.prism = prism
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
		case eye; case _eye
		case note
		case power; case _power
		case prism
		case product
		case sphere; case _sphere
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.add = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .add, auxiliaryKey: ._add)
		self.axis = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .axis, auxiliaryKey: ._axis)
		self.backCurve = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .backCurve, auxiliaryKey: ._backCurve)
		self.brand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .brand, auxiliaryKey: ._brand)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.cylinder = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .cylinder, auxiliaryKey: ._cylinder)
		self.diameter = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .diameter, auxiliaryKey: ._diameter)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.eye = try FHIRPrimitive<VisionEyes>(from: _container, forKey: .eye, auxiliaryKey: ._eye)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.power = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .power, auxiliaryKey: ._power)
		self.prism = try [VisionPrescriptionLensSpecificationPrism](from: _container, forKeyIfPresent: .prism)
		self.product = try CodeableConcept(from: _container, forKey: .product)
		self.sphere = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .sphere, auxiliaryKey: ._sphere)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try add?.encode(on: &_container, forKey: .add, auxiliaryKey: ._add)
		try axis?.encode(on: &_container, forKey: .axis, auxiliaryKey: ._axis)
		try backCurve?.encode(on: &_container, forKey: .backCurve, auxiliaryKey: ._backCurve)
		try brand?.encode(on: &_container, forKey: .brand, auxiliaryKey: ._brand)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try cylinder?.encode(on: &_container, forKey: .cylinder, auxiliaryKey: ._cylinder)
		try diameter?.encode(on: &_container, forKey: .diameter, auxiliaryKey: ._diameter)
		try duration?.encode(on: &_container, forKey: .duration)
		try eye.encode(on: &_container, forKey: .eye, auxiliaryKey: ._eye)
		try note?.encode(on: &_container, forKey: .note)
		try power?.encode(on: &_container, forKey: .power, auxiliaryKey: ._power)
		try prism?.encode(on: &_container, forKey: .prism)
		try product.encode(on: &_container, forKey: .product)
		try sphere?.encode(on: &_container, forKey: .sphere, auxiliaryKey: ._sphere)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VisionPrescriptionLensSpecification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return add == _other.add
		    && axis == _other.axis
		    && backCurve == _other.backCurve
		    && brand == _other.brand
		    && color == _other.color
		    && cylinder == _other.cylinder
		    && diameter == _other.diameter
		    && duration == _other.duration
		    && eye == _other.eye
		    && note == _other.note
		    && power == _other.power
		    && prism == _other.prism
		    && product == _other.product
		    && sphere == _other.sphere
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(add)
		hasher.combine(axis)
		hasher.combine(backCurve)
		hasher.combine(brand)
		hasher.combine(color)
		hasher.combine(cylinder)
		hasher.combine(diameter)
		hasher.combine(duration)
		hasher.combine(eye)
		hasher.combine(note)
		hasher.combine(power)
		hasher.combine(prism)
		hasher.combine(product)
		hasher.combine(sphere)
	}
}

/**
 Eye alignment compensation.
 
 Allows for adjustment on two axis.
 */
open class VisionPrescriptionLensSpecificationPrism: BackboneElement {
	
	/// Amount of adjustment
	public var amount: FHIRPrimitive<FHIRDecimal>
	
	/// The relative base, or reference lens edge, for the prism.
	public var base: FHIRPrimitive<VisionBase>
	
	/// Designated initializer taking all required properties
	public init(amount: FHIRPrimitive<FHIRDecimal>, base: FHIRPrimitive<VisionBase>) {
		self.amount = amount
		self.base = base
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							amount: FHIRPrimitive<FHIRDecimal>,
							base: FHIRPrimitive<VisionBase>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(amount: amount, base: base)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case amount; case _amount
		case base; case _base
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.amount = try FHIRPrimitive<FHIRDecimal>(from: _container, forKey: .amount, auxiliaryKey: ._amount)
		self.base = try FHIRPrimitive<VisionBase>(from: _container, forKey: .base, auxiliaryKey: ._base)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try amount.encode(on: &_container, forKey: .amount, auxiliaryKey: ._amount)
		try base.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VisionPrescriptionLensSpecificationPrism else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return amount == _other.amount
		    && base == _other.base
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(amount)
		hasher.combine(base)
	}
}
