//
//  VisionPrescription.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/VisionPrescription)
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
 
 An authorization for the supply of glasses and/or contact lenses to a patient.
 */
open class VisionPrescription: DomainResource {
	
	override open class var resourceType: ResourceType { return .visionPrescription }
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who authorizes the vision product
	public var prescriber: Reference?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// Reason or indication for writing the prescription
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// Vision supply authorization
	public var dispense: [VisionPrescriptionDispense]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							dateWritten: FHIRPrimitive<DateTime>? = nil,
							dispense: [VisionPrescriptionDispense]? = nil,
							encounter: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							patient: Reference? = nil,
							prescriber: Reference? = nil,
							reason: ReasonX? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.contained = contained
		self.dateWritten = dateWritten
		self.dispense = dispense
		self.encounter = encounter
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.prescriber = prescriber
		self.reason = reason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dateWritten; case _dateWritten
		case dispense
		case encounter
		case identifier
		case patient
		case prescriber
		case reasonCodeableConcept
		case reasonReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateWritten, auxiliaryKey: ._dateWritten)
		self.dispense = try [VisionPrescriptionDispense](from: _container, forKeyIfPresent: .dispense)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.prescriber = try Reference(from: _container, forKeyIfPresent: .prescriber)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dateWritten?.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try dispense?.encode(on: &_container, forKey: .dispense)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try patient?.encode(on: &_container, forKey: .patient)
		try prescriber?.encode(on: &_container, forKey: .prescriber)
		if let _enum = reason {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .reasonReference)
			}
		}
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
		return dateWritten == _other.dateWritten
		    && dispense == _other.dispense
		    && encounter == _other.encounter
		    && identifier == _other.identifier
		    && patient == _other.patient
		    && prescriber == _other.prescriber
		    && reason == _other.reason
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dateWritten)
		hasher.combine(dispense)
		hasher.combine(encounter)
		hasher.combine(identifier)
		hasher.combine(patient)
		hasher.combine(prescriber)
		hasher.combine(reason)
	}
}

/**
 Vision supply authorization.
 
 Deals with details of the dispense part of the supply specification.
 */
open class VisionPrescriptionDispense: BackboneElement {
	
	/// Product to be supplied
	public var product: Coding
	
	/// The eye for which the lens applies.
	/// Restricted to: ['right', 'left']
	public var eye: FHIRPrimitive<VisionEyes>?
	
	/// Lens sphere
	public var sphere: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens cylinder
	public var cylinder: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens axis
	public var axis: FHIRPrimitive<FHIRInteger>?
	
	/// Lens prism
	public var prism: FHIRPrimitive<FHIRDecimal>?
	
	/// The relative base, or reference lens edge, for the prism.
	/// Restricted to: ['up', 'down', 'in', 'out']
	public var base: FHIRPrimitive<VisionBase>?
	
	/// Lens add
	public var add: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens power
	public var power: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens back curvature
	public var backCurve: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens diameter
	public var diameter: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens wear duration
	public var duration: Quantity?
	
	/// Lens add
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Lens add
	public var brand: FHIRPrimitive<FHIRString>?
	
	/// Notes for coatings
	public var notes: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(product: Coding) {
		self.product = product
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							add: FHIRPrimitive<FHIRDecimal>? = nil,
							axis: FHIRPrimitive<FHIRInteger>? = nil,
							backCurve: FHIRPrimitive<FHIRDecimal>? = nil,
							base: FHIRPrimitive<VisionBase>? = nil,
							brand: FHIRPrimitive<FHIRString>? = nil,
							color: FHIRPrimitive<FHIRString>? = nil,
							cylinder: FHIRPrimitive<FHIRDecimal>? = nil,
							diameter: FHIRPrimitive<FHIRDecimal>? = nil,
							duration: Quantity? = nil,
							`extension`: [Extension]? = nil,
							eye: FHIRPrimitive<VisionEyes>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							notes: FHIRPrimitive<FHIRString>? = nil,
							power: FHIRPrimitive<FHIRDecimal>? = nil,
							prism: FHIRPrimitive<FHIRDecimal>? = nil,
							product: Coding,
							sphere: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init(product: product)
		self.add = add
		self.axis = axis
		self.backCurve = backCurve
		self.base = base
		self.brand = brand
		self.color = color
		self.cylinder = cylinder
		self.diameter = diameter
		self.duration = duration
		self.`extension` = `extension`
		self.eye = eye
		self.id = id
		self.modifierExtension = modifierExtension
		self.notes = notes
		self.power = power
		self.prism = prism
		self.sphere = sphere
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case add; case _add
		case axis; case _axis
		case backCurve; case _backCurve
		case base; case _base
		case brand; case _brand
		case color; case _color
		case cylinder; case _cylinder
		case diameter; case _diameter
		case duration
		case eye; case _eye
		case notes; case _notes
		case power; case _power
		case prism; case _prism
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
		self.base = try FHIRPrimitive<VisionBase>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.brand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .brand, auxiliaryKey: ._brand)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.cylinder = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .cylinder, auxiliaryKey: ._cylinder)
		self.diameter = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .diameter, auxiliaryKey: ._diameter)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.eye = try FHIRPrimitive<VisionEyes>(from: _container, forKeyIfPresent: .eye, auxiliaryKey: ._eye)
		self.notes = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .notes, auxiliaryKey: ._notes)
		self.power = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .power, auxiliaryKey: ._power)
		self.prism = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .prism, auxiliaryKey: ._prism)
		self.product = try Coding(from: _container, forKey: .product)
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
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try brand?.encode(on: &_container, forKey: .brand, auxiliaryKey: ._brand)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try cylinder?.encode(on: &_container, forKey: .cylinder, auxiliaryKey: ._cylinder)
		try diameter?.encode(on: &_container, forKey: .diameter, auxiliaryKey: ._diameter)
		try duration?.encode(on: &_container, forKey: .duration)
		try eye?.encode(on: &_container, forKey: .eye, auxiliaryKey: ._eye)
		try notes?.encode(on: &_container, forKey: .notes, auxiliaryKey: ._notes)
		try power?.encode(on: &_container, forKey: .power, auxiliaryKey: ._power)
		try prism?.encode(on: &_container, forKey: .prism, auxiliaryKey: ._prism)
		try product.encode(on: &_container, forKey: .product)
		try sphere?.encode(on: &_container, forKey: .sphere, auxiliaryKey: ._sphere)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VisionPrescriptionDispense else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return add == _other.add
		    && axis == _other.axis
		    && backCurve == _other.backCurve
		    && base == _other.base
		    && brand == _other.brand
		    && color == _other.color
		    && cylinder == _other.cylinder
		    && diameter == _other.diameter
		    && duration == _other.duration
		    && eye == _other.eye
		    && notes == _other.notes
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
		hasher.combine(base)
		hasher.combine(brand)
		hasher.combine(color)
		hasher.combine(cylinder)
		hasher.combine(diameter)
		hasher.combine(duration)
		hasher.combine(eye)
		hasher.combine(notes)
		hasher.combine(power)
		hasher.combine(prism)
		hasher.combine(product)
		hasher.combine(sphere)
	}
}
