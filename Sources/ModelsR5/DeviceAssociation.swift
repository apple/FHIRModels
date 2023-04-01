//
//  DeviceAssociation.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/DeviceAssociation)
//  Copyright 2023 Apple Inc.
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
 A record of association or dissociation of a device with a patient.
 */
open class DeviceAssociation: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceAssociation }
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// Reference to the devices associated with the patient or group
	public var device: Reference
	
	/// Describes the relationship between the device and subject
	public var category: [CodeableConcept]?
	
	/// implanted | explanted | attached | entered-in-error | unknown
	public var status: CodeableConcept
	
	/// The reasons given for the current association status
	public var statusReason: [CodeableConcept]?
	
	/// The individual, group of individuals or device that the device is on or associated with
	public var subject: Reference?
	
	/// Current anatomical location of the device in/on subject
	public var bodyStructure: Reference?
	
	/// Begin and end dates and times for the device association
	public var period: Period?
	
	/// The details about the device when it is in use to describe its operation
	public var operation: [DeviceAssociationOperation]?
	
	/// Designated initializer taking all required properties
	public init(device: Reference, status: CodeableConcept) {
		self.device = device
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		bodyStructure: Reference? = nil,
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		device: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		operation: [DeviceAssociationOperation]? = nil,
		period: Period? = nil,
		status: CodeableConcept,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(device: device, status: status)
		self.bodyStructure = bodyStructure
		self.category = category
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operation = operation
		self.period = period
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodyStructure
		case category
		case device
		case identifier
		case operation
		case period
		case status
		case statusReason
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.device = try Reference(from: _container, forKey: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.operation = try [DeviceAssociationOperation](from: _container, forKeyIfPresent: .operation)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try category?.encode(on: &_container, forKey: .category)
		try device.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try operation?.encode(on: &_container, forKey: .operation)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAssociation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodyStructure == _other.bodyStructure
		    && category == _other.category
		    && device == _other.device
		    && identifier == _other.identifier
		    && operation == _other.operation
		    && period == _other.period
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodyStructure)
		hasher.combine(category)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(operation)
		hasher.combine(period)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
	}
}

/**
 The details about the device when it is in use to describe its operation.
 */
open class DeviceAssociationOperation: BackboneElement {
	
	/// Device operational condition
	public var status: CodeableConcept
	
	/// The individual performing the action enabled by the device
	public var `operator`: [Reference]?
	
	/// Begin and end dates and times for the device's operation
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(status: CodeableConcept) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		`operator`: [Reference]? = nil,
		period: Period? = nil,
		status: CodeableConcept
	) {
		self.init(status: status)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.`operator` = `operator`
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `operator` = "operator"
		case period
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`operator` = try [Reference](from: _container, forKeyIfPresent: .`operator`)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `operator`?.encode(on: &_container, forKey: .`operator`)
		try period?.encode(on: &_container, forKey: .period)
		try status.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAssociationOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `operator` == _other.`operator`
		    && period == _other.period
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`operator`)
		hasher.combine(period)
		hasher.combine(status)
	}
}
