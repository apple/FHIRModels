//
//  Consent.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Consent)
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
 A healthcare consumer's  or third party's choices to permit or deny recipients or roles to perform actions for specific
 purposes and periods of time.
 
 A record of a healthcare consumer’s  choices  or choices made on their behalf by a third party, which permits or denies
 identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific
 purposes and periods of time.
 */
public struct Consent: DomainResource {
	
	public static let resourceType: ResourceType = .consent
	
	/// Classification of the consent statement - for indexing/retrieval
	public var category: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Consent Enforcer
	public var controller: [Reference]?
	
	/// Fully executed date of the consent
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Action to take - permit or deny - as default.
	public var decision: FHIRPrimitive<ConsentProvisionType>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Who is agreeing to the policy and rules
	public var grantee: [Reference]?
	
	/// Who is granting rights according to the policy and rules
	public var grantor: [Reference]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for this record (external references)
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Consent workflow management
	public var manager: [Reference]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Effective period for this Consent
	public var period: Period?
	
	/// Computable version of the backing policy
	public var policyBasis: ConsentPolicyBasis?
	
	/// Human Readable Policy
	public var policyText: [Reference]?
	
	/// Constraints to the base Consent.policyRule/Consent.policy
	public var provision: [ConsentProvision]?
	
	/// Regulations establishing base Consent
	public var regulatoryBasis: [CodeableConcept]?
	
	/// Source from which this consent is taken
	public var sourceAttachment: [Attachment]?
	
	/// Source from which this consent is taken
	public var sourceReference: [Reference]?
	
	/// Indicates the current state of this Consent resource.
	public var status: FHIRPrimitive<ConsentState>
	
	/// Who the consent applies to
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Consent Verified by patient or family
	public var verification: [ConsentVerification]?
	
	/// Designated initializer
	public init(
		category: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		controller: [Reference]? = nil,
		date: FHIRPrimitive<FHIRDate>? = nil,
		decision: FHIRPrimitive<ConsentProvisionType>? = nil,
		`extension`: [Extension]? = nil,
		grantee: [Reference]? = nil,
		grantor: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		manager: [Reference]? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		policyBasis: ConsentPolicyBasis? = nil,
		policyText: [Reference]? = nil,
		provision: [ConsentProvision]? = nil,
		regulatoryBasis: [CodeableConcept]? = nil,
		sourceAttachment: [Attachment]? = nil,
		sourceReference: [Reference]? = nil,
		status: FHIRPrimitive<ConsentState>,
		subject: Reference? = nil,
		text: Narrative? = nil,
		verification: [ConsentVerification]? = nil
	) {
		self.category = category
		self.contained = contained
		self.controller = controller
		self.date = date
		self.decision = decision
		self.`extension` = `extension`
		self.grantee = grantee
		self.grantor = grantor
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.manager = manager
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.period = period
		self.policyBasis = policyBasis
		self.policyText = policyText
		self.provision = provision
		self.regulatoryBasis = regulatoryBasis
		self.sourceAttachment = sourceAttachment
		self.sourceReference = sourceReference
		self.status = status
		self.subject = subject
		self.text = text
		self.verification = verification
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case category
		case contained
		case controller
		case date; case _date
		case decision; case _decision
		case `extension` = "extension"
		case grantee
		case grantor
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case manager
		case meta
		case modifierExtension
		case period
		case policyBasis
		case policyText
		case provision
		case regulatoryBasis
		case sourceAttachment
		case sourceReference
		case status; case _status
		case subject
		case text
		case verification
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.controller = try [Reference](from: _container, forKeyIfPresent: .controller)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.decision = try FHIRPrimitive<ConsentProvisionType>(from: _container, forKeyIfPresent: .decision, auxiliaryKey: ._decision)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.grantee = try [Reference](from: _container, forKeyIfPresent: .grantee)
		self.grantor = try [Reference](from: _container, forKeyIfPresent: .grantor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.manager = try [Reference](from: _container, forKeyIfPresent: .manager)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policyBasis = try ConsentPolicyBasis(from: _container, forKeyIfPresent: .policyBasis)
		self.policyText = try [Reference](from: _container, forKeyIfPresent: .policyText)
		self.provision = try [ConsentProvision](from: _container, forKeyIfPresent: .provision)
		self.regulatoryBasis = try [CodeableConcept](from: _container, forKeyIfPresent: .regulatoryBasis)
		self.sourceAttachment = try [Attachment](from: _container, forKeyIfPresent: .sourceAttachment)
		self.sourceReference = try [Reference](from: _container, forKeyIfPresent: .sourceReference)
		self.status = try FHIRPrimitive<ConsentState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.verification = try [ConsentVerification](from: _container, forKeyIfPresent: .verification)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try controller?.encode(on: &_container, forKey: .controller)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try decision?.encode(on: &_container, forKey: .decision, auxiliaryKey: ._decision)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try grantee?.encode(on: &_container, forKey: .grantee)
		try grantor?.encode(on: &_container, forKey: .grantor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try manager?.encode(on: &_container, forKey: .manager)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try policyBasis?.encode(on: &_container, forKey: .policyBasis)
		try policyText?.encode(on: &_container, forKey: .policyText)
		try provision?.encode(on: &_container, forKey: .provision)
		try regulatoryBasis?.encode(on: &_container, forKey: .regulatoryBasis)
		try sourceAttachment?.encode(on: &_container, forKey: .sourceAttachment)
		try sourceReference?.encode(on: &_container, forKey: .sourceReference)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try verification?.encode(on: &_container, forKey: .verification)
	}
}

/**
 Computable version of the backing policy.
 
 A Reference or URL used to uniquely identify the policy the organization will enforce for this Consent. This Reference
 or URL should be specific to the version of the policy and should be dereferencable to a computable policy of some
 form.
 */
public struct ConsentPolicyBasis: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reference backing policy resource
	public var reference: Reference?
	
	/// URI to a computable backing policy
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference?.encode(on: &_container, forKey: .reference)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}

/**
 Constraints to the base Consent.policyRule/Consent.policy.
 
 An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
 */
public struct ConsentProvision: BackboneElement {
	
	/// Actions controlled by this provision
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this provision (or group, by role)
	public var actor: [ConsentProvisionActor]?
	
	/// e.g. LOINC or SNOMED CT code, etc. in the content
	public var code: [CodeableConcept]?
	
	/// Data controlled by this provision
	public var data: [ConsentProvisionData]?
	
	/// Timeframe for data controlled by this provision
	public var dataPeriod: Period?
	
	/// e.g. Resource Type, Profile, CDA, etc
	public var documentType: [Coding]?
	
	/// A computable expression of the consent
	public var expression: Expression?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Timeframe for this provision
	public var period: Period?
	
	/// Nested Exception Provisions
	public var provision: [ConsentProvision]?
	
	/// Context of activities covered by this provision
	public var purpose: [Coding]?
	
	/// e.g. Resource Type, Profile, etc
	public var resourceType: [Coding]?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Designated initializer
	public init(
		action: [CodeableConcept]? = nil,
		actor: [ConsentProvisionActor]? = nil,
		code: [CodeableConcept]? = nil,
		data: [ConsentProvisionData]? = nil,
		dataPeriod: Period? = nil,
		documentType: [Coding]? = nil,
		expression: Expression? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		provision: [ConsentProvision]? = nil,
		purpose: [Coding]? = nil,
		resourceType: [Coding]? = nil,
		securityLabel: [Coding]? = nil
	) {
		self.action = action
		self.actor = actor
		self.code = code
		self.data = data
		self.dataPeriod = dataPeriod
		self.documentType = documentType
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.provision = provision
		self.purpose = purpose
		self.resourceType = resourceType
		self.securityLabel = securityLabel
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actor
		case code
		case data
		case dataPeriod
		case documentType
		case expression
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case provision
		case purpose
		case resourceType
		case securityLabel
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentProvisionActor](from: _container, forKeyIfPresent: .actor)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.data = try [ConsentProvisionData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.documentType = try [Coding](from: _container, forKeyIfPresent: .documentType)
		self.expression = try Expression(from: _container, forKeyIfPresent: .expression)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.provision = try [ConsentProvision](from: _container, forKeyIfPresent: .provision)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.resourceType = try [Coding](from: _container, forKeyIfPresent: .resourceType)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try code?.encode(on: &_container, forKey: .code)
		try data?.encode(on: &_container, forKey: .data)
		try dataPeriod?.encode(on: &_container, forKey: .dataPeriod)
		try documentType?.encode(on: &_container, forKey: .documentType)
		try expression?.encode(on: &_container, forKey: .expression)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try provision?.encode(on: &_container, forKey: .provision)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try resourceType?.encode(on: &_container, forKey: .resourceType)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
	}
}

/**
 Who|what controlled by this provision (or group, by role).
 
 Who or what is controlled by this provision. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
public struct ConsentProvisionActor: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Resource for the actor (or group, by role)
	public var reference: Reference?
	
	/// How the actor is involved
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference? = nil,
		role: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference?.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Data controlled by this provision.
 
 The resources controlled by this provision if specific resources are referenced.
 */
public struct ConsentProvisionData: BackboneElement {
	
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

/**
 Consent Verified by patient or family.
 
 Whether a treatment instruction (e.g. artificial respiration: yes or no) was verified with the patient, his/her family
 or another authorized person.
 */
public struct ConsentVerification: BackboneElement {
	
	/// When consent verified
	public var date: [FHIRPrimitive<DateTime>]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Business case of verification
	public var type: CodeableConcept?
	
	/// Has been verified
	public var verified: FHIRPrimitive<FHIRBool>
	
	/// Person conducting verification
	public var verifiedBy: Reference?
	
	/// Person who verified
	public var verifiedWith: Reference?
	
	/// Designated initializer
	public init(
		date: [FHIRPrimitive<DateTime>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept? = nil,
		verified: FHIRPrimitive<FHIRBool>,
		verifiedBy: Reference? = nil,
		verifiedWith: Reference? = nil
	) {
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
		self.verified = verified
		self.verifiedBy = verifiedBy
		self.verifiedWith = verifiedWith
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
		case verified; case _verified
		case verifiedBy
		case verifiedWith
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.verified = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .verified, auxiliaryKey: ._verified)
		self.verifiedBy = try Reference(from: _container, forKeyIfPresent: .verifiedBy)
		self.verifiedWith = try Reference(from: _container, forKeyIfPresent: .verifiedWith)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type?.encode(on: &_container, forKey: .type)
		try verified.encode(on: &_container, forKey: .verified, auxiliaryKey: ._verified)
		try verifiedBy?.encode(on: &_container, forKey: .verifiedBy)
		try verifiedWith?.encode(on: &_container, forKey: .verifiedWith)
	}
}
