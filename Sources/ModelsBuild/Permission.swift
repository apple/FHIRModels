//
//  Permission.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/Permission)
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
 Access Rules.
 
 Permission resource holds access rules for a given data and context.
 */
open class Permission: DomainResource {
	
	override open class var resourceType: ResourceType { return .permission }
	
	/// Business Identifier for permission
	public var identifier: [Identifier]?
	
	/// Status.
	public var status: FHIRPrimitive<PermissionStatus>
	
	/// The person or entity that asserts the permission
	public var asserter: Reference?
	
	/// The date that permission was asserted
	public var date: [FHIRPrimitive<DateTime>]?
	
	/// The period in which the permission is active
	public var validity: Period?
	
	/// The asserted justification for using the data
	public var justification: PermissionJustification?
	
	/// Defines a procedure for arriving at an access decision given the set of rules.
	public var combining: FHIRPrimitive<PermissionRuleCombining>
	
	/// Constraints to the Permission
	public var rule: [PermissionRule]?
	
	/// Designated initializer taking all required properties
	public init(combining: FHIRPrimitive<PermissionRuleCombining>, status: FHIRPrimitive<PermissionStatus>) {
		self.combining = combining
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		asserter: Reference? = nil,
		combining: FHIRPrimitive<PermissionRuleCombining>,
		contained: [ResourceProxy]? = nil,
		date: [FHIRPrimitive<DateTime>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		justification: PermissionJustification? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		rule: [PermissionRule]? = nil,
		status: FHIRPrimitive<PermissionStatus>,
		text: Narrative? = nil,
		validity: Period? = nil
	) {
		self.init(combining: combining, status: status)
		self.asserter = asserter
		self.contained = contained
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.justification = justification
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.text = text
		self.validity = validity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asserter
		case combining; case _combining
		case date; case _date
		case identifier
		case justification
		case rule
		case status; case _status
		case validity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.combining = try FHIRPrimitive<PermissionRuleCombining>(from: _container, forKey: .combining, auxiliaryKey: ._combining)
		self.date = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.justification = try PermissionJustification(from: _container, forKeyIfPresent: .justification)
		self.rule = try [PermissionRule](from: _container, forKeyIfPresent: .rule)
		self.status = try FHIRPrimitive<PermissionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.validity = try Period(from: _container, forKeyIfPresent: .validity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asserter?.encode(on: &_container, forKey: .asserter)
		try combining.encode(on: &_container, forKey: .combining, auxiliaryKey: ._combining)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try justification?.encode(on: &_container, forKey: .justification)
		try rule?.encode(on: &_container, forKey: .rule)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try validity?.encode(on: &_container, forKey: .validity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Permission else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asserter == _other.asserter
		    && combining == _other.combining
		    && date == _other.date
		    && identifier == _other.identifier
		    && justification == _other.justification
		    && rule == _other.rule
		    && status == _other.status
		    && validity == _other.validity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asserter)
		hasher.combine(combining)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(justification)
		hasher.combine(rule)
		hasher.combine(status)
		hasher.combine(validity)
	}
}

/**
 The asserted justification for using the data.
 */
open class PermissionJustification: BackboneElement {
	
	/// The regulatory grounds upon which this Permission builds
	public var basis: [CodeableConcept]?
	
	/// Justifing rational
	public var evidence: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		basis: [CodeableConcept]? = nil,
		evidence: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.basis = basis
		self.evidence = evidence
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis
		case evidence
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basis = try [CodeableConcept](from: _container, forKeyIfPresent: .basis)
		self.evidence = try [Reference](from: _container, forKeyIfPresent: .evidence)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basis?.encode(on: &_container, forKey: .basis)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionJustification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basis == _other.basis
		    && evidence == _other.evidence
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basis)
		hasher.combine(evidence)
	}
}

/**
 Constraints to the Permission.
 
 A set of rules.
 */
open class PermissionRule: BackboneElement {
	
	/// None
	public var type: FHIRPrimitive<ConsentProvisionType>?
	
	/// The selection criteria to identify data that is within scope of this provision
	public var data: [PermissionRuleData]?
	
	/// A description or definition of which activities are allowed to be done on the data
	public var activity: [PermissionRuleActivity]?
	
	/// What limits apply to the use of the data
	public var limit: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activity: [PermissionRuleActivity]? = nil,
		data: [PermissionRuleData]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<ConsentProvisionType>? = nil
	) {
		self.init()
		self.activity = activity
		self.data = data
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activity
		case data
		case limit
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activity = try [PermissionRuleActivity](from: _container, forKeyIfPresent: .activity)
		self.data = try [PermissionRuleData](from: _container, forKeyIfPresent: .data)
		self.limit = try [CodeableConcept](from: _container, forKeyIfPresent: .limit)
		self.type = try FHIRPrimitive<ConsentProvisionType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activity?.encode(on: &_container, forKey: .activity)
		try data?.encode(on: &_container, forKey: .data)
		try limit?.encode(on: &_container, forKey: .limit)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionRule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activity == _other.activity
		    && data == _other.data
		    && limit == _other.limit
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activity)
		hasher.combine(data)
		hasher.combine(limit)
		hasher.combine(type)
	}
}

/**
 A description or definition of which activities are allowed to be done on the data.
 */
open class PermissionRuleActivity: BackboneElement {
	
	/// Authorized actor(s)
	public var actor: [Reference]?
	
	/// Actions controlled by this rule
	public var action: [CodeableConcept]?
	
	/// The purpose for which the permission is given
	public var purpose: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [CodeableConcept]? = nil,
		actor: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		purpose: [CodeableConcept]? = nil
	) {
		self.init()
		self.action = action
		self.actor = actor
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.purpose = purpose
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actor
		case purpose
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [Reference](from: _container, forKeyIfPresent: .actor)
		self.purpose = try [CodeableConcept](from: _container, forKeyIfPresent: .purpose)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionRuleActivity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && actor == _other.actor
		    && purpose == _other.purpose
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(actor)
		hasher.combine(purpose)
	}
}

/**
 The selection criteria to identify data that is within scope of this provision.
 
 A description or definition of which activities are allowed to be done on the data.
 */
open class PermissionRuleData: BackboneElement {
	
	/// Explicit FHIR Resource references
	public var resource: [PermissionRuleDataResource]?
	
	/// Security tag code on .meta.security
	public var security: [Coding]?
	
	/// Timeframe encompasing data create/update
	public var period: Period?
	
	/// Expression identifying the data
	public var expression: Expression?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		resource: [PermissionRuleDataResource]? = nil,
		security: [Coding]? = nil
	) {
		self.init()
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.resource = resource
		self.security = security
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case expression
		case period
		case resource
		case security
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.resource = try [PermissionRuleDataResource](from: _container, forKeyIfPresent: .resource)
		self.security = try [Coding](from: _container, forKeyIfPresent: .security)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try expression?.encode(on: &_container, forKey: .expression)
		try period?.encode(on: &_container, forKey: .period)
		try resource?.encode(on: &_container, forKey: .resource)
		try security?.encode(on: &_container, forKey: .security)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionRuleData else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return expression == _other.expression
		    && period == _other.period
		    && resource == _other.resource
		    && security == _other.security
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(expression)
		hasher.combine(period)
		hasher.combine(resource)
		hasher.combine(security)
	}
}

/**
 Explicit FHIR Resource references.
 */
open class PermissionRuleDataResource: BackboneElement {
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: FHIRPrimitive<ConsentDataMeaning>
	
	/// The actual data reference
	public var reference: Reference
	
	/// Designated initializer taking all required properties
	public init(meaning: FHIRPrimitive<ConsentDataMeaning>, reference: Reference) {
		self.meaning = meaning
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		meaning: FHIRPrimitive<ConsentDataMeaning>,
		modifierExtension: [Extension]? = nil,
		reference: Reference
	) {
		self.init(meaning: meaning, reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case meaning; case _meaning
		case reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.meaning = try FHIRPrimitive<ConsentDataMeaning>(from: _container, forKey: .meaning, auxiliaryKey: ._meaning)
		self.reference = try Reference(from: _container, forKey: .reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try meaning.encode(on: &_container, forKey: .meaning, auxiliaryKey: ._meaning)
		try reference.encode(on: &_container, forKey: .reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionRuleDataResource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return meaning == _other.meaning
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(meaning)
		hasher.combine(reference)
	}
}
