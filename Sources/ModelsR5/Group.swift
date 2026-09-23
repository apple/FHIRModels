//
//  Group.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Group)
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
 Group of multiple entities.
 
 Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected
 to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an
 Organization.
 */
public struct Group: DomainResource {
	
	public static let resourceType: ResourceType = .group
	
	/// Whether this group's record is in active use
	public var active: FHIRPrimitive<FHIRBool>?
	
	/// Include / Exclude group members by Trait
	public var characteristic: [GroupCharacteristic]?
	
	/// Kind of Group members
	public var code: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Natural language description of the group
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for this Group
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Entity that is the custodian of the Group's definition
	public var managingEntity: Reference?
	
	/// Who or what is in group
	public var member: [GroupMember]?
	
	/// Basis for membership in the Group:
	/// 
	/// * 'definitional': The Group.characteristics specified are both necessary and sufficient to determine membership.
	/// All entities that meet the criteria are considered to be members of the group, whether referenced by the group
	/// or not. If members are present, they are individuals that happen to be known as meeting the
	/// Group.characteristics. The list cannot be presumed to be complete.
	/// * 'enumerated': The Group.characteristics are necessary but not sufficient to determine membership. Membership
	/// is determined by being listed as one of the Group.member.
	public var membership: FHIRPrimitive<GroupMembershipBasis>
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Label for Group
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Number of members
	public var quantity: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Identifies the broad classification of the kind of resources the group includes.
	public var type: FHIRPrimitive<GroupType>
	
	/// Designated initializer
	public init(
		active: FHIRPrimitive<FHIRBool>? = nil,
		characteristic: [GroupCharacteristic]? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		managingEntity: Reference? = nil,
		member: [GroupMember]? = nil,
		membership: FHIRPrimitive<GroupMembershipBasis>,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		quantity: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		text: Narrative? = nil,
		type: FHIRPrimitive<GroupType>
	) {
		self.active = active
		self.characteristic = characteristic
		self.code = code
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingEntity = managingEntity
		self.member = member
		self.membership = membership
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.quantity = quantity
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case active; case _active
		case characteristic
		case code
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case managingEntity
		case member
		case membership; case _membership
		case meta
		case modifierExtension
		case name; case _name
		case quantity; case _quantity
		case text
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.active = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .active, auxiliaryKey: ._active)
		self.characteristic = try [GroupCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.managingEntity = try Reference(from: _container, forKeyIfPresent: .managingEntity)
		self.member = try [GroupMember](from: _container, forKeyIfPresent: .member)
		self.membership = try FHIRPrimitive<GroupMembershipBasis>(from: _container, forKey: .membership, auxiliaryKey: ._membership)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.quantity = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try FHIRPrimitive<GroupType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try active?.encode(on: &_container, forKey: .active, auxiliaryKey: ._active)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try managingEntity?.encode(on: &_container, forKey: .managingEntity)
		try member?.encode(on: &_container, forKey: .member)
		try membership.encode(on: &_container, forKey: .membership, auxiliaryKey: ._membership)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Include / Exclude group members by Trait.
 
 Identifies traits whose presence r absence is shared by members of the group.
 */
public struct GroupCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case reference(Reference)
	}
	
	/// Kind of characteristic
	public var code: CodeableConcept
	
	/// Group includes or excludes
	public var exclude: FHIRPrimitive<FHIRBool>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period over which characteristic is tested
	public var period: Period?
	
	/// Value held by characteristic
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		code: CodeableConcept,
		exclude: FHIRPrimitive<FHIRBool>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		value: ValueX
	) {
		self.code = code
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case exclude; case _exclude
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
		case valueReference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code.encode(on: &_container, forKey: .code)
		try exclude.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		
		switch value {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .valueCodeableConcept)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .valueRange)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
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
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueReference)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Who or what is in group.
 
 Identifies the resource instances that are members of the group.
 */
public struct GroupMember: BackboneElement {
	
	/// Reference to the group member
	public var entity: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// If member is no longer in group
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Period member belonged to the group
	public var period: Period?
	
	/// Designated initializer
	public init(
		entity: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		inactive: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil
	) {
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entity
		case `extension` = "extension"
		case id; case _id
		case inactive; case _inactive
		case modifierExtension
		case period
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.entity = try Reference(from: _container, forKey: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try entity.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
	}
}
