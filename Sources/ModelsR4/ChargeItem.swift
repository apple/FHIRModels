//
//  ChargeItem.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/ChargeItem)
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
 Item containing charge code(s) associated with the provision of healthcare provider products.
 
 The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
 referring not only to the product, but containing in addition details of the provision, like date, time, amounts and
 participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal
 cost allocation.
 */
public struct ChargeItem: DomainResource {
	
	public static let resourceType: ResourceType = .chargeItem
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "product[x]"
	public enum ProductX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Account to place this charge
	public var account: [Reference]?
	
	/// Anatomical location, if relevant
	public var bodysite: [CodeableConcept]?
	
	/// A code that identifies the charge, like a billing code
	public var code: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter / Episode associated with event
	public var context: Reference?
	
	/// Organization that has ownership of the (potential, future) revenue
	public var costCenter: Reference?
	
	/// Resource defining the code of this ChargeItem
	public var definitionCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Defining information about the code of this charge item
	public var definitionUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Date the charge item was entered
	public var enteredDate: FHIRPrimitive<DateTime>?
	
	/// Individual who was entering
	public var enterer: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Factor overriding the associated rules
	public var factorOverride: FHIRPrimitive<FHIRDecimal>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for item
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments made about the ChargeItem
	public var note: [Annotation]?
	
	/// When the charged service was applied
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Reason for overriding the list price/factor
	public var overrideReason: FHIRPrimitive<FHIRString>?
	
	/// Part of referenced ChargeItem
	public var partOf: [Reference]?
	
	/// Who performed charged service
	public var performer: [ChargeItemPerformer]?
	
	/// Organization providing the charged service
	public var performingOrganization: Reference?
	
	/// Price overriding the associated rules
	public var priceOverride: Money?
	
	/// Product charged
	/// One of `product[x]`
	public var product: ProductX?
	
	/// Quantity of which the charge item has been serviced
	public var quantity: Quantity?
	
	/// Why was the charged  service rendered?
	public var reason: [CodeableConcept]?
	
	/// Organization requesting the charged service
	public var requestingOrganization: Reference?
	
	/// Which rendered service is being charged?
	public var service: [Reference]?
	
	/// The current state of the ChargeItem.
	public var status: FHIRPrimitive<ChargeItemStatus>
	
	/// Individual service was done for/to
	public var subject: Reference
	
	/// Further information supporting this charge
	public var supportingInformation: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		account: [Reference]? = nil,
		bodysite: [CodeableConcept]? = nil,
		code: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		context: Reference? = nil,
		costCenter: Reference? = nil,
		definitionCanonical: [FHIRPrimitive<Canonical>]? = nil,
		definitionUri: [FHIRPrimitive<FHIRURI>]? = nil,
		enteredDate: FHIRPrimitive<DateTime>? = nil,
		enterer: Reference? = nil,
		`extension`: [Extension]? = nil,
		factorOverride: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		overrideReason: FHIRPrimitive<FHIRString>? = nil,
		partOf: [Reference]? = nil,
		performer: [ChargeItemPerformer]? = nil,
		performingOrganization: Reference? = nil,
		priceOverride: Money? = nil,
		product: ProductX? = nil,
		quantity: Quantity? = nil,
		reason: [CodeableConcept]? = nil,
		requestingOrganization: Reference? = nil,
		service: [Reference]? = nil,
		status: FHIRPrimitive<ChargeItemStatus>,
		subject: Reference,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.account = account
		self.bodysite = bodysite
		self.code = code
		self.contained = contained
		self.context = context
		self.costCenter = costCenter
		self.definitionCanonical = definitionCanonical
		self.definitionUri = definitionUri
		self.enteredDate = enteredDate
		self.enterer = enterer
		self.`extension` = `extension`
		self.factorOverride = factorOverride
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
		self.priceOverride = priceOverride
		self.product = product
		self.quantity = quantity
		self.reason = reason
		self.requestingOrganization = requestingOrganization
		self.service = service
		self.status = status
		self.subject = subject
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case account
		case bodysite
		case code
		case contained
		case context
		case costCenter
		case definitionCanonical; case _definitionCanonical
		case definitionUri; case _definitionUri
		case enteredDate; case _enteredDate
		case enterer
		case `extension` = "extension"
		case factorOverride; case _factorOverride
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case overrideReason; case _overrideReason
		case partOf
		case performer
		case performingOrganization
		case priceOverride
		case productCodeableConcept
		case productReference
		case quantity
		case reason
		case requestingOrganization
		case service
		case status; case _status
		case subject
		case supportingInformation
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.account = try [Reference](from: _container, forKeyIfPresent: .account)
		self.bodysite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodysite)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.costCenter = try Reference(from: _container, forKeyIfPresent: .costCenter)
		self.definitionCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		self.definitionUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .definitionUri, auxiliaryKey: ._definitionUri)
		self.enteredDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .enteredDate, auxiliaryKey: ._enteredDate)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factorOverride = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factorOverride, auxiliaryKey: ._factorOverride)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.overrideReason = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .overrideReason, auxiliaryKey: ._overrideReason)
		self.partOf = try [Reference](from: _container, forKeyIfPresent: .partOf)
		self.performer = try [ChargeItemPerformer](from: _container, forKeyIfPresent: .performer)
		self.performingOrganization = try Reference(from: _container, forKeyIfPresent: .performingOrganization)
		self.priceOverride = try Money(from: _container, forKeyIfPresent: .priceOverride)
		self.product = try Self._decodeProduct(from: _container)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.reason = try [CodeableConcept](from: _container, forKeyIfPresent: .reason)
		self.requestingOrganization = try Reference(from: _container, forKeyIfPresent: .requestingOrganization)
		self.service = try [Reference](from: _container, forKeyIfPresent: .service)
		self.status = try FHIRPrimitive<ChargeItemStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try account?.encode(on: &_container, forKey: .account)
		try bodysite?.encode(on: &_container, forKey: .bodysite)
		try code.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try context?.encode(on: &_container, forKey: .context)
		try costCenter?.encode(on: &_container, forKey: .costCenter)
		try definitionCanonical?.encode(on: &_container, forKey: .definitionCanonical, auxiliaryKey: ._definitionCanonical)
		try definitionUri?.encode(on: &_container, forKey: .definitionUri, auxiliaryKey: ._definitionUri)
		try enteredDate?.encode(on: &_container, forKey: .enteredDate, auxiliaryKey: ._enteredDate)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factorOverride?.encode(on: &_container, forKey: .factorOverride, auxiliaryKey: ._factorOverride)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try overrideReason?.encode(on: &_container, forKey: .overrideReason, auxiliaryKey: ._overrideReason)
		try partOf?.encode(on: &_container, forKey: .partOf)
		try performer?.encode(on: &_container, forKey: .performer)
		try performingOrganization?.encode(on: &_container, forKey: .performingOrganization)
		try priceOverride?.encode(on: &_container, forKey: .priceOverride)
		if let _enum = product {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .productCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .productReference)
		}
		}
		try quantity?.encode(on: &_container, forKey: .quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try requestingOrganization?.encode(on: &_container, forKey: .requestingOrganization)
		try service?.encode(on: &_container, forKey: .service)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
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
		return _t_occurrence
	}
	
	private static func _decodeProduct(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ProductX? {
		var _t_product: ProductX? = nil
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			_t_product = .codeableConcept(productCodeableConcept)
		}
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		return _t_product
	}
}

/**
 Who performed charged service.
 
 Indicates who or what performed or participated in the charged service.
 */
public struct ChargeItemPerformer: BackboneElement {
	
	/// Individual who was performing
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What type of performance was done
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
