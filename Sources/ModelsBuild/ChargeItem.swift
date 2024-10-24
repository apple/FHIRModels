//
//  ChargeItem.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/ChargeItem)
//  Copyright 2024 Apple Inc.
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
 Item containing charge code(s) associated with the provision of healthcare provider products.
 
 The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
 referring not only to the product, but containing in addition details of the provision, like date, time, amounts and
 participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal
 cost allocation.
 */
open class ChargeItem: DomainResource {
	
	override open class var resourceType: ResourceType { return .chargeItem }
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// Business Identifier for item
	public var identifier: [Identifier]?
	
	/// Defining information about the code of this charge item
	public var definitionUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Resource defining the code of this ChargeItem
	public var definitionCanonical: [FHIRPrimitive<Canonical>]?
	
	/// The current state of the ChargeItem.
	public var status: FHIRPrimitive<ChargeItemStatus>
	
	/// Part of referenced ChargeItem
	public var partOf: [Reference]?
	
	/// A code that identifies the charge, like a billing code
	public var code: CodeableConcept
	
	/// Individual service was done for/to
	public var subject: Reference
	
	/// Encounter associated with this ChargeItem
	public var encounter: Reference?
	
	/// When the charged service was applied
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Who performed charged service
	public var performer: [ChargeItemPerformer]?
	
	/// Organization providing the charged service
	public var performingOrganization: Reference?
	
	/// Organization requesting the charged service
	public var requestingOrganization: Reference?
	
	/// Organization that has ownership of the (potential, future) revenue
	public var costCenter: Reference?
	
	/// Quantity of which the charge item has been serviced
	public var quantity: Quantity?
	
	/// Anatomical location, if relevant
	public var bodysite: [CodeableConcept]?
	
	/// Unit price overriding the associated rules
	public var unitPriceComponent: MonetaryComponent?
	
	/// Total price overriding the associated rules
	public var totalPriceComponent: MonetaryComponent?
	
	/// Reason for overriding the list price/factor
	public var overrideReason: CodeableConcept?
	
	/// Individual who was entering
	public var enterer: Reference?
	
	/// Date the charge item was entered
	public var enteredDate: FHIRPrimitive<DateTime>?
	
	/// Why was the charged  service rendered?
	public var reason: [CodeableReference]?
	
	/// Which rendered service is being charged?
	public var service: [CodeableReference]?
	
	/// Product charged
	public var product: [CodeableReference]?
	
	/// Account to place this charge
	public var account: [Reference]?
	
	/// Comments made about the ChargeItem
	public var note: [Annotation]?
	
	/// Further information supporting this charge
	public var supportingInformation: [Reference]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<ChargeItemStatus>, subject: Reference) {
		self.code = code
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		account: [Reference]? = nil,
		bodysite: [CodeableConcept]? = nil,
		code: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		costCenter: Reference? = nil,
		definitionCanonical: [FHIRPrimitive<Canonical>]? = nil,
		definitionUri: [FHIRPrimitive<FHIRURI>]? = nil,
		encounter: Reference? = nil,
		enteredDate: FHIRPrimitive<DateTime>? = nil,
		enterer: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		overrideReason: CodeableConcept? = nil,
		partOf: [Reference]? = nil,
		performer: [ChargeItemPerformer]? = nil,
		performingOrganization: Reference? = nil,
		product: [CodeableReference]? = nil,
		quantity: Quantity? = nil,
		reason: [CodeableReference]? = nil,
		requestingOrganization: Reference? = nil,
		service: [CodeableReference]? = nil,
		status: FHIRPrimitive<ChargeItemStatus>,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		totalPriceComponent: MonetaryComponent? = nil,
		unitPriceComponent: MonetaryComponent? = nil
	) {
		self.init(code: code, status: status, subject: subject)
		self.account = account
		self.bodysite = bodysite
		self.contained = contained
		self.costCenter = costCenter
		self.definitionCanonical = definitionCanonical
		self.definitionUri = definitionUri
		self.encounter = encounter
		self.enteredDate = enteredDate
		self.enterer = enterer
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.overrideReason = overrideReason
		self.partOf = partOf
		self.performer = performer
		self.performingOrganization = performingOrganization
		self.product = product
		self.quantity = quantity
		self.reason = reason
		self.requestingOrganization = requestingOrganization
		self.service = service
		self.supportingInformation = supportingInformation
		self.text = text
		self.totalPriceComponent = totalPriceComponent
		self.unitPriceComponent = unitPriceComponent
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case account
		case bodysite
		case code
		case costCenter
		case definitionCanonical; case _definitionCanonical
		case definitionUri; case _definitionUri
		case encounter
		case enteredDate; case _enteredDate
		case enterer
		case identifier
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case overrideReason
		case partOf
		case performer
		case performingOrganization
		case product
		case quantity
		case reason
		case requestingOrganization
		case service
		case status; case _status
		case subject
		case supportingInformation
		case totalPriceComponent
		case unitPriceComponent
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.bodysite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodysite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.costCenter = try Reference(from: _container, forKeyIfPresent: .costCenter)
		self.definitionCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		self.definitionUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .definitionUri, auxiliaryKey: ._definitionUri)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.enteredDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .enteredDate, auxiliaryKey: ._enteredDate)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		self.occurrence = _t_occurrence
		self.overrideReason = try CodeableConcept(from: _container, forKeyIfPresent: .overrideReason)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [ChargeItemPerformer](from: _container, forKeyIfPresent: .performer)
		self.performingOrganization = try Reference(from: _container, forKeyIfPresent: .performingOrganization)
		self.product = try [CodeableReference](from: _container, forKeyIfPresent: .product)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.requestingOrganization = try Reference(from: _container, forKeyIfPresent: .requestingOrganization)
		self.service = try [CodeableReference](from: _container, forKeyIfPresent: .service)
		self.status = try FHIRPrimitive<ChargeItemStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.totalPriceComponent = try MonetaryComponent(from: _container, forKeyIfPresent: .totalPriceComponent)
		self.unitPriceComponent = try MonetaryComponent(from: _container, forKeyIfPresent: .unitPriceComponent)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try account?.encode(on: &_container, forKey: .account)
		try bodysite?.encode(on: &_container, forKey: .bodysite)
		try code.encode(on: &_container, forKey: .code)
		try costCenter?.encode(on: &_container, forKey: .costCenter)
		try definitionCanonical?.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		try definitionUri?.encode(on: &_container, forKey: .definitionUri, auxiliaryKey: ._definitionUri)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try enteredDate?.encode(on: &_container, forKey: .enteredDate, auxiliaryKey: ._enteredDate)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .occurrencePeriod)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceTiming)
			}
		}
		try overrideReason?.encode(on: &_container, forKey: .overrideReason)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try performingOrganization?.encode(on: &_container, forKey: .performingOrganization)
		try product?.encode(on: &_container, forKey: .product)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try requestingOrganization?.encode(on: &_container, forKey: .requestingOrganization)
		try service?.encode(on: &_container, forKey: .service)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try totalPriceComponent?.encode(on: &_container, forKey: .totalPriceComponent)
		try unitPriceComponent?.encode(on: &_container, forKey: .unitPriceComponent)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ChargeItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return account == _other.account
		    && bodysite == _other.bodysite
		    && code == _other.code
		    && costCenter == _other.costCenter
		    && definitionCanonical == _other.definitionCanonical
		    && definitionUri == _other.definitionUri
		    && encounter == _other.encounter
		    && enteredDate == _other.enteredDate
		    && enterer == _other.enterer
		    && identifier == _other.identifier
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && overrideReason == _other.overrideReason
		    && partOf == _other.partOf
		    && performer == _other.performer
		    && performingOrganization == _other.performingOrganization
		    && product == _other.product
		    && quantity == _other.quantity
		    && reason == _other.reason
		    && requestingOrganization == _other.requestingOrganization
		    && service == _other.service
		    && status == _other.status
		    && subject == _other.subject
		    && supportingInformation == _other.supportingInformation
		    && totalPriceComponent == _other.totalPriceComponent
		    && unitPriceComponent == _other.unitPriceComponent
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(account)
		hasher.combine(bodysite)
		hasher.combine(code)
		hasher.combine(costCenter)
		hasher.combine(definitionCanonical)
		hasher.combine(definitionUri)
		hasher.combine(encounter)
		hasher.combine(enteredDate)
		hasher.combine(enterer)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(overrideReason)
		hasher.combine(partOf)
		hasher.combine(performer)
		hasher.combine(performingOrganization)
		hasher.combine(product)
		hasher.combine(quantity)
		hasher.combine(reason)
		hasher.combine(requestingOrganization)
		hasher.combine(service)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(supportingInformation)
		hasher.combine(totalPriceComponent)
		hasher.combine(unitPriceComponent)
	}
}

/**
 Who performed charged service.
 
 Indicates who or what performed or participated in the charged service.
 */
open class ChargeItemPerformer: BackboneElement {
	
	/// What type of performance was done
	public var function: CodeableConcept?
	
	/// Individual who was performing
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
		guard let _other = _other as? ChargeItemPerformer else {
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
