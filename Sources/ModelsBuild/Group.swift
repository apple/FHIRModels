//
//  Group.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/Group)
//  Copyright 2025 Apple Inc.
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
 
 Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
 typically expected to act collectively.  These collections are also not typically formally or legally recognized.
 
 NOTE: Group may be used to define families or households, which in some circumstances may act collectively or have a
 degree of legal or formal recognition.  This should be considered an exception.  When Group is used for types of
 entities other than Patient or RelatedPerson, the expectation remains that the Group will not act collectively or have
 formal recognition - use Organization if these behaviors are needed.
 
 For example, it is possible for a 'family' Group to be a performer of an Observation or owner of a Task.  However, this
 is not permitted for a Group made up of Practitioners, PractitionerRoles or Organizations.  Organization or CareTeam
 would need to be used instead.  A Group of Practitioners could, however, be a subject of an Observation.
 */
open class Group: DomainResource {
	
	override open class var resourceType: ResourceType { return .group }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this Group, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business Identifier for this Group
	public var identifier: [Identifier]?
	
	/// Business version of the Group
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Label for Group
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this Group (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The current state of this Group.
	public var status: FHIRPrimitive<PublicationStatus>?
	
	/// For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the group
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Why this Group is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Identifies the broad classification of the kind of resources the group includes.
	public var type: FHIRPrimitive<GroupType>?
	
	/// Basis for membership in the Group:
	/// 
	/// * 'definitional': The Group.characteristics specified are both necessary and sufficient to determine membership.
	/// All entities that meet the criteria are considered to be members of the group, whether referenced by the group
	/// or not. If members are present, they are individuals that happen to be known as meeting the
	/// Group.characteristics. The list cannot be presumed to be complete.
	/// * 'conceptual': The Group.characteristics specified are both necessary and sufficient to determine membership.
	/// The 'conceptual' Group is a 'definitional' Group in which the Group.type is not bound to FHIR types.
	/// * 'enumerated': The Group.characteristics are necessary but not sufficient to determine membership. Membership
	/// is determined by being listed as one of the Group.member.
	public var membership: FHIRPrimitive<GroupMembershipBasis>
	
	/// Use of the Group (and by implication, kind of members)
	public var code: CodeableConcept?
	
	/// Number of members
	public var quantity: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Entity that is the custodian of the Group's definition
	public var managingEntity: Reference?
	
	/// Used to specify how two or more characteristics are combined.
	/// Restricted to: ['all-of', 'any-of', 'at-least', 'at-most', 'except-subset']
	public var combinationMethod: FHIRPrimitive<GroupCharacteristicCombination>?
	
	/// Provides the value of "n" when "at-least" or "at-most" codes are used
	public var combinationThreshold: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Include / Exclude group members by Trait
	public var characteristic: [GroupCharacteristic]?
	
	/// Who or what is in group
	public var member: [GroupMember]?
	
	/// Designated initializer taking all required properties
	public init(membership: FHIRPrimitive<GroupMembershipBasis>) {
		self.membership = membership
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		characteristic: [GroupCharacteristic]? = nil,
		code: CodeableConcept? = nil,
		combinationMethod: FHIRPrimitive<GroupCharacteristicCombination>? = nil,
		combinationThreshold: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
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
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		quantity: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		status: FHIRPrimitive<PublicationStatus>? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		type: FHIRPrimitive<GroupType>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(membership: membership)
		self.characteristic = characteristic
		self.code = code
		self.combinationMethod = combinationMethod
		self.combinationThreshold = combinationThreshold
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.managingEntity = managingEntity
		self.member = member
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.quantity = quantity
		self.status = status
		self.text = text
		self.title = title
		self.type = type
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case characteristic
		case code
		case combinationMethod; case _combinationMethod
		case combinationThreshold; case _combinationThreshold
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case experimental; case _experimental
		case identifier
		case managingEntity
		case member
		case membership; case _membership
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case quantity; case _quantity
		case status; case _status
		case title; case _title
		case type; case _type
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.characteristic = try [GroupCharacteristic](from: _container, forKeyIfPresent: .characteristic)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.combinationMethod = try FHIRPrimitive<GroupCharacteristicCombination>(from: _container, forKeyIfPresent: .combinationMethod, auxiliaryKey: ._combinationMethod)
		self.combinationThreshold = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .combinationThreshold, auxiliaryKey: ._combinationThreshold)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.managingEntity = try Reference(from: _container, forKeyIfPresent: .managingEntity)
		self.member = try [GroupMember](from: _container, forKeyIfPresent: .member)
		self.membership = try FHIRPrimitive<GroupMembershipBasis>(from: _container, forKey: .membership, auxiliaryKey: ._membership)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.quantity = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .quantity, auxiliaryKey: ._quantity)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.type = try FHIRPrimitive<GroupType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try characteristic?.encode(on: &_container, forKey: .characteristic)
		try code?.encode(on: &_container, forKey: .code)
		try combinationMethod?.encode(on: &_container, forKey: .combinationMethod, auxiliaryKey: ._combinationMethod)
		try combinationThreshold?.encode(on: &_container, forKey: .combinationThreshold, auxiliaryKey: ._combinationThreshold)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try managingEntity?.encode(on: &_container, forKey: .managingEntity)
		try member?.encode(on: &_container, forKey: .member)
		try membership.encode(on: &_container, forKey: .membership, auxiliaryKey: ._membership)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try quantity?.encode(on: &_container, forKey: .quantity, auxiliaryKey: ._quantity)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
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
		return characteristic == _other.characteristic
		    && code == _other.code
		    && combinationMethod == _other.combinationMethod
		    && combinationThreshold == _other.combinationThreshold
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && managingEntity == _other.managingEntity
		    && member == _other.member
		    && membership == _other.membership
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && quantity == _other.quantity
		    && status == _other.status
		    && title == _other.title
		    && type == _other.type
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(characteristic)
		hasher.combine(code)
		hasher.combine(combinationMethod)
		hasher.combine(combinationThreshold)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(managingEntity)
		hasher.combine(member)
		hasher.combine(membership)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(quantity)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Include / Exclude group members by Trait.
 
 Identifies traits whose presence r absence is shared by members of the group.
 */
open class GroupCharacteristic: BackboneElement {
	
	/// All possible types for "duration[x]"
	public enum DurationX: Hashable {
		case duration(Duration)
		case range(Range)
	}
	
	/// All possible types for "instances[x]"
	public enum InstancesX: Hashable {
		case range(Range)
		case unsignedInt(FHIRPrimitive<FHIRUnsignedInteger>)
	}
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
		case expression(Expression)
		case quantity(Quantity)
		case range(Range)
		case reference(Reference)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Kind of characteristic
	public var code: CodeableConcept
	
	/// Value held by characteristic
	/// One of `value[x]`
	public var value: ValueX
	
	/// Group includes or excludes
	public var exclude: FHIRPrimitive<FHIRBool>
	
	/// Natural language description of the characteristic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Method for how the characteristic value was determined
	public var method: [CodeableConcept]?
	
	/// Formal algorithm to derive the value
	public var formula: Expression?
	
	/// Who determines the value
	public var determiner: Reference?
	
	/// Reference point for comparison
	public var offset: CodeableConcept?
	
	/// Number of occurrences meeting the characteristic
	/// One of `instances[x]`
	public var instances: InstancesX?
	
	/// Length of time in which the characteristic is met
	/// One of `duration[x]`
	public var duration: DurationX?
	
	/// Period over which characteristic is tested
	public var period: Period?
	
	/// Timing in which the characteristic is determined
	public var timing: [RelativeTime]?
	
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
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		determiner: Reference? = nil,
		duration: DurationX? = nil,
		exclude: FHIRPrimitive<FHIRBool>,
		`extension`: [Extension]? = nil,
		formula: Expression? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instances: InstancesX? = nil,
		method: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		offset: CodeableConcept? = nil,
		period: Period? = nil,
		timing: [RelativeTime]? = nil,
		value: ValueX
	) {
		self.init(code: code, exclude: exclude, value: value)
		self.description_fhir = description_fhir
		self.determiner = determiner
		self.duration = duration
		self.`extension` = `extension`
		self.formula = formula
		self.id = id
		self.instances = instances
		self.method = method
		self.modifierExtension = modifierExtension
		self.offset = offset
		self.period = period
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case description_fhir = "description"; case _description_fhir = "_description"
		case determiner
		case durationDuration
		case durationRange
		case exclude; case _exclude
		case formula
		case instancesRange
		case instancesUnsignedInt; case _instancesUnsignedInt
		case method
		case offset
		case period
		case timing
		case valueBoolean; case _valueBoolean
		case valueCodeableConcept
		case valueExpression
		case valueQuantity
		case valueRange
		case valueReference
		case valueUri; case _valueUri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCodeableConcept) || _container.contains(CodingKeys.valueExpression) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueRange) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueBoolean, CodingKeys.valueCodeableConcept, CodingKeys.valueExpression, CodingKeys.valueQuantity, CodingKeys.valueRange, CodingKeys.valueReference, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.determiner = try Reference(from: _container, forKeyIfPresent: .determiner)
		var _t_duration: DurationX? = nil
		if let durationDuration = try Duration(from: _container, forKeyIfPresent: .durationDuration) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationDuration, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .duration(durationDuration)
		}
		if let durationRange = try Range(from: _container, forKeyIfPresent: .durationRange) {
			if _t_duration != nil {
				throw DecodingError.dataCorruptedError(forKey: .durationRange, in: _container, debugDescription: "More than one value provided for \"duration\"")
			}
			_t_duration = .range(durationRange)
		}
		self.duration = _t_duration
		self.exclude = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .exclude, auxiliaryKey: ._exclude)
		self.formula = try Expression(from: _container, forKeyIfPresent: .formula)
		var _t_instances: InstancesX? = nil
		if let instancesUnsignedInt = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .instancesUnsignedInt, auxiliaryKey: ._instancesUnsignedInt) {
			if _t_instances != nil {
				throw DecodingError.dataCorruptedError(forKey: .instancesUnsignedInt, in: _container, debugDescription: "More than one value provided for \"instances\"")
			}
			_t_instances = .unsignedInt(instancesUnsignedInt)
		}
		if let instancesRange = try Range(from: _container, forKeyIfPresent: .instancesRange) {
			if _t_instances != nil {
				throw DecodingError.dataCorruptedError(forKey: .instancesRange, in: _container, debugDescription: "More than one value provided for \"instances\"")
			}
			_t_instances = .range(instancesRange)
		}
		self.instances = _t_instances
		self.method = try [CodeableConcept](from: _container, forKeyIfPresent: .method)
		self.offset = try CodeableConcept(from: _container, forKeyIfPresent: .offset)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.timing = try [RelativeTime](from: _container, forKeyIfPresent: .timing)
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
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueExpression = try Expression(from: _container, forKeyIfPresent: .valueExpression) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueExpression, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .expression(valueExpression)
		}
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try determiner?.encode(on: &_container, forKey: .determiner)
		if let _enum = duration {
			switch _enum {
			case .duration(let _value):
				try _value.encode(on: &_container, forKey: .durationDuration)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .durationRange)
			}
		}
		try exclude.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try formula?.encode(on: &_container, forKey: .formula)
		if let _enum = instances {
			switch _enum {
			case .unsignedInt(let _value):
				try _value.encode(on: &_container, forKey: .instancesUnsignedInt, auxiliaryKey: ._instancesUnsignedInt)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .instancesRange)
			}
		}
		try method?.encode(on: &_container, forKey: .method)
		try offset?.encode(on: &_container, forKey: .offset)
		try period?.encode(on: &_container, forKey: .period)
		try timing?.encode(on: &_container, forKey: .timing)
		
			switch value {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .valueCodeableConcept)
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .valueRange)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .expression(let _value):
				try _value.encode(on: &_container, forKey: .valueExpression)
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
		    && description_fhir == _other.description_fhir
		    && determiner == _other.determiner
		    && duration == _other.duration
		    && exclude == _other.exclude
		    && formula == _other.formula
		    && instances == _other.instances
		    && method == _other.method
		    && offset == _other.offset
		    && period == _other.period
		    && timing == _other.timing
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(description_fhir)
		hasher.combine(determiner)
		hasher.combine(duration)
		hasher.combine(exclude)
		hasher.combine(formula)
		hasher.combine(instances)
		hasher.combine(method)
		hasher.combine(offset)
		hasher.combine(period)
		hasher.combine(timing)
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
	
	/// Code that describes how user is part of the group
	public var involvement: [CodeableConcept]?
	
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
		involvement: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil
	) {
		self.init(entity: entity)
		self.`extension` = `extension`
		self.id = id
		self.inactive = inactive
		self.involvement = involvement
		self.modifierExtension = modifierExtension
		self.period = period
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entity
		case inactive; case _inactive
		case involvement
		case period
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.entity = try Reference(from: _container, forKey: .entity)
		self.inactive = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .inactive, auxiliaryKey: ._inactive)
		self.involvement = try [CodeableConcept](from: _container, forKeyIfPresent: .involvement)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try entity.encode(on: &_container, forKey: .entity)
		try inactive?.encode(on: &_container, forKey: .inactive, auxiliaryKey: ._inactive)
		try involvement?.encode(on: &_container, forKey: .involvement)
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
		    && involvement == _other.involvement
		    && period == _other.period
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(entity)
		hasher.combine(inactive)
		hasher.combine(involvement)
		hasher.combine(period)
	}
}
