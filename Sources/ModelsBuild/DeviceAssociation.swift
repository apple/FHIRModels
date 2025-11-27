//
//  DeviceAssociation.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DeviceAssociation)
//  Copyright 2025 Apple Inc.
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
 A record of association or dissociation of a device with a subject (e.g. patient) and/or operator.
 */
open class DeviceAssociation: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceAssociation }
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// Reference to the device that is being associated
	public var device: Reference
	
	/// Describes the relationship between the device and subject
	public var relationship: [CodeableConcept]?
	
	/// Indicates the state of the Device association.
	public var status: FHIRPrimitive<DeviceAssociationStatus>
	
	/// The reasons given for the current association status
	public var statusReason: [CodeableConcept]?
	
	/// State of the device’s association
	public var associationStatus: CodeableConcept?
	
	/// The entity(ies) that the device is on or associated with
	public var subject: Reference?
	
	/// The target of the association
	public var focus: Reference?
	
	/// Current anatomical location of the device in/on subject
	public var bodyStructure: Reference?
	
	/// Begin and end dates and times for the device association
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(device: Reference, status: FHIRPrimitive<DeviceAssociationStatus>) {
		self.device = device
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		associationStatus: CodeableConcept? = nil,
		bodyStructure: Reference? = nil,
		contained: [ResourceProxy]? = nil,
		device: Reference,
		`extension`: [Extension]? = nil,
		focus: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		relationship: [CodeableConcept]? = nil,
		status: FHIRPrimitive<DeviceAssociationStatus>,
		statusReason: [CodeableConcept]? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(device: device, status: status)
		self.associationStatus = associationStatus
		self.bodyStructure = bodyStructure
		self.contained = contained
		self.`extension` = `extension`
		self.focus = focus
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.relationship = relationship
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case associationStatus
		case bodyStructure
		case device
		case focus
		case identifier
		case period
		case relationship
		case status; case _status
		case statusReason
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.associationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .associationStatus)
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.device = try Reference(from: _container, forKey: .device)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relationship = try [CodeableConcept](from: _container, forKeyIfPresent: .relationship)
		self.status = try FHIRPrimitive<DeviceAssociationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try associationStatus?.encode(on: &_container, forKey: .associationStatus)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try device.encode(on: &_container, forKey: .device)
		try focus?.encode(on: &_container, forKey: .focus)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try period?.encode(on: &_container, forKey: .period)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return associationStatus == _other.associationStatus
		    && bodyStructure == _other.bodyStructure
		    && device == _other.device
		    && focus == _other.focus
		    && identifier == _other.identifier
		    && period == _other.period
		    && relationship == _other.relationship
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(associationStatus)
		hasher.combine(bodyStructure)
		hasher.combine(device)
		hasher.combine(focus)
		hasher.combine(identifier)
		hasher.combine(period)
		hasher.combine(relationship)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subject)
	}
}
