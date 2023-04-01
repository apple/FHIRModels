//
//  BiologicallyDerivedProductDispense.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProductDispense)
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
 A record of dispensation of a biologically derived product.
 
 This resource reflects an instance of a biologically derived product dispense. The supply or dispense of a biologically
 derived product from the supply organization or department (e.g. hospital transfusion laboratory) to the clinical team
 responsible for clinical application.
 */
open class BiologicallyDerivedProductDispense: DomainResource {
	
	override open class var resourceType: ResourceType { return .biologicallyDerivedProductDispense }
	
	/// Business identifier for this dispense
	public var identifier: [Identifier]?
	
	/// The order or request that this dispense is fulfilling
	public var basedOn: [Reference]?
	
	/// Short description
	public var partOf: [Reference]?
	
	/// A code specifying the state of the dispense event.
	public var status: FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>
	
	/// Relationship between the donor and intended recipient
	public var originRelationshipType: CodeableConcept?
	
	/// The BiologicallyDerivedProduct that is dispensed
	public var product: Reference
	
	/// The intended recipient of the dispensed product
	public var patient: Reference
	
	/// Indicates the type of matching associated with the dispense
	public var matchStatus: CodeableConcept?
	
	/// Indicates who or what performed an action
	public var performer: [BiologicallyDerivedProductDispensePerformer]?
	
	/// Where the dispense occurred
	public var location: Reference?
	
	/// Amount dispensed
	public var quantity: Quantity?
	
	/// When product was selected/matched
	public var preparedDate: FHIRPrimitive<DateTime>?
	
	/// When the product was dispatched
	public var whenHandedOver: FHIRPrimitive<DateTime>?
	
	/// Where the product was dispatched to
	public var destination: Reference?
	
	/// Additional notes
	public var note: [Annotation]?
	
	/// Specific instructions for use
	public var usageInstruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, product: Reference, status: FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>) {
		self.patient = patient
		self.product = product
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(patient: patient, product: product, status: status)
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
		self.performer = performer
		self.preparedDate = preparedDate
		self.quantity = quantity
		self.text = text
		self.usageInstruction = usageInstruction
		self.whenHandedOver = whenHandedOver
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case destination
		case identifier
		case location
		case matchStatus
		case note
		case originRelationshipType
		case partOf
		case patient
		case performer
		case preparedDate; case _preparedDate
		case product
		case quantity
		case status; case _status
		case usageInstruction; case _usageInstruction
		case whenHandedOver; case _whenHandedOver
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.destination = try Reference(from: _container, forKeyIfPresent: .destination)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.matchStatus = try CodeableConcept(from: _container, forKeyIfPresent: .matchStatus)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.originRelationshipType = try CodeableConcept(from: _container, forKeyIfPresent: .originRelationshipType)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.performer = try [BiologicallyDerivedProductDispensePerformer](from: _container, forKeyIfPresent: .performer)
		self.preparedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .preparedDate, auxiliaryKey: ._preparedDate)
		self.product = try Reference(from: _container, forKey: .product)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.status = try FHIRPrimitive<BiologicallyDerivedProductDispenseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.usageInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usageInstruction, auxiliaryKey: ._usageInstruction)
		self.whenHandedOver = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try destination?.encode(on: &_container, forKey: .destination)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try matchStatus?.encode(on: &_container, forKey: .matchStatus)
		try note?.encode(on: &_container, forKey: .note)
		try originRelationshipType?.encode(on: &_container, forKey: .originRelationshipType)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try patient.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try preparedDate?.encode(on: &_container, forKey: .preparedDate, auxiliaryKey: ._preparedDate)
		try product.encode(on: &_container, forKey: .product)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try usageInstruction?.encode(on: &_container, forKey: .usageInstruction, auxiliaryKey: ._usageInstruction)
		try whenHandedOver?.encode(on: &_container, forKey: .whenHandedOver, auxiliaryKey: ._whenHandedOver)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductDispense else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && destination == _other.destination
		    && identifier == _other.identifier
		    && location == _other.location
		    && matchStatus == _other.matchStatus
		    && note == _other.note
		    && originRelationshipType == _other.originRelationshipType
		    && partOf == _other.partOf
		    && patient == _other.patient
		    && performer == _other.performer
		    && preparedDate == _other.preparedDate
		    && product == _other.product
		    && quantity == _other.quantity
		    && status == _other.status
		    && usageInstruction == _other.usageInstruction
		    && whenHandedOver == _other.whenHandedOver
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(destination)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(matchStatus)
		hasher.combine(note)
		hasher.combine(originRelationshipType)
		hasher.combine(partOf)
		hasher.combine(patient)
		hasher.combine(performer)
		hasher.combine(preparedDate)
		hasher.combine(product)
		hasher.combine(quantity)
		hasher.combine(status)
		hasher.combine(usageInstruction)
		hasher.combine(whenHandedOver)
	}
}

/**
 Indicates who or what performed an action.
 */
open class BiologicallyDerivedProductDispensePerformer: BackboneElement {
	
	/// Identifies the function of the performer during the dispense
	public var function: CodeableConcept?
	
	/// Who performed the action
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BiologicallyDerivedProductDispensePerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}
