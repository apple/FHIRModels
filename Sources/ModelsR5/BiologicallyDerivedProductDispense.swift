//
//  BiologicallyDerivedProductDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProductDispense)
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
 A record of dispensation of a biologically derived product.
 
 This resource reflects an instance of a biologically derived product dispense. The supply or dispense of a biologically
 derived product from the supply organization or department (e.g. hospital transfusion laboratory) to the clinical team
 responsible for clinical application.
 */
public struct BiologicallyDerivedProductDispense: DomainResource {
	
	public static let resourceType: ResourceType = .biologicallyDerivedProductDispense
	
	/// The order or request that this dispense is fulfilling
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Where the product was dispatched to
	public var destination: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for this dispense
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// Indicates the type of matching associated with the dispense
	public var matchStatus: CodeableConcept?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional notes
	public var note: [Annotation]?
	
	/// Relationship between the donor and intended recipient
	public var originRelationshipType: CodeableConcept?
	
	/// Short description
	public var partOf: [Reference]?
	
	/// The intended recipient of the dispensed product
	public var patient: Reference
	
	/// Indicates who or what performed an action
	public var performer: [BiologicallyDerivedProductDispensePerformer]?
	
	/// When product was selected/matched
	public var preparedDate: FHIRPrimitive<DateTime>?
	
	/// The BiologicallyDerivedProduct that is dispensed
	public var product: Reference
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// A code specifying the state of the dispense event.
	public var status: FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Specific instructions for use
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// When the product was dispatched
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		destination: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		matchStatus: CodeableConcept? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		originRelationshipType: CodeableConcept? = nil,
		partOf: [Reference]? = nil,
		patient: Reference,
		performer: [BiologicallyDerivedProductDispensePerformer]? = nil,
		preparedDate: FHIRPrimitive<DateTime>? = nil,
		product: Reference,
		quantity: Quantity? = nil,
		status: FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>,
		text: Narrative? = nil,
		usageInstruction: FHIRPrimitive<FHIRString>? = nil,
		whenHandedOver: FHIRPrimitive<DateTime>? = nil
	) {
		self.basedOn = basedOn
		self.contained = contained
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.matchStatus = matchStatus
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.originRelationshipType = originRelationshipType
		self.partOf = partOf
		self.patient = patient
		self.performer = performer
		self.preparedDate = preparedDate
		self.product = product
		self.quantity = quantity
		self.status = status
		self.text = text
		self.usageInstruction = usageInstruction
		self.whenHandedOver = whenHandedOver
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case contained
		case destination
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case location
		case matchStatus
		case meta
		case modifierExtension
		case note
		case originRelationshipType
		case partOf
		case patient
		case performer
		case preparedDate; case _preparedDate
		case product
		case quantity
		case status; case _status
		case text
		case usageInstruction; case _usageInstruction
		case whenHandedOver; case _whenHandedOver
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.matchStatus = try CodeableConcept(from: _container, forKeyIfPresent: .matchStatus)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.originRelationshipType = try CodeableConcept(from: _container, forKeyIfPresent: .originRelationshipType)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.performer = try [BiologicallyDerivedProductDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.preparedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .preparedDate, auxiliaryKey: ._preparedDate)
		self.product = try Reference(from: _container, forKey: .product)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.status = try FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try destination?.encode(on: &_container, forKey: .destination)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try matchStatus?.encode(on: &_container, forKey: .matchStatus)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try originRelationshipType?.encode(on: &_container, forKey: .originRelationshipType)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try patient.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try preparedDate?.encode(on: &_container, forKey: .preparedDate, auxiliaryKey: ._preparedDate)
		try product.encode(on: &_container, forKey: .product)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
	}
}

/**
 Indicates who or what performed an action.
 */
public struct BiologicallyDerivedProductDispensePerformer: BackboneElement {
	
	/// Who performed the action
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Identifies the function of the performer during the dispense
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
