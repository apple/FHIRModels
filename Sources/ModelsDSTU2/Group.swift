//
//  Group.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Group)
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
 Group of multiple entities.
 
 Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected
 to act collectively and are not formally or legally recognized; i.e. a collection of entities that isn't an
 Organization.
 */
open class Group: DomainResource {
	
	override open class var resourceType: ResourceType { return .group }
	
	/// Unique id
	public var identifier: [Identifier]?
	
	/// Identifies the broad classification of the kind of resources the group includes.
	/// Restricted to: ['person', 'animal', 'practitioner', 'device', 'medication', 'substance']
	public var type: FHIRPrimitive<GroupType>
	
	/// Descriptive or actual
	public var actual: FHIRPrimitive<FHIRBool>
	
	/// Kind of Group members
	public var code: CodeableConcept?
	
	/// Label for Group
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Number of members
	public var quantity: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Trait of group members
	public var characteristic: [GroupCharacteristic]?
	
	/// Who or what is in group
	public var member: [GroupMember]?
	
	/// Designated initializer taking all required properties
	public init(actual: FHIRPrimitive<FHIRBool>, type: FHIRPrimitive<GroupType>) {
		self.actual = actual
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actual: FHIRPrimitive<FHIRBool>,
							characteristic: [GroupCharacteristic]? = nil,
							code: CodeableConcept? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							member: [GroupMember]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							quantity: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
							text: Narrative? = nil,
							type: FHIRPrimitive<GroupType>)
	{
		self.init(actual: actual, type: type)
		self.characteristic = characteristic
		self.code = code
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.member = member
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.quantity = quantity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actual; case _actual
		case characteristic
		case code
		case identifier
		case member
		case name; case _name
		case quantity; case _quantity
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actual = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .actual, auxiliaryKey: ._actual)
		self.characteristic = try [GroupCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.member = try [GroupMember](from: _container, forKeyIfPresent: .member)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.quantity = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.type = try FHIRPrimitive<GroupType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actual.encode(on: &_container, forKey: .actual, auxiliaryKey: ._actual)
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try member?.encode(on: &_container, forKey: .member)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Group else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actual == _other.actual
		    && characteristic == _other.characteristic
		    && code == _other.code
		    && identifier == _other.identifier
		    && member == _other.member
		    && name == _other.name
		    && quantity == _other.quantity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actual)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(identifier)
		hasher.combine(member)
		hasher.combine(name)
		hasher.combine(quantity)
		hasher.combine(type)
	}
}

/**
 Trait of group members.
 
 Identifies the traits shared by members of the group.
 */
open class GroupCharacteristic: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case quantity(Quantity)
		case range(Range)
	}
	
	/// Kind of characteristic
	public var code: CodeableConcept
	
	/// Value held by characteristic
	/// One of `value[x]`
	public var value: ValueX
	
	/// Group includes or excludes
	public var exclude: FHIRPrimitive<FHIRBool>
	
	/// Period over which characteristic is tested
	public var period: Period?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, exclude: FHIRPrimitive<FHIRBool>, value: ValueX) {
		self.code = code
		self.exclude = exclude
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: CodeableConcept,
							exclude: FHIRPrimitive<FHIRBool>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							value: ValueX)
	{
		self.init(code: code, exclude: exclude, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case exclude; case _exclude
		case period
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueQuantity
		case valueRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueQuantity, CodingKeys.valueRange], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .exclude, auxiliaryKey: ._exclude)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		var _t_value: ValueX? = nil
		if let valueCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .valueCodeableConcept) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCodeableConcept, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .codeableConcept(valueCodeableConcept)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try exclude.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try period?.encode(on: &_container, forKey: .period)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GroupCharacteristic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && exclude == _other.exclude
		    && period == _other.period
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(exclude)
		hasher.combine(period)
		hasher.combine(value)
	}
}

/**
 Who or what is in group.
 
 Identifies the resource instances that are members of the group.
 */
open class GroupMember: BackboneElement {
	
	/// Reference to the group member
	public var entity: Reference
	
	/// Period member belonged to the group
	public var period: Period?
	
	/// If member is no longer in group
	public var inactive: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	public init(entity: Reference) {
		self.entity = entity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							entity: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							inactive: FHIRPrimitive<FHIRBool>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil)
	{
		self.init(entity: entity)
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entity
		case inactive; case _inactive
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.entity = try Reference(from: _container, forKey: .entity)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try entity.encode(on: &_container, forKey: .entity)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try period?.encode(on: &_container, forKey: .period)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GroupMember else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return entity == _other.entity
		    && inactive == _other.inactive
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(entity)
		hasher.combine(inactive)
		hasher.combine(period)
	}
}
