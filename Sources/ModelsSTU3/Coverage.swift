//
//  Coverage.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Coverage)
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
 Insurance or medical plan or a payment agreement.
 
 Financial instrument which may be used to reimburse or pay for health care products and services.
 */
public struct Coverage: DomainResource {
	
	public static let resourceType: ResourceType = .coverage
	
	/// Plan Beneficiary
	public var beneficiary: Reference?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// Dependent number
	public var dependent: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Additional coverage classifications
	public var grouping: CoverageGrouping?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Insurer network
	public var network: FHIRPrimitive<FHIRString>?
	
	/// Relative order of the coverage
	public var order: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Identifier for the plan or agreement issuer
	public var payor: [Reference]?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// Owner of the policy
	public var policyHolder: Reference?
	
	/// Beneficiary relationship to the Subscriber
	public var relationship: CodeableConcept?
	
	/// The plan instance or sequence counter
	public var sequence: FHIRPrimitive<FHIRString>?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Subscriber to the policy
	public var subscriber: Reference?
	
	/// ID assigned to the Subscriber
	public var subscriberId: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Type of coverage such as medical or accident
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept? = nil
	) {
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
		case resourceType
		case beneficiary
		case contained
		case contract
		case dependent; case _dependent
		case `extension` = "extension"
		case grouping
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
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
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.beneficiary = try Reference(from: _container, forKeyIfPresent: .beneficiary)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contract = try [Reference](from: _container, forKeyIfPresent: .contract)
		self.dependent = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .dependent, auxiliaryKey: ._dependent)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.grouping = try CoverageGrouping(from: _container, forKeyIfPresent: .grouping)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try beneficiary?.encode(on: &_container, forKey: .beneficiary)
		try contained?.encode(on: &_container, forKey: .contained)
		try contract?.encode(on: &_container, forKey: .contract)
		try dependent?.encode(on: &_container, forKey: .dependent, auxiliaryKey: ._dependent)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try grouping?.encode(on: &_container, forKey: .grouping)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Additional coverage classifications.
 
 A suite of underwrite specific classifiers, for example may be used to identify a class of coverage or employer group,
 Policy, Plan.
 */
public struct CoverageGrouping: BackboneElement {
	
	/// An identifier for the class
	public var `class`: FHIRPrimitive<FHIRString>?
	
	/// Display text for the class
	public var classDisplay: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// An identifier for the group
	public var group: FHIRPrimitive<FHIRString>?
	
	/// Display text for an identifier for the group
	public var groupDisplay: FHIRPrimitive<FHIRString>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// An identifier for the plan
	public var plan: FHIRPrimitive<FHIRString>?
	
	/// Display text for the plan
	public var planDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the class
	public var subClass: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the subclass
	public var subClassDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the group
	public var subGroup: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the group
	public var subGroupDisplay: FHIRPrimitive<FHIRString>?
	
	/// An identifier for the subsection of the plan
	public var subPlan: FHIRPrimitive<FHIRString>?
	
	/// Display text for the subsection of the plan
	public var subPlanDisplay: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
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
		subPlanDisplay: FHIRPrimitive<FHIRString>? = nil
	) {
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
		case `extension` = "extension"
		case group; case _group
		case groupDisplay; case _groupDisplay
		case id; case _id
		case modifierExtension
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
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`class` = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .`class`, auxiliaryKey: ._class)
		self.classDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .classDisplay, auxiliaryKey: ._classDisplay)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .group, auxiliaryKey: ._group)
		self.groupDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .groupDisplay, auxiliaryKey: ._groupDisplay)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.plan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .plan, auxiliaryKey: ._plan)
		self.planDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .planDisplay, auxiliaryKey: ._planDisplay)
		self.subClass = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subClass, auxiliaryKey: ._subClass)
		self.subClassDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subClassDisplay, auxiliaryKey: ._subClassDisplay)
		self.subGroup = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subGroup, auxiliaryKey: ._subGroup)
		self.subGroupDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subGroupDisplay, auxiliaryKey: ._subGroupDisplay)
		self.subPlan = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlan, auxiliaryKey: ._subPlan)
		self.subPlanDisplay = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subPlanDisplay, auxiliaryKey: ._subPlanDisplay)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `class`?.encode(on: &_container, forKey: .`class`, auxiliaryKey: ._class)
		try classDisplay?.encode(on: &_container, forKey: .classDisplay, auxiliaryKey: ._classDisplay)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group, auxiliaryKey: ._group)
		try groupDisplay?.encode(on: &_container, forKey: .groupDisplay, auxiliaryKey: ._groupDisplay)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try plan?.encode(on: &_container, forKey: .plan, auxiliaryKey: ._plan)
		try planDisplay?.encode(on: &_container, forKey: .planDisplay, auxiliaryKey: ._planDisplay)
		try subClass?.encode(on: &_container, forKey: .subClass, auxiliaryKey: ._subClass)
		try subClassDisplay?.encode(on: &_container, forKey: .subClassDisplay, auxiliaryKey: ._subClassDisplay)
		try subGroup?.encode(on: &_container, forKey: .subGroup, auxiliaryKey: ._subGroup)
		try subGroupDisplay?.encode(on: &_container, forKey: .subGroupDisplay, auxiliaryKey: ._subGroupDisplay)
		try subPlan?.encode(on: &_container, forKey: .subPlan, auxiliaryKey: ._subPlan)
		try subPlanDisplay?.encode(on: &_container, forKey: .subPlanDisplay, auxiliaryKey: ._subPlanDisplay)
	}
}
