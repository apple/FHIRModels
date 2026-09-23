//
//  DeviceRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DeviceRequest)
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
 Medical device request.
 
 Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
 assistive device, such as a walker.
 */
public struct DeviceRequest: DomainResource {
	
	public static let resourceType: ResourceType = .deviceRequest
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// All possible types for "product[x]"
	public enum ProductX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// PRN status of request
	public var asNeeded: FHIRPrimitive<FHIRBool>?
	
	/// Device usage reason
	public var asNeededFor: CodeableConcept?
	
	/// When recorded
	public var authoredOn: FHIRPrimitive<DateTime>?
	
	/// What request fulfills
	public var basedOn: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// True if the request is to stop or not to start using the device
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Identifier of composite request
	public var groupIdentifier: Identifier?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Request identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Associated insurance coverage
	public var insurance: [Reference]?
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: FHIRPrimitive<RequestIntent>
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Requested location
	public var location: [CodeableReference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Notes or comments
	public var note: [Annotation]?
	
	/// Desired time or schedule for use
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Device details
	public var parameter: [DeviceRequestParameter]?
	
	/// Requested Filler
	public var performer: CodeableReference?
	
	/// Indicates how quickly the request should be addressed with respect to other requests.
	public var priority: FHIRPrimitive<RequestPriority>?
	
	/// Device requested
	/// One of `product[x]`
	public var product: ProductX
	
	/// Quantity of devices to supply
	public var quantity: FHIRPrimitive<FHIRInteger>?
	
	/// Coded/Linked Reason for request
	public var reason: [CodeableReference]?
	
	/// Request provenance
	public var relevantHistory: [Reference]?
	
	/// What request replaces
	public var replaces: [Reference]?
	
	/// Who/what submitted the device request
	public var requester: Reference?
	
	/// The status of the request.
	public var status: FHIRPrimitive<RequestStatus>?
	
	/// Focus of request
	public var subject: Reference
	
	/// Additional clinical information
	public var supportingInfo: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		asNeeded: FHIRPrimitive<FHIRBool>? = nil,
		asNeededFor: CodeableConcept? = nil,
		authoredOn: FHIRPrimitive<DateTime>? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		encounter: Reference? = nil,
		`extension`: [Extension]? = nil,
		groupIdentifier: Identifier? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurance: [Reference]? = nil,
		intent: FHIRPrimitive<RequestIntent>,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: [CodeableReference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		parameter: [DeviceRequestParameter]? = nil,
		performer: CodeableReference? = nil,
		priority: FHIRPrimitive<RequestPriority>? = nil,
		product: ProductX,
		quantity: FHIRPrimitive<FHIRInteger>? = nil,
		reason: [CodeableReference]? = nil,
		relevantHistory: [Reference]? = nil,
		replaces: [Reference]? = nil,
		requester: Reference? = nil,
		status: FHIRPrimitive<RequestStatus>? = nil,
		subject: Reference,
		supportingInfo: [Reference]? = nil,
		text: Narrative? = nil
	) {
		self.asNeeded = asNeeded
		self.asNeededFor = asNeededFor
		self.authoredOn = authoredOn
		self.basedOn = basedOn
		self.contained = contained
		self.doNotPerform = doNotPerform
		self.encounter = encounter
		self.`extension` = `extension`
		self.groupIdentifier = groupIdentifier
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurance = insurance
		self.intent = intent
		self.language = language
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.parameter = parameter
		self.performer = performer
		self.priority = priority
		self.product = product
		self.quantity = quantity
		self.reason = reason
		self.relevantHistory = relevantHistory
		self.replaces = replaces
		self.requester = requester
		self.status = status
		self.subject = subject
		self.supportingInfo = supportingInfo
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asNeeded; case _asNeeded
		case asNeededFor
		case authoredOn; case _authoredOn
		case basedOn
		case contained
		case doNotPerform; case _doNotPerform
		case encounter
		case `extension` = "extension"
		case groupIdentifier
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurance
		case intent; case _intent
		case language; case _language
		case location
		case meta
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case parameter
		case performer
		case priority; case _priority
		case productCanonical; case _productCanonical
		case productCodeableConcept
		case productReference
		case quantity; case _quantity
		case reason
		case relevantHistory
		case replaces
		case requester
		case status; case _status
		case subject
		case supportingInfo
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asNeeded = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeeded, auxiliaryKey: ._asNeeded)
		self.asNeededFor = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededFor)
		self.authoredOn = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .authoredOn, auxiliaryKey: ._authoredOn)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.groupIdentifier = try Identifier(from: _container, forKeyIfPresent: .groupIdentifier)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurance = try [Reference](from: _container, forKeyIfPresent: .insurance)
		self.intent = try FHIRPrimitive<RequestIntent>(from: _container, forKey: .intent, auxiliaryKey: ._intent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try [CodeableReference](from: _container, forKeyIfPresent: .location)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.parameter = try [DeviceRequestParameter](from: _container, forKeyIfPresent: .parameter)
		self.performer = try CodeableReference(from: _container, forKeyIfPresent: .performer)
		self.priority = try FHIRPrimitive<RequestPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.product = try Self._decodeProduct(from: _container)
		self.quantity = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.replaces = try [Reference](from: _container, forKeyIfPresent: .replaces)
		self.requester = try Reference(from: _container, forKeyIfPresent: .requester)
		self.status = try FHIRPrimitive<RequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try asNeeded?.encode(on: &_container, forKey: .asNeeded, auxiliaryKey: ._asNeeded)
		try asNeededFor?.encode(on: &_container, forKey: .asNeededFor)
		try authoredOn?.encode(on: &_container, forKey: .authoredOn, auxiliaryKey: ._authoredOn)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try contained?.encode(on: &_container, forKey: .contained)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try groupIdentifier?.encode(on: &_container, forKey: .groupIdentifier)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurance?.encode(on: &_container, forKey: .insurance)
		try intent.encode(on: &_container, forKey: .intent, auxiliaryKey: ._intent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
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
		try parameter?.encode(on: &_container, forKey: .parameter)
		try performer?.encode(on: &_container, forKey: .performer)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		
		switch product {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .productCanonical, auxiliaryKey: ._productCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .productCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .productReference)
		}
		
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try reason?.encode(on: &_container, forKey: .reason)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try replaces?.encode(on: &_container, forKey: .replaces)
		try requester?.encode(on: &_container, forKey: .requester)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
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
	) throws -> ProductX {
		var _t_product: ProductX? = nil
		if let productCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .productCanonical, auxiliaryKey: ._productCanonical) {
			_t_product = .canonical(productCanonical)
		}
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productCodeableConcept, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .codeableConcept(productCodeableConcept)
		}
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		guard let _t_product else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.productReference)
			throw DecodingError.valueNotFound(ProductX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"product\" but have none"))
		}
		return _t_product
	}
}

/**
 Device details.
 
 Specific parameters for the ordered item.  For example, the prism value for lenses.
 */
public struct DeviceRequestParameter: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// Device detail
	public var code: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Value of detail
	/// One of `value[x]`
	public var value: ValueX?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		if let _enum = value {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX? {
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			_t_value = .boolean(valueBoolean)
		}
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueRange = try Range(from: _container, forKeyIfPresent: .valueRange) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueRange, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .range(valueRange)
		}
		return _t_value
	}
}
