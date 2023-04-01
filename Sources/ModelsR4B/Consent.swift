//
//  Consent.swift
//  HealthSoftware
//
//  Generated from FHIR 4.3.0 (http://hl7.org/fhir/StructureDefinition/Consent)
//  Copyright 2023 Apple Inc.
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
 A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and
 periods of time.
 
 A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to
 perform one or more actions within a given policy context, for specific purposes and periods of time.
 */
open class Consent: DomainResource {
	
	override open class var resourceType: ResourceType { return .consent }
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// Identifier for this record (external references)
	public var identifier: [Identifier]?
	
	/// Indicates the current state of this consent.
	public var status: FHIRPrimitive<ConsentState>
	
	/// Which of the four areas this resource covers (extensible)
	public var scope: CodeableConcept
	
	/// Classification of the consent statement - for indexing/retrieval
	public var category: [CodeableConcept]
	
	/// Who the consent applies to
	public var patient: Reference?
	
	/// When this Consent was created or indexed
	public var dateTime: FHIRPrimitive<DateTime>?
	
	/// Who is agreeing to the policy and rules
	public var performer: [Reference]?
	
	/// Custodian of the consent
	public var organization: [Reference]?
	
	/// Source from which this consent is taken
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Policies covered by this consent
	public var policy: [ConsentPolicy]?
	
	/// Regulation that this consents to
	public var policyRule: CodeableConcept?
	
	/// Consent Verified by patient or family
	public var verification: [ConsentVerification]?
	
	/// Constraints to the base Consent.policyRule
	public var provision: ConsentProvision?
	
	/// Designated initializer taking all required properties
	public init(category: [CodeableConcept], scope: CodeableConcept, status: FHIRPrimitive<ConsentState>) {
		self.category = category
		self.scope = scope
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: [CodeableConcept],
		contained: [ResourceProxy]? = nil,
		dateTime: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		organization: [Reference]? = nil,
		patient: Reference? = nil,
		performer: [Reference]? = nil,
		policy: [ConsentPolicy]? = nil,
		policyRule: CodeableConcept? = nil,
		provision: ConsentProvision? = nil,
		scope: CodeableConcept,
		source: SourceX? = nil,
		status: FHIRPrimitive<ConsentState>,
		text: Narrative? = nil,
		verification: [ConsentVerification]? = nil
	) {
		self.init(category: category, scope: scope, status: status)
		self.contained = contained
		self.dateTime = dateTime
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.patient = patient
		self.performer = performer
		self.policy = policy
		self.policyRule = policyRule
		self.provision = provision
		self.source = source
		self.text = text
		self.verification = verification
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case dateTime; case _dateTime
		case identifier
		case organization
		case patient
		case performer
		case policy
		case policyRule
		case provision
		case scope
		case sourceAttachment
		case sourceReference
		case status; case _status
		case verification
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [CodeableConcept](from: _container, forKey: .category)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateTime, auxiliaryKey: ._dateTime)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try [Reference](from: _container, forKeyIfPresent: .organization)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.performer = try [Reference](from: _container, forKeyIfPresent: .performer)
		self.policy = try [ConsentPolicy](from: _container, forKeyIfPresent: .policy)
		self.policyRule = try CodeableConcept(from: _container, forKeyIfPresent: .policyRule)
		self.provision = try ConsentProvision(from: _container, forKeyIfPresent: .provision)
		self.scope = try CodeableConcept(from: _container, forKey: .scope)
		var _t_source: SourceX? = nil
		if let sourceAttachment = try Attachment(from: _container, forKeyIfPresent: .sourceAttachment) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceAttachment, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .attachment(sourceAttachment)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source
		self.status = try FHIRPrimitive<ConsentState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.verification = try [ConsentVerification](from: _container, forKeyIfPresent: .verification)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category.encode(on: &_container, forKey: .category)
		try dateTime?.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try patient?.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try policy?.encode(on: &_container, forKey: .policy)
		try policyRule?.encode(on: &_container, forKey: .policyRule)
		try provision?.encode(on: &_container, forKey: .provision)
		try scope.encode(on: &_container, forKey: .scope)
		if let _enum = source {
			switch _enum {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .sourceAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try verification?.encode(on: &_container, forKey: .verification)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Consent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && dateTime == _other.dateTime
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && patient == _other.patient
		    && performer == _other.performer
		    && policy == _other.policy
		    && policyRule == _other.policyRule
		    && provision == _other.provision
		    && scope == _other.scope
		    && source == _other.source
		    && status == _other.status
		    && verification == _other.verification
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(dateTime)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(patient)
		hasher.combine(performer)
		hasher.combine(policy)
		hasher.combine(policyRule)
		hasher.combine(provision)
		hasher.combine(scope)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(verification)
	}
}

/**
 Policies covered by this consent.
 
 The references to the policies that are included in this consent scope. Policies may be organizational, but are often
 defined jurisdictionally, or in law.
 */
open class ConsentPolicy: BackboneElement {
	
	/// Enforcement source for policy
	public var authority: FHIRPrimitive<FHIRURI>?
	
	/// Specific policy covered by this consent
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		authority: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init()
		self.authority = authority
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority; case _authority
		case uri; case _uri
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .authority, auxiliaryKey: ._authority)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority, auxiliaryKey: ._authority)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConsentPolicy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && uri == _other.uri
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(uri)
	}
}

/**
 Constraints to the base Consent.policyRule.
 
 An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
 */
open class ConsentProvision: BackboneElement {
	
	/// Action  to take - permit or deny - when the rule conditions are met.  Not permitted in root rule, required in
	/// all nested rules.
	public var type: FHIRPrimitive<ConsentProvisionType>?
	
	/// Timeframe for this rule
	public var period: Period?
	
	/// Who|what controlled by this rule (or group, by role)
	public var actor: [ConsentProvisionActor]?
	
	/// Actions controlled by this rule
	public var action: [CodeableConcept]?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Context of activities covered by this rule
	public var purpose: [Coding]?
	
	/// e.g. Resource Type, Profile, CDA, etc.
	public var `class`: [Coding]?
	
	/// e.g. LOINC or SNOMED CT code, etc. in the content
	public var code: [CodeableConcept]?
	
	/// Timeframe for data controlled by this rule
	public var dataPeriod: Period?
	
	/// Data controlled by this rule
	public var data: [ConsentProvisionData]?
	
	/// Nested Exception Rules
	public var provision: [ConsentProvision]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [CodeableConcept]? = nil,
		actor: [ConsentProvisionActor]? = nil,
		`class`: [Coding]? = nil,
		code: [CodeableConcept]? = nil,
		data: [ConsentProvisionData]? = nil,
		dataPeriod: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		period: Period? = nil,
		provision: [ConsentProvision]? = nil,
		purpose: [Coding]? = nil,
		securityLabel: [Coding]? = nil,
		type: FHIRPrimitive<ConsentProvisionType>? = nil
	) {
		self.init()
		self.action = action
		self.actor = actor
		self.`class` = `class`
		self.code = code
		self.data = data
		self.dataPeriod = dataPeriod
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.period = period
		self.provision = provision
		self.purpose = purpose
		self.securityLabel = securityLabel
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actor
		case `class` = "class"
		case code
		case data
		case dataPeriod
		case period
		case provision
		case purpose
		case securityLabel
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentProvisionActor](from: _container, forKeyIfPresent: .actor)
		self.`class` = try [Coding](from: _container, forKeyIfPresent: .`class`)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.data = try [ConsentProvisionData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.provision = try [ConsentProvision](from: _container, forKeyIfPresent: .provision)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try FHIRPrimitive<ConsentProvisionType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try code?.encode(on: &_container, forKey: .code)
		try data?.encode(on: &_container, forKey: .data)
		try dataPeriod?.encode(on: &_container, forKey: .dataPeriod)
		try period?.encode(on: &_container, forKey: .period)
		try provision?.encode(on: &_container, forKey: .provision)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConsentProvision else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && actor == _other.actor
		    && `class` == _other.`class`
		    && code == _other.code
		    && data == _other.data
		    && dataPeriod == _other.dataPeriod
		    && period == _other.period
		    && provision == _other.provision
		    && purpose == _other.purpose
		    && securityLabel == _other.securityLabel
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(actor)
		hasher.combine(`class`)
		hasher.combine(code)
		hasher.combine(data)
		hasher.combine(dataPeriod)
		hasher.combine(period)
		hasher.combine(provision)
		hasher.combine(purpose)
		hasher.combine(securityLabel)
		hasher.combine(type)
	}
}

/**
 Who|what controlled by this rule (or group, by role).
 
 Who or what is controlled by this rule. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
open class ConsentProvisionActor: BackboneElement {
	
	/// How the actor is involved
	public var role: CodeableConcept
	
	/// Resource for the actor (or group, by role)
	public var reference: Reference
	
	/// Designated initializer taking all required properties
	public init(reference: Reference, role: CodeableConcept) {
		self.reference = reference
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference,
		role: CodeableConcept
	) {
		self.init(reference: reference, role: role)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case reference
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.reference = try Reference(from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKey: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reference.encode(on: &_container, forKey: .reference)
		try role.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConsentProvisionActor else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return reference == _other.reference
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(reference)
		hasher.combine(role)
	}
}

/**
 Data controlled by this rule.
 
 The resources controlled by this rule if specific resources are referenced.
 */
open class ConsentProvisionData: BackboneElement {
	
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
		guard let _other = _other as? ConsentProvisionData else {
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

/**
 Consent Verified by patient or family.
 
 Whether a treatment instruction (e.g. artificial respiration yes or no) was verified with the patient, his/her family
 or another authorized person.
 */
open class ConsentVerification: BackboneElement {
	
	/// Has been verified
	public var verified: FHIRPrimitive<FHIRBool>
	
	/// Person who verified
	public var verifiedWith: Reference?
	
	/// When consent verified
	public var verificationDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	public init(verified: FHIRPrimitive<FHIRBool>) {
		self.verified = verified
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		verificationDate: FHIRPrimitive<DateTime>? = nil,
		verified: FHIRPrimitive<FHIRBool>,
		verifiedWith: Reference? = nil
	) {
		self.init(verified: verified)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.verificationDate = verificationDate
		self.verifiedWith = verifiedWith
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case verificationDate; case _verificationDate
		case verified; case _verified
		case verifiedWith
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.verificationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .verificationDate, auxiliaryKey: ._verificationDate)
		self.verified = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .verified, auxiliaryKey: ._verified)
		self.verifiedWith = try Reference(from: _container, forKeyIfPresent: .verifiedWith)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try verificationDate?.encode(on: &_container, forKey: .verificationDate, auxiliaryKey: ._verificationDate)
		try verified.encode(on: &_container, forKey: .verified, auxiliaryKey: ._verified)
		try verifiedWith?.encode(on: &_container, forKey: .verifiedWith)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConsentVerification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return verificationDate == _other.verificationDate
		    && verified == _other.verified
		    && verifiedWith == _other.verifiedWith
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(verificationDate)
		hasher.combine(verified)
		hasher.combine(verifiedWith)
	}
}
