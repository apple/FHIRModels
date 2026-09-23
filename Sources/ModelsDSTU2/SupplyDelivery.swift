//
//  SupplyDelivery.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/SupplyDelivery)
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
 Delivery of Supply.
 
 Record of delivery of what is supplied.
 */
public struct SupplyDelivery: DomainResource {
	
	public static let resourceType: ResourceType = .supplyDelivery
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where the Supply was sent
	public var destination: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// Who collected the Supply
	public var receiver: [Reference]?
	
	/// A code specifying the state of the dispense event.
	/// Restricted to: ['in-progress', 'completed', 'abandoned']
	public var status: FHIRPrimitive<SupplyDeliveryStatus>?
	
	/// Medication, Substance, or Device supplied
	public var suppliedItem: Reference?
	
	/// Dispenser
	public var supplier: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Handover time
	public var time: FHIRPrimitive<DateTime>?
	
	/// Category of dispense event
	public var type: CodeableConcept?
	
	/// Dispensing time
	public var whenPrepared: Period?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		destination: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference? = nil,
		quantity: Quantity? = nil,
		receiver: [Reference]? = nil,
		status: FHIRPrimitive<SupplyDeliveryStatus>? = nil,
		suppliedItem: Reference? = nil,
		supplier: Reference? = nil,
		text: Narrative? = nil,
		time: FHIRPrimitive<DateTime>? = nil,
		type: CodeableConcept? = nil,
		whenPrepared: Period? = nil
	) {
		self.contained = contained
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.quantity = quantity
		self.receiver = receiver
		self.status = status
		self.suppliedItem = suppliedItem
		self.supplier = supplier
		self.text = text
		self.time = time
		self.type = type
		self.whenPrepared = whenPrepared
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case destination
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case patient
		case quantity
		case receiver
		case status; case _status
		case suppliedItem
		case supplier
		case text
		case time; case _time
		case type
		case whenPrepared
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.receiver = try [Reference](from: _container, forKeyIfPresent: .receiver)
		self.status = try FHIRPrimitive<SupplyDeliveryStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.suppliedItem = try Reference(from: _container, forKeyIfPresent: .suppliedItem)
		self.supplier = try Reference(from: _container, forKeyIfPresent: .supplier)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.time = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.whenPrepared = try Period(from: _container, forKeyIfPresent: .whenPrepared)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try destination?.encode(on: &_container, forKey: .destination)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient?.encode(on: &_container, forKey: .patient)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try receiver?.encode(on: &_container, forKey: .receiver)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try suppliedItem?.encode(on: &_container, forKey: .suppliedItem)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try text?.encode(on: &_container, forKey: .text)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type?.encode(on: &_container, forKey: .type)
		try whenPrepared?.encode(on: &_container, forKey: .whenPrepared)
	}
}
