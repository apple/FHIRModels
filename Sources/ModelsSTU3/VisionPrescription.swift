//
//  VisionPrescription.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/VisionPrescription)
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
 
 An authorization for the supply of glasses and/or contact lenses to a patient.
 */
public struct VisionPrescription: DomainResource {
	
	public static let resourceType: ResourceType = .visionPrescription
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When prescription was authorized
	public var dateWritten: FHIRPrimitive<DateTime>?
	
	/// Vision supply authorization
	public var dispense: [VisionPrescriptionDispense]?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who authorizes the vision product
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		status: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
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
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case dateWritten; case _dateWritten
		case dispense
		case encounter
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case prescriber
		case reasonCodeableConcept
		case reasonReference
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dateWritten = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateWritten, auxiliaryKey: ._dateWritten)
		self.dispense = try [VisionPrescriptionDispense](from: _container, forKeyIfPresent: .dispense)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.prescriber = try Reference(from: _container, forKeyIfPresent: .prescriber)
		self.reason = try Self._decodeReason(from: _container)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try dateWritten?.encode(on: &_container, forKey: .dateWritten, auxiliaryKey: ._dateWritten)
		try dispense?.encode(on: &_container, forKey: .dispense)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonX? {
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		return _t_reason
	}
}

/**
 Vision supply authorization.
 
 Deals with details of the dispense part of the supply specification.
 */
public struct VisionPrescriptionDispense: BackboneElement {
	
	/// Lens add
	public var add: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens axis
	public var axis: FHIRPrimitive<FHIRInteger>?
	
	/// Contact lens back curvature
	public var backCurve: FHIRPrimitive<FHIRDecimal>?
	
	/// The relative base, or reference lens edge, for the prism.
	public var base: FHIRPrimitive<VisionBase>?
	
	/// Brand required
	public var brand: FHIRPrimitive<FHIRString>?
	
	/// Color required
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Lens cylinder
	public var cylinder: FHIRPrimitive<FHIRDecimal>?
	
	/// Contact lens diameter
	public var diameter: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens wear duration
	public var duration: Quantity?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// The eye for which the lens applies.
	public var eye: FHIRPrimitive<VisionEyes>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Notes for coatings
	public var note: [Annotation]?
	
	/// Contact lens power
	public var power: FHIRPrimitive<FHIRDecimal>?
	
	/// Lens prism
	public var prism: FHIRPrimitive<FHIRDecimal>?
	
	/// Product to be supplied
	public var product: CodeableConcept?
	
	/// Lens sphere
	public var sphere: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
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
		note: [Annotation]? = nil,
		power: FHIRPrimitive<FHIRDecimal>? = nil,
		prism: FHIRPrimitive<FHIRDecimal>? = nil,
		product: CodeableConcept? = nil,
		sphere: FHIRPrimitive<FHIRDecimal>? = nil
	) {
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
		case base; case _base
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
		case prism; case _prism
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
		self.base = try FHIRPrimitive<VisionBase>(from: _container, forKeyIfPresent: .base, auxiliaryKey: ._base)
		self.brand = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .brand, auxiliaryKey: ._brand)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.cylinder = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .cylinder, auxiliaryKey: ._cylinder)
		self.diameter = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .diameter, auxiliaryKey: ._diameter)
		self.duration = try Quantity(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.eye = try FHIRPrimitive<VisionEyes>(from: _container, forKeyIfPresent: .eye, auxiliaryKey: ._eye)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.power = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .power, auxiliaryKey: ._power)
		self.prism = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .prism, auxiliaryKey: ._prism)
		self.product = try CodeableConcept(from: _container, forKeyIfPresent: .product)
		self.sphere = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .sphere, auxiliaryKey: ._sphere)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try add?.encode(on: &_container, forKey: .add, auxiliaryKey: ._add)
		try axis?.encode(on: &_container, forKey: .axis, auxiliaryKey: ._axis)
		try backCurve?.encode(on: &_container, forKey: .backCurve, auxiliaryKey: ._backCurve)
		try base?.encode(on: &_container, forKey: .base, auxiliaryKey: ._base)
		try brand?.encode(on: &_container, forKey: .brand, auxiliaryKey: ._brand)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try cylinder?.encode(on: &_container, forKey: .cylinder, auxiliaryKey: ._cylinder)
		try diameter?.encode(on: &_container, forKey: .diameter, auxiliaryKey: ._diameter)
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try eye?.encode(on: &_container, forKey: .eye, auxiliaryKey: ._eye)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try power?.encode(on: &_container, forKey: .power, auxiliaryKey: ._power)
		try prism?.encode(on: &_container, forKey: .prism, auxiliaryKey: ._prism)
		try product?.encode(on: &_container, forKey: .product)
		try sphere?.encode(on: &_container, forKey: .sphere, auxiliaryKey: ._sphere)
	}
}
