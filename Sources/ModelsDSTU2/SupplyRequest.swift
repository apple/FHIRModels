//
//  SupplyRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/SupplyRequest)
//  Copyright 2020 Apple Inc.
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
open class SupplyRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .supplyRequest }
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Patient for whom the item is supplied
	public var patient: Reference?
	
	/// Who initiated this order
	public var source: Reference?
	
	/// When the request was made
	public var date: FHIRPrimitive<DateTime>?
	
	/// Unique identifier
	public var identifier: Identifier?
	
	/// Status of the supply request.
	/// Restricted to: ['requested', 'completed', 'failed', 'cancelled']
	public var status: FHIRPrimitive<SupplyRequestStatus>?
	
	/// The kind of supply (central, non-stock, etc.)
	public var kind: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied
	public var orderedItem: Reference?
	
	/// Who is intended to fulfill the request
	public var supplier: [Reference]?
	
	/// Why the supply item was requested
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// When the request should be fulfilled
	public var when: SupplyRequestWhen?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							when: SupplyRequestWhen? = nil)
	{
		self.init()
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
		case date; case _date
		case identifier
		case kind
		case orderedItem
		case patient
		case reasonCodeableConcept
		case reasonReference
		case source
		case status; case _status
		case supplier
		case when
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.kind = try CodeableConcept(from: _container, forKeyIfPresent: .kind)
		self.orderedItem = try Reference(from: _container, forKeyIfPresent: .orderedItem)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<SupplyRequestStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.supplier = try [Reference](from: _container, forKeyIfPresent: .supplier)
		self.when = try SupplyRequestWhen(from: _container, forKeyIfPresent: .when)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try kind?.encode(on: &_container, forKey: .kind)
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
		try when?.encode(on: &_container, forKey: .when)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && identifier == _other.identifier
		    && kind == _other.kind
		    && orderedItem == _other.orderedItem
		    && patient == _other.patient
		    && reason == _other.reason
		    && source == _other.source
		    && status == _other.status
		    && supplier == _other.supplier
		    && when == _other.when
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(kind)
		hasher.combine(orderedItem)
		hasher.combine(patient)
		hasher.combine(reason)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(supplier)
		hasher.combine(when)
	}
}

/**
 When the request should be fulfilled.
 */
open class SupplyRequestWhen: BackboneElement {
	
	/// Fulfilment code
	public var code: CodeableConcept?
	
	/// Formal fulfillment schedule
	public var schedule: Timing?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							schedule: Timing? = nil)
	{
		self.init()
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.schedule = schedule
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case schedule
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.schedule = try Timing(from: _container, forKeyIfPresent: .schedule)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try schedule?.encode(on: &_container, forKey: .schedule)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SupplyRequestWhen else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && schedule == _other.schedule
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(schedule)
	}
}
