//
//  Permission.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Permission)
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
 Access Rules.
 
 Permission resource holds access rules for a given data and context.
 */
public struct Permission: DomainResource {
	
	public static let resourceType: ResourceType = .permission
	
	/// The person or entity that asserts the permission
	public var asserter: Reference?
	
	/// Defines a procedure for arriving at an access decision given the set of rules.
	public var combining: FHIRPrimitive<PermissionRuleCombining>
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The date that permission was asserted
	public var date: [FHIRPrimitive<DateTime>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The asserted justification for using the data
	public var justification: PermissionJustification?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Constraints to the Permission
	public var rule: [PermissionRule]?
	
	/// Status.
	public var status: FHIRPrimitive<PermissionStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The period in which the permission is active
	public var validity: Period?
	
	/// Designated initializer
	public init(
		asserter: Reference? = nil,
		combining: FHIRPrimitive<PermissionRuleCombining>,
		contained: [ResourceProxy]? = nil,
		date: [FHIRPrimitive<DateTime>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
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
		self.asserter = asserter
		self.combining = combining
		self.contained = contained
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.justification = justification
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.status = status
		self.text = text
		self.validity = validity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case asserter
		case combining; case _combining
		case contained
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case implicitRules; case _implicitRules
		case justification
		case language; case _language
		case meta
		case modifierExtension
		case rule
		case status; case _status
		case text
		case validity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.combining = try FHIRPrimitive<PermissionRuleCombining>(from: _container, forKey: .combining, auxiliaryKey: ._combining)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.justification = try PermissionJustification(from: _container, forKeyIfPresent: .justification)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rule = try [PermissionRule](from: _container, forKeyIfPresent: .rule)
		self.status = try FHIRPrimitive<PermissionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.validity = try Period(from: _container, forKeyIfPresent: .validity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try asserter?.encode(on: &_container, forKey: .asserter)
		try combining.encode(on: &_container, forKey: .combining, auxiliaryKey: ._combining)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try justification?.encode(on: &_container, forKey: .justification)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rule?.encode(on: &_container, forKey: .rule)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try validity?.encode(on: &_container, forKey: .validity)
	}
}

/**
 The asserted justification for using the data.
 */
public struct PermissionJustification: BackboneElement {
	
	/// The regulatory grounds upon which this Permission builds
	public var basis: [CodeableConcept]?
	
	/// Justifing rational
	public var evidence: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		basis: [CodeableConcept]? = nil,
		evidence: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basis = try [CodeableConcept](from: _container, forKeyIfPresent: .basis)
		self.evidence = try [Reference](from: _container, forKeyIfPresent: .evidence)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try basis?.encode(on: &_container, forKey: .basis)
		try evidence?.encode(on: &_container, forKey: .evidence)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Constraints to the Permission.
 
 A set of rules.
 */
public struct PermissionRule: BackboneElement {
	
	/// A description or definition of which activities are allowed to be done on the data
	public var activity: [PermissionRuleActivity]?
	
	/// The selection criteria to identify data that is within scope of this provision
	public var data: [PermissionRuleData]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// What limits apply to the use of the data
	public var limit: [CodeableConcept]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// None
	public var type: FHIRPrimitive<ConsentProvisionType>?
	
	/// Designated initializer
	public init(
		activity: [PermissionRuleActivity]? = nil,
		data: [PermissionRuleData]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		type: FHIRPrimitive<ConsentProvisionType>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case limit
		case modifierExtension
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.activity = try [PermissionRuleActivity](from: _container, forKeyIfPresent: .activity)
		self.data = try [PermissionRuleData](from: _container, forKeyIfPresent: .data)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.limit = try [CodeableConcept](from: _container, forKeyIfPresent: .limit)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try FHIRPrimitive<ConsentProvisionType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try activity?.encode(on: &_container, forKey: .activity)
		try data?.encode(on: &_container, forKey: .data)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try limit?.encode(on: &_container, forKey: .limit)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 A description or definition of which activities are allowed to be done on the data.
 */
public struct PermissionRuleActivity: BackboneElement {
	
	/// Actions controlled by this rule
	public var action: [CodeableConcept]?
	
	/// Authorized actor(s)
	public var actor: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The purpose for which the permission is given
	public var purpose: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		action: [CodeableConcept]? = nil,
		actor: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		purpose: [CodeableConcept]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case purpose
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [Reference](from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.purpose = try [CodeableConcept](from: _container, forKeyIfPresent: .purpose)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try purpose?.encode(on: &_container, forKey: .purpose)
	}
}

/**
 The selection criteria to identify data that is within scope of this provision.
 
 A description or definition of which activities are allowed to be done on the data.
 */
public struct PermissionRuleData: BackboneElement {
	
	/// Expression identifying the data
	public var expression: Expression?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Timeframe encompasing data create/update
	public var period: [Period]?
	
	/// Explicit FHIR Resource references
	public var resource: [PermissionRuleDataResource]?
	
	/// Security tag code on .meta.security
	public var security: [Coding]?
	
	/// Designated initializer
	public init(
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: [Period]? = nil,
		resource: [PermissionRuleDataResource]? = nil,
		security: [Coding]? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case resource
		case security
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try [Period](from: _container, forKeyIfPresent: .period)
		self.resource = try [PermissionRuleDataResource](from: _container, forKeyIfPresent: .resource)
		self.security = try [Coding](from: _container, forKeyIfPresent: .security)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try expression?.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try resource?.encode(on: &_container, forKey: .resource)
		try security?.encode(on: &_container, forKey: .security)
	}
}

/**
 Explicit FHIR Resource references.
 */
public struct PermissionRuleDataResource: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: FHIRPrimitive<ConsentDataMeaning>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The actual data reference
	public var reference: Reference
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		meaning: FHIRPrimitive<ConsentDataMeaning>,
		modifierExtension: [Extension]? = nil,
		reference: Reference
	) {
		self.`extension` = `extension`
		self.id = id
		self.meaning = meaning
		self.modifierExtension = modifierExtension
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case meaning; case _meaning
		case modifierExtension
		case reference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.meaning = try FHIRPrimitive<ConsentDataMeaning>(from: _container, forKey: .meaning, auxiliaryKey: ._meaning)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Reference(from: _container, forKey: .reference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try meaning.encode(on: &_container, forKey: .meaning, auxiliaryKey: ._meaning)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference)
	}
}
