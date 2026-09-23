//
//  SupplyRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/SupplyRequest)
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
 Request for a medication, substance or device.
 
 A record of a request for a medication, substance or device used in the healthcare setting.
 */
public struct SupplyRequest: DomainResource {
	
	public static let resourceType: ResourceType = .supplyRequest
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When the request was made
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The kind of supply (central, non-stock, etc.)
	public var kind: CodeableConcept?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Medication, Substance, or Device requested to be supplied
	public var orderedItem: Reference?
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// Why the supply item was requested
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// Who initiated this order
	public var source: Reference?
	
	/// Status of the supply request.
	/// Restricted to: ['requested', 'completed', 'failed', 'cancelled']
	public var status: FHIRPrimitive<SupplyRequestStatus>?
	
	/// Who is intended to fulfill the request
	public var supplier: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// When the request should be fulfilled
	public var when: SupplyRequestWhen?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		kind: CodeableConcept? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		orderedItem: Reference? = nil,
		patient: Reference? = nil,
		reason: ReasonX? = nil,
		source: Reference? = nil,
		status: FHIRPrimitive<SupplyRequestStatus>? = nil,
		supplier: [Reference]? = nil,
		text: Narrative? = nil,
		when: SupplyRequestWhen? = nil
	) {
		self.contained = contained
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.kind = kind
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.orderedItem = orderedItem
		self.patient = patient
		self.reason = reason
		self.source = source
		self.status = status
		self.supplier = supplier
		self.text = text
		self.when = when
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case kind
		case language; case _language
		case meta
		case modifierExtension
		case orderedItem
		case patient
		case reasonCodeableConcept
		case reasonReference
		case source
		case status; case _status
		case supplier
		case text
		case when
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.kind = try CodeableConcept(from: _container, forKeyIfPresent: .kind)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.orderedItem = try Reference(from: _container, forKeyIfPresent: .orderedItem)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.reason = try Self._decodeReason(from: _container)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<SupplyRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.when = try SupplyRequestWhen(from: _container, forKeyIfPresent: .when)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try kind?.encode(on: &_container, forKey: .kind)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try orderedItem?.encode(on: &_container, forKey: .orderedItem)
		try patient?.encode(on: &_container, forKey: .patient)
		if let _enum = reason {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reasonReference)
		}
		}
		try source?.encode(on: &_container, forKey: .source)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try supplier?.encode(on: &_container, forKey: .supplier)
		try text?.encode(on: &_container, forKey: .text)
		try when?.encode(on: &_container, forKey: .when)
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
 When the request should be fulfilled.
 */
public struct SupplyRequestWhen: BackboneElement {
	
	/// Fulfilment code
	public var code: CodeableConcept?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Formal fulfillment schedule
	public var schedule: Timing?
	
	/// Designated initializer
	public init(
		code: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		schedule: Timing? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case schedule
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
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try schedule?.encode(on: &_container, forKey: .schedule)
	}
}
