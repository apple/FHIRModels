//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan.
 
 Financial instrument which may be used to pay for or reimburse health care products and services.
 */
open class Coverage: DomainResource {
	
	override open class var resourceType: ResourceType { return .coverage }
	
	/// An identifier for the plan issuer
	public var issuer: Reference?
	
	/// BIN Number
	public var bin: Identifier?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// Type of coverage
	public var type: Coding?
	
	/// Subscriber ID
	public var subscriberId: Identifier?
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// An identifier for the group
	public var group: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the plan
	public var plan: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the plan
	public var subPlan: FHIRPrimitive<FHIRString>?
	
	/// The dependent number
	public var dependent: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// The plan instance or sequence counter
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Plan holder information
	public var subscriber: Reference?
	
	/// Insurer network
	public var network: Identifier?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bin: Identifier? = nil,
							contained: [ResourceProxy]? = nil,
							contract: [Reference]? = nil,
							dependent: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							`extension`: [Extension]? = nil,
							group: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							issuer: Reference? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							network: Identifier? = nil,
							period: Period? = nil,
							plan: FHIRPrimitive<FHIRString>? = nil,
							sequence: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							subPlan: FHIRPrimitive<FHIRString>? = nil,
							subscriber: Reference? = nil,
							subscriberId: Identifier? = nil,
							text: Narrative? = nil,
							type: Coding? = nil)
	{
		self.init()
		self.bin = bin
		self.contained = contained
		self.contract = contract
		self.dependent = dependent
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issuer = issuer
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.period = period
		self.plan = plan
		self.sequence = sequence
		self.subPlan = subPlan
		self.subscriber = subscriber
		self.subscriberId = subscriberId
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bin
		case contract
		case dependent; case _dependent
		case group; case _group
		case identifier
		case issuer
		case network
		case period
		case plan; case _plan
		case sequence; case _sequence
		case subPlan; case _subPlan
		case subscriber
		case subscriberId
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bin = try Identifier(from: _container, forKeyIfPresent: .bin)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.dependent = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.group = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .group, auxiliaryKey: ._group)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.network = try Identifier(from: _container, forKeyIfPresent: .network)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.plan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .plan, auxiliaryKey: ._plan)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.subPlan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlan, auxiliaryKey: ._subPlan)
		self.subscriber = try Reference(from: _container, forKeyIfPresent: .subscriber)
		self.subscriberId = try Identifier(from: _container, forKeyIfPresent: .subscriberId)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bin?.encode(on: &_container, forKey: .bin)
		try contract?.encode(on: &_container, forKey: .contract)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try group?.encode(on: &_container, forKey: .group, auxiliaryKey: ._group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try network?.encode(on: &_container, forKey: .network)
		try period?.encode(on: &_container, forKey: .period)
		try plan?.encode(on: &_container, forKey: .plan, auxiliaryKey: ._plan)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try subPlan?.encode(on: &_container, forKey: .subPlan, auxiliaryKey: ._subPlan)
		try subscriber?.encode(on: &_container, forKey: .subscriber)
		try subscriberId?.encode(on: &_container, forKey: .subscriberId)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Coverage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bin == _other.bin
		    && contract == _other.contract
		    && dependent == _other.dependent
		    && group == _other.group
		    && identifier == _other.identifier
		    && issuer == _other.issuer
		    && network == _other.network
		    && period == _other.period
		    && plan == _other.plan
		    && sequence == _other.sequence
		    && subPlan == _other.subPlan
		    && subscriber == _other.subscriber
		    && subscriberId == _other.subscriberId
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bin)
		hasher.combine(contract)
		hasher.combine(dependent)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(issuer)
		hasher.combine(network)
		hasher.combine(period)
		hasher.combine(plan)
		hasher.combine(sequence)
		hasher.combine(subPlan)
		hasher.combine(subscriber)
		hasher.combine(subscriberId)
		hasher.combine(type)
	}
}
