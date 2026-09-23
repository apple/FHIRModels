//
//  DeviceAssociation.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DeviceAssociation)
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
 A record of association or dissociation of a device with a subject (e.g. patient) and/or operator.
 */
public struct DeviceAssociation: DomainResource {
	
	public static let resourceType: ResourceType = .deviceAssociation
	
	/// State of the device’s association
	public var associationStatus: CodeableConcept?
	
	/// Current anatomical location of the device in/on subject
	public var bodyStructure: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Reference to the device that is being associated
	public var device: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The target of the association
	public var focus: Reference?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Begin and end dates and times for the device association
	public var period: Period?
	
	/// Describes the relationship between the device and subject
	public var relationship: [CodeableConcept]?
	
	/// Indicates the state of the Device association.
	public var status: FHIRPrimitive<DeviceAssociationStatus>
	
	/// The reasons given for the current association status
	public var statusReason: [CodeableConcept]?
	
	/// The entity or group that the device is on or associated with
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		self.associationStatus = associationStatus
		self.bodyStructure = bodyStructure
		self.contained = contained
		self.device = device
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
		self.status = status
		self.statusReason = statusReason
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case associationStatus
		case bodyStructure
		case contained
		case device
		case `extension` = "extension"
		case focus
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case period
		case relationship
		case status; case _status
		case statusReason
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.associationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .associationStatus)
		self.bodyStructure = try Reference(from: _container, forKeyIfPresent: .bodyStructure)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try Reference(from: _container, forKey: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try Reference(from: _container, forKeyIfPresent: .focus)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.relationship = try [CodeableConcept](from: _container, forKeyIfPresent: .relationship)
		self.status = try FHIRPrimitive<DeviceAssociationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try [CodeableConcept](from: _container, forKeyIfPresent: .statusReason)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try associationStatus?.encode(on: &_container, forKey: .associationStatus)
		try bodyStructure?.encode(on: &_container, forKey: .bodyStructure)
		try contained?.encode(on: &_container, forKey: .contained)
		try device.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}
