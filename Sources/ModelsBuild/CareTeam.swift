//
//  CareTeam.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/CareTeam)
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
 Planned participants in the coordination and delivery of care.
 
 The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of
 care.
 */
open class CareTeam: DomainResource {
	
	override open class var resourceType: ResourceType { return .careTeam }
	
	/// External Ids for this team
	public var identifier: [Identifier]?
	
	/// Indicates the current state of the care team.
	public var status: FHIRPrimitive<CareTeamStatus>?
	
	/// Type of team
	public var category: [CodeableConcept]?
	
	/// Name of the team, such as crisis assessment team
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Who care team is for
	public var subject: Reference?
	
	/// Time period team covers
	public var period: Period?
	
	/// Members of the team
	public var participant: [CareTeamParticipant]?
	
	/// Why the care team exists
	public var reason: [CodeableReference]?
	
	/// Organization responsible for the care team
	public var managingOrganization: [Reference]?
	
	/// A contact detail for the care team (that applies to all members)
	public var telecom: [ContactPoint]?
	
	/// Comments made about the CareTeam
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init()
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
		case category
		case identifier
		case managingOrganization
		case name; case _name
		case note
		case participant
		case period
		case reason
		case status; case _status
		case subject
		case telecom
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingOrganization = try [Reference](from: _container, forKeyIfPresent: .managingOrganization)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.participant = try [CareTeamParticipant](from: _container, forKeyIfPresent: .participant)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.status = try FHIRPrimitive<CareTeamStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.telecom = try [ContactPoint](from: _container, forKeyIfPresent: .telecom)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingOrganization?.encode(on: &_container, forKey: .managingOrganization)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try note?.encode(on: &_container, forKey: .note)
		try participant?.encode(on: &_container, forKey: .participant)
		try period?.encode(on: &_container, forKey: .period)
		try reason?.encode(on: &_container, forKey: .reason)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try telecom?.encode(on: &_container, forKey: .telecom)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CareTeam else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && identifier == _other.identifier
		    && managingOrganization == _other.managingOrganization
		    && name == _other.name
		    && note == _other.note
		    && participant == _other.participant
		    && period == _other.period
		    && reason == _other.reason
		    && status == _other.status
		    && subject == _other.subject
		    && telecom == _other.telecom
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(identifier)
		hasher.combine(managingOrganization)
		hasher.combine(name)
		hasher.combine(note)
		hasher.combine(participant)
		hasher.combine(period)
		hasher.combine(reason)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(telecom)
	}
}

/**
 Members of the team.
 
 Identifies all people and organizations who are expected to be involved in the care team.
 */
open class CareTeamParticipant: BackboneElement {
	
	/// All possible types for "effective[x]"
	public enum EffectiveX: Hashable {
		case period(Period)
		case timing(Timing)
	}
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	/// Who is involved
	public var member: Reference?
	
	/// Entity that the participant is acting as a proxy of, or an agent of, or in the interest of, or as a
	/// representative of
	public var onBehalfOf: Reference?
	
	/// When the member is generally available within this care team
	/// One of `effective[x]`
	public var effective: EffectiveX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		effective: EffectiveX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		member: Reference? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		role: CodeableConcept? = nil
	) {
		self.init()
		self.effective = effective
		self.`extension` = `extension`
		self.id = id
		self.member = member
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effectivePeriod
		case effectiveTiming
		case member
		case onBehalfOf
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_effective: EffectiveX? = nil
		if let effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectivePeriod, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .period(effectivePeriod)
		}
		if let effectiveTiming = try Timing(from: _container, forKeyIfPresent: .effectiveTiming) {
			if _t_effective != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectiveTiming, in: _container, debugDescription: "More than one value provided for \"effective\"")
			}
			_t_effective = .timing(effectiveTiming)
		}
		self.effective = _t_effective
		self.member = try Reference(from: _container, forKeyIfPresent: .member)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = effective {
			switch _enum {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectivePeriod)
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .effectiveTiming)
			}
		}
		try member?.encode(on: &_container, forKey: .member)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CareTeamParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return effective == _other.effective
		    && member == _other.member
		    && onBehalfOf == _other.onBehalfOf
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(effective)
		hasher.combine(member)
		hasher.combine(onBehalfOf)
		hasher.combine(role)
	}
}
