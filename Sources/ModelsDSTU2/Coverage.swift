//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan.
 
 Financial instrument which may be used to pay for or reimburse health care products and services.
 */
public struct Coverage: DomainResource {
	
	public static let resourceType: ResourceType = .coverage
	
	/// BIN Number
	public var bin: Identifier?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// The dependent number
	public var dependent: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// An identifier for the group
	public var group: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// An identifier for the plan issuer
	public var issuer: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Insurer network
	public var network: Identifier?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// An identifier for the plan
	public var plan: FHIRPrimitive<FHIRString>?
	
	/// The plan instance or sequence counter
	public var sequence: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// An identifier for the subsection of the plan
	public var subPlan: FHIRPrimitive<FHIRString>?
	
	/// Plan holder information
	public var subscriber: Reference?
	
	/// Subscriber ID
	public var subscriberId: Identifier?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type of coverage
	public var type: Coding?
	
	/// Designated initializer
	public init(
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
		type: Coding? = nil
	) {
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
		case resourceType
		case bin
		case contained
		case contract
		case dependent; case _dependent
		case `extension` = "extension"
		case group; case _group
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issuer
		case language; case _language
		case meta
		case modifierExtension
		case network
		case period
		case plan; case _plan
		case sequence; case _sequence
		case subPlan; case _subPlan
		case subscriber
		case subscriberId
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bin = try Identifier(from: _container, forKeyIfPresent: .bin)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.dependent = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .group, auxiliaryKey: ._group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issuer = try Reference(from: _container, forKeyIfPresent: .issuer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.network = try Identifier(from: _container, forKeyIfPresent: .network)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.plan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .plan, auxiliaryKey: ._plan)
		self.sequence = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.subPlan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlan, auxiliaryKey: ._subPlan)
		self.subscriber = try Reference(from: _container, forKeyIfPresent: .subscriber)
		self.subscriberId = try Identifier(from: _container, forKeyIfPresent: .subscriberId)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try bin?.encode(on: &_container, forKey: .bin)
		try contained?.encode(on: &_container, forKey: .contained)
		try contract?.encode(on: &_container, forKey: .contract)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group, auxiliaryKey: ._group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issuer?.encode(on: &_container, forKey: .issuer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try network?.encode(on: &_container, forKey: .network)
		try period?.encode(on: &_container, forKey: .period)
		try plan?.encode(on: &_container, forKey: .plan, auxiliaryKey: ._plan)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try subPlan?.encode(on: &_container, forKey: .subPlan, auxiliaryKey: ._subPlan)
		try subscriber?.encode(on: &_container, forKey: .subscriber)
		try subscriberId?.encode(on: &_container, forKey: .subscriberId)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}
