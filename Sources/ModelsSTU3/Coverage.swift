//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan or a payment agreement.
 
 Financial instrument which may be used to reimburse or pay for health care products and services.
 */
open class Coverage: DomainResource {
	
	override open class var resourceType: ResourceType { return .coverage }
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Type of coverage such as medical or accident
	public var type: CodeableConcept?
	
	/// Owner of the policy
	public var policyHolder: Reference?
	
	/// Subscriber to the policy
	public var subscriber: Reference?
	
	/// ID assigned to the Subscriber
	public var subscriberId: FHIRPrimitive<FHIRString>?
	
	/// Plan Beneficiary
	public var beneficiary: Reference?
	
	/// Beneficiary relationship to the Subscriber
	public var relationship: CodeableConcept?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// Identifier for the plan or agreement issuer
	public var payor: [Reference]?
	
	/// Additional coverage classifications
	public var grouping: CoverageGrouping?
	
	/// Dependent number
	public var dependent: FHIRPrimitive<FHIRString>?
	
	/// The plan instance or sequence counter
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// Relative order of the coverage
	public var order: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Insurer network
	public var network: FHIRPrimitive<FHIRString>?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							beneficiary: Reference? = nil,
							contained: [ResourceProxy]? = nil,
							contract: [Reference]? = nil,
							dependent: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							grouping: CoverageGrouping? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							network: FHIRPrimitive<FHIRString>? = nil,
							order: FHIRPrimitive<FHIRPositiveInteger>? = nil,
							payor: [Reference]? = nil,
							period: Period? = nil,
							policyHolder: Reference? = nil,
							relationship: CodeableConcept? = nil,
							sequence: FHIRPrimitive<FHIRString>? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							subscriber: Reference? = nil,
							subscriberId: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.beneficiary = beneficiary
		self.contained = contained
		self.contract = contract
		self.dependent = dependent
		self.`extension` = `extension`
		self.grouping = grouping
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.network = network
		self.order = order
		self.payor = payor
		self.period = period
		self.policyHolder = policyHolder
		self.relationship = relationship
		self.sequence = sequence
		self.status = status
		self.subscriber = subscriber
		self.subscriberId = subscriberId
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case beneficiary
		case contract
		case dependent; case _dependent
		case grouping
		case identifier
		case network; case _network
		case order; case _order
		case payor
		case period
		case policyHolder
		case relationship
		case sequence; case _sequence
		case status; case _status
		case subscriber
		case subscriberId; case _subscriberId
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.beneficiary = try Reference(from: _container, forKeyIfPresent: .beneficiary)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.dependent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.grouping = try CoverageGrouping(from: _container, forKeyIfPresent: .grouping)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.network = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .network, auxiliaryKey: ._network)
		self.order = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .order, auxiliaryKey: ._order)
		self.payor = try [Reference](from: _container, forKeyIfPresent: .payor)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policyHolder = try Reference(from: _container, forKeyIfPresent: .policyHolder)
		self.relationship = try CodeableConcept(from: _container, forKeyIfPresent: .relationship)
		self.sequence = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subscriber = try Reference(from: _container, forKeyIfPresent: .subscriber)
		self.subscriberId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subscriberId, auxiliaryKey: ._subscriberId)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try beneficiary?.encode(on: &_container, forKey: .beneficiary)
		try contract?.encode(on: &_container, forKey: .contract)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try grouping?.encode(on: &_container, forKey: .grouping)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try network?.encode(on: &_container, forKey: .network, auxiliaryKey: ._network)
		try order?.encode(on: &_container, forKey: .order, auxiliaryKey: ._order)
		try payor?.encode(on: &_container, forKey: .payor)
		try period?.encode(on: &_container, forKey: .period)
		try policyHolder?.encode(on: &_container, forKey: .policyHolder)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subscriber?.encode(on: &_container, forKey: .subscriber)
		try subscriberId?.encode(on: &_container, forKey: .subscriberId, auxiliaryKey: ._subscriberId)
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
		return beneficiary == _other.beneficiary
		    && contract == _other.contract
		    && dependent == _other.dependent
		    && grouping == _other.grouping
		    && identifier == _other.identifier
		    && network == _other.network
		    && order == _other.order
		    && payor == _other.payor
		    && period == _other.period
		    && policyHolder == _other.policyHolder
		    && relationship == _other.relationship
		    && sequence == _other.sequence
		    && status == _other.status
		    && subscriber == _other.subscriber
		    && subscriberId == _other.subscriberId
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(beneficiary)
		hasher.combine(contract)
		hasher.combine(dependent)
		hasher.combine(grouping)
		hasher.combine(identifier)
		hasher.combine(network)
		hasher.combine(order)
		hasher.combine(payor)
		hasher.combine(period)
		hasher.combine(policyHolder)
		hasher.combine(relationship)
		hasher.combine(sequence)
		hasher.combine(status)
		hasher.combine(subscriber)
		hasher.combine(subscriberId)
		hasher.combine(type)
	}
}

/**
 Additional coverage classifications.
 
 A suite of underwrite specific classifiers, for example may be used to identify a class of coverage or employer group,
 Policy, Plan.
 */
open class CoverageGrouping: BackboneElement {
	
	/// An identifier for the group
	public var group: FHIRPrimitive<FHIRString>?
	
	/// Display text for an identifier for the group
	public var groupDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the group
	public var subGroup: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the group
	public var subGroupDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the plan
	public var plan: FHIRPrimitive<FHIRString>?
	
	/// Display text for the plan
	public var planDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the plan
	public var subPlan: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the plan
	public var subPlanDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the class
	public var `class`: FHIRPrimitive<FHIRString>?
	
	/// Display text for the class
	public var classDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the class
	public var subClass: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the subclass
	public var subClassDisplay: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`class`: FHIRPrimitive<FHIRString>? = nil,
							classDisplay: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							group: FHIRPrimitive<FHIRString>? = nil,
							groupDisplay: FHIRPrimitive<FHIRString>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							plan: FHIRPrimitive<FHIRString>? = nil,
							planDisplay: FHIRPrimitive<FHIRString>? = nil,
							subClass: FHIRPrimitive<FHIRString>? = nil,
							subClassDisplay: FHIRPrimitive<FHIRString>? = nil,
							subGroup: FHIRPrimitive<FHIRString>? = nil,
							subGroupDisplay: FHIRPrimitive<FHIRString>? = nil,
							subPlan: FHIRPrimitive<FHIRString>? = nil,
							subPlanDisplay: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.`class` = `class`
		self.classDisplay = classDisplay
		self.`extension` = `extension`
		self.group = group
		self.groupDisplay = groupDisplay
		self.id = id
		self.modifierExtension = modifierExtension
		self.plan = plan
		self.planDisplay = planDisplay
		self.subClass = subClass
		self.subClassDisplay = subClassDisplay
		self.subGroup = subGroup
		self.subGroupDisplay = subGroupDisplay
		self.subPlan = subPlan
		self.subPlanDisplay = subPlanDisplay
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `class` = "class"; case _class = "_class"
		case classDisplay; case _classDisplay
		case group; case _group
		case groupDisplay; case _groupDisplay
		case plan; case _plan
		case planDisplay; case _planDisplay
		case subClass; case _subClass
		case subClassDisplay; case _subClassDisplay
		case subGroup; case _subGroup
		case subGroupDisplay; case _subGroupDisplay
		case subPlan; case _subPlan
		case subPlanDisplay; case _subPlanDisplay
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.`class` = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .`class`, auxiliaryKey: ._class)
		self.classDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .classDisplay, auxiliaryKey: ._classDisplay)
		self.group = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .group, auxiliaryKey: ._group)
		self.groupDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .groupDisplay, auxiliaryKey: ._groupDisplay)
		self.plan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .plan, auxiliaryKey: ._plan)
		self.planDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .planDisplay, auxiliaryKey: ._planDisplay)
		self.subClass = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subClass, auxiliaryKey: ._subClass)
		self.subClassDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subClassDisplay, auxiliaryKey: ._subClassDisplay)
		self.subGroup = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subGroup, auxiliaryKey: ._subGroup)
		self.subGroupDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subGroupDisplay, auxiliaryKey: ._subGroupDisplay)
		self.subPlan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlan, auxiliaryKey: ._subPlan)
		self.subPlanDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlanDisplay, auxiliaryKey: ._subPlanDisplay)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try `class`?.encode(on: &_container, forKey: .`class`, auxiliaryKey: ._class)
		try classDisplay?.encode(on: &_container, forKey: .classDisplay, auxiliaryKey: ._classDisplay)
		try group?.encode(on: &_container, forKey: .group, auxiliaryKey: ._group)
		try groupDisplay?.encode(on: &_container, forKey: .groupDisplay, auxiliaryKey: ._groupDisplay)
		try plan?.encode(on: &_container, forKey: .plan, auxiliaryKey: ._plan)
		try planDisplay?.encode(on: &_container, forKey: .planDisplay, auxiliaryKey: ._planDisplay)
		try subClass?.encode(on: &_container, forKey: .subClass, auxiliaryKey: ._subClass)
		try subClassDisplay?.encode(on: &_container, forKey: .subClassDisplay, auxiliaryKey: ._subClassDisplay)
		try subGroup?.encode(on: &_container, forKey: .subGroup, auxiliaryKey: ._subGroup)
		try subGroupDisplay?.encode(on: &_container, forKey: .subGroupDisplay, auxiliaryKey: ._subGroupDisplay)
		try subPlan?.encode(on: &_container, forKey: .subPlan, auxiliaryKey: ._subPlan)
		try subPlanDisplay?.encode(on: &_container, forKey: .subPlanDisplay, auxiliaryKey: ._subPlanDisplay)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? CoverageGrouping else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return `class` == _other.`class`
		    && classDisplay == _other.classDisplay
		    && group == _other.group
		    && groupDisplay == _other.groupDisplay
		    && plan == _other.plan
		    && planDisplay == _other.planDisplay
		    && subClass == _other.subClass
		    && subClassDisplay == _other.subClassDisplay
		    && subGroup == _other.subGroup
		    && subGroupDisplay == _other.subGroupDisplay
		    && subPlan == _other.subPlan
		    && subPlanDisplay == _other.subPlanDisplay
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(`class`)
		hasher.combine(classDisplay)
		hasher.combine(group)
		hasher.combine(groupDisplay)
		hasher.combine(plan)
		hasher.combine(planDisplay)
		hasher.combine(subClass)
		hasher.combine(subClassDisplay)
		hasher.combine(subGroup)
		hasher.combine(subGroupDisplay)
		hasher.combine(subPlan)
		hasher.combine(subPlanDisplay)
	}
}
