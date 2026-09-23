//
//  CareTeam.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/CareTeam)
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
 Planned participants in the coordination and delivery of care.
 
 The Care Team includes all the people, organizations, and care teams who participate or plan to participate in the
 coordination and delivery of care.
 */
public struct CareTeam: DomainResource {
	
	public static let resourceType: ResourceType = .careTeam
	
	/// Type of team
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Ids for this team
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Organization responsible for the care team
	public var managingOrganization: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name of the team, such as crisis assessment team
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Comments made about the CareTeam
	public var note: [Annotation]?
	
	/// Members of the team
	public var participant: [CareTeamParticipant]?
	
	/// Time period team covers
	public var period: Period?
	
	/// Why the care team exists
	public var reason: [CodeableReference]?
	
	/// Indicates the current state of the care team.
	public var status: FHIRPrimitive<CareTeamStatus>?
	
	/// Who care team is for
	public var subject: Reference?
	
	/// A contact detail for the care team (that applies to all members)
	public var telecom: [ContactPoint]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingOrganization: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		note: [Annotation]? = nil,
		participant: [CareTeamParticipant]? = nil,
		period: Period? = nil,
		reason: [CodeableReference]? = nil,
		status: FHIRPrimitive<CareTeamStatus>? = nil,
		subject: Reference? = nil,
		telecom: [ContactPoint]? = nil,
		text: Narrative? = nil
	) {
		self.category = category
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingOrganization = managingOrganization
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.note = note
		self.participant = participant
		self.period = period
		self.reason = reason
		self.status = status
		self.subject = subject
		self.telecom = telecom
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingOrganization
		case meta
		case modifierExtension
		case name; case _name
		case note
		case participant
		case period
		case reason
		case status; case _status
		case subject
		case telecom
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingOrganization = try [Reference](from: _container, forKeyIfPresent: .managingOrganization)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.participant = try [CareTeamParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.status = try FHIRPrimitive<CareTeamStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try reason?.encode(on: &_container, forKey: .reason)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Members of the team.
 
 Identifies all people and organizations who are expected to be involved in the care team.
 */
public struct CareTeamParticipant: BackboneElement {
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Equatable, Hashable, Sendable {
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// When the member is generally available within this care team
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Who is involved
	public var member: Reference?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Entity that the participant is acting as a proxy of, or an agent of, or in the interest of, or as a
	/// representative of
	public var onBehalfOf: Reference?
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	/// Basis for the member's participation
	public var supportingInfo: [Reference]?
	
	/// Designated initializer
	public init(
		effective: EffectiveX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		member: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		role: CodeableConcept? = nil,
		supportingInfo: [Reference]? = nil
	) {
		self.effective = effective
		self.`extension` = `extension`
		self.id = id
		self.member = member
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
		self.supportingInfo = supportingInfo
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effectivePeriod
		case effectiveTiming
		case `extension` = "extension"
		case id; case _id
		case member
		case modifierExtension
		case onBehalfOf
		case role
		case supportingInfo
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.effective = try Self._decodeEffective(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.member = try Reference(from: _container, forKeyIfPresent: .member)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = effective {
		switch _enum {
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .effectivePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .effectiveTiming)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try member?.encode(on: &_container, forKey: .member)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try role?.encode(on: &_container, forKey: .role)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEffective(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EffectiveX? {
		var _t_effective: EffectiveX? = nil
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			_t_effective = .period(effectivePeriod)
		}
		if let effectiveTiming = try Timing(from: _container, forKeyIfPresent: .effectiveTiming) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTiming, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .timing(effectiveTiming)
		}
		return _t_effective
	}
}
