//
//  Consent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Consent)
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
 A healthcare consumer's policy choices to permits or denies recipients or roles to perform actions for specific
 purposes and periods of time.
 
 A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient
 role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
 */
open class Consent: DomainResource {
	
	override open class var resourceType: ResourceType { return .consent }
	
	/// All possible types for "source[x]"
	public enum SourceX: Hashable {
		case attachment(Attachment)
		case identifier(Identifier)
		case reference(Reference)
	}
	
	/// Identifier for this record (external references)
	public var identifier: Identifier?
	
	/// Indicates the current state of this consent.
	public var status: FHIRPrimitive<ConsentState>
	
	/// Classification of the consent statement - for indexing/retrieval
	public var category: [CodeableConcept]?
	
	/// Who the consent applies to
	public var patient: Reference
	
	/// Period that this consent applies
	public var period: Period?
	
	/// When this Consent was created or indexed
	public var dateTime: FHIRPrimitive<DateTime>?
	
	/// Who is agreeing to the policy and exceptions
	public var consentingParty: [Reference]?
	
	/// Who|what controlled by this consent (or group, by role)
	public var actor: [ConsentActor]?
	
	/// Actions controlled by this consent
	public var action: [CodeableConcept]?
	
	/// Custodian of the consent
	public var organization: [Reference]?
	
	/// Source from which this consent is taken
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Policies covered by this consent
	public var policy: [ConsentPolicy]?
	
	/// Policy that this consents to
	public var policyRule: FHIRPrimitive<FHIRURI>?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Context of activities for which the agreement is made
	public var purpose: [Coding]?
	
	/// Timeframe for data controlled by this consent
	public var dataPeriod: Period?
	
	/// Data controlled by this consent
	public var data: [ConsentData]?
	
	/// Additional rule -  addition or removal of permissions
	public var except: [ConsentExcept]?
	
	/// Designated initializer taking all required properties
	public init(patient: Reference, status: FHIRPrimitive<ConsentState>) {
		self.patient = patient
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [CodeableConcept]? = nil,
							actor: [ConsentActor]? = nil,
							category: [CodeableConcept]? = nil,
							consentingParty: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							data: [ConsentData]? = nil,
							dataPeriod: Period? = nil,
							dateTime: FHIRPrimitive<DateTime>? = nil,
							except: [ConsentExcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: [Reference]? = nil,
							patient: Reference,
							period: Period? = nil,
							policy: [ConsentPolicy]? = nil,
							policyRule: FHIRPrimitive<FHIRURI>? = nil,
							purpose: [Coding]? = nil,
							securityLabel: [Coding]? = nil,
							source: SourceX? = nil,
							status: FHIRPrimitive<ConsentState>,
							text: Narrative? = nil)
	{
		self.init(patient: patient, status: status)
		self.action = action
		self.actor = actor
		self.category = category
		self.consentingParty = consentingParty
		self.contained = contained
		self.data = data
		self.dataPeriod = dataPeriod
		self.dateTime = dateTime
		self.except = except
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.period = period
		self.policy = policy
		self.policyRule = policyRule
		self.purpose = purpose
		self.securityLabel = securityLabel
		self.source = source
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actor
		case category
		case consentingParty
		case data
		case dataPeriod
		case dateTime; case _dateTime
		case except
		case identifier
		case organization
		case patient
		case period
		case policy
		case policyRule; case _policyRule
		case purpose
		case securityLabel
		case sourceAttachment
		case sourceIdentifier
		case sourceReference
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentActor](from: _container, forKeyIfPresent: .actor)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.consentingParty = try [Reference](from: _container, forKeyIfPresent: .consentingParty)
		self.data = try [ConsentData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateTime, auxiliaryKey: ._dateTime)
		self.except = try [ConsentExcept](from: _container, forKeyIfPresent: .except)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.organization = try [Reference](from: _container, forKeyIfPresent: .organization)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [ConsentPolicy](from: _container, forKeyIfPresent: .policy)
		self.policyRule = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .policyRule, auxiliaryKey: ._policyRule)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		var _t_source: SourceX? = nil
		if let sourceAttachment = try Attachment(from: _container, forKeyIfPresent: .sourceAttachment) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceAttachment, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .attachment(sourceAttachment)
		}
		if let sourceIdentifier = try Identifier(from: _container, forKeyIfPresent: .sourceIdentifier) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceIdentifier, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .identifier(sourceIdentifier)
		}
		if let sourceReference = try Reference(from: _container, forKeyIfPresent: .sourceReference) {
			if _t_source != nil {
				throw DecodingError.dataCorruptedError(forKey: .sourceReference, in: _container, debugDescription: "More than one value provided for \"source\"")
			}
			_t_source = .reference(sourceReference)
		}
		self.source = _t_source
		self.status = try FHIRPrimitive<ConsentState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try category?.encode(on: &_container, forKey: .category)
		try consentingParty?.encode(on: &_container, forKey: .consentingParty)
		try data?.encode(on: &_container, forKey: .data)
		try dataPeriod?.encode(on: &_container, forKey: .dataPeriod)
		try dateTime?.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try except?.encode(on: &_container, forKey: .except)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try patient.encode(on: &_container, forKey: .patient)
		try period?.encode(on: &_container, forKey: .period)
		try policy?.encode(on: &_container, forKey: .policy)
		try policyRule?.encode(on: &_container, forKey: .policyRule, auxiliaryKey: ._policyRule)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		if let _enum = source {
			switch _enum {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .sourceAttachment)
			case .identifier(let _value):
				try _value.encode(on: &_container, forKey: .sourceIdentifier)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .sourceReference)
			}
		}
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
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
		return action == _other.action
		    && actor == _other.actor
		    && category == _other.category
		    && consentingParty == _other.consentingParty
		    && data == _other.data
		    && dataPeriod == _other.dataPeriod
		    && dateTime == _other.dateTime
		    && except == _other.except
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && patient == _other.patient
		    && period == _other.period
		    && policy == _other.policy
		    && policyRule == _other.policyRule
		    && purpose == _other.purpose
		    && securityLabel == _other.securityLabel
		    && source == _other.source
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(actor)
		hasher.combine(category)
		hasher.combine(consentingParty)
		hasher.combine(data)
		hasher.combine(dataPeriod)
		hasher.combine(dateTime)
		hasher.combine(except)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(patient)
		hasher.combine(period)
		hasher.combine(policy)
		hasher.combine(policyRule)
		hasher.combine(purpose)
		hasher.combine(securityLabel)
		hasher.combine(source)
		hasher.combine(status)
	}
}

/**
 Who|what controlled by this consent (or group, by role).
 
 Who or what is controlled by this consent. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
open class ConsentActor: BackboneElement {
	
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
							role: CodeableConcept)
	{
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
		guard let _other = _other as? ConsentActor else {
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
 Data controlled by this consent.
 
 The resources controlled by this consent, if specific resources are referenced.
 */
open class ConsentData: BackboneElement {
	
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
							reference: Reference)
	{
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
		guard let _other = _other as? ConsentData else {
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
 Additional rule -  addition or removal of permissions.
 
 An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
 */
open class ConsentExcept: BackboneElement {
	
	/// Action  to take - permit or deny - when the exception conditions are met.
	public var type: FHIRPrimitive<ConsentExceptType>
	
	/// Timeframe for this exception
	public var period: Period?
	
	/// Who|what controlled by this exception (or group, by role)
	public var actor: [ConsentExceptActor]?
	
	/// Actions controlled by this exception
	public var action: [CodeableConcept]?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Context of activities covered by this exception
	public var purpose: [Coding]?
	
	/// e.g. Resource Type, Profile, or CDA etc
	public var `class`: [Coding]?
	
	/// e.g. LOINC or SNOMED CT code, etc in the content
	public var code: [Coding]?
	
	/// Timeframe for data controlled by this exception
	public var dataPeriod: Period?
	
	/// Data controlled by this exception
	public var data: [ConsentExceptData]?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ConsentExceptType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [CodeableConcept]? = nil,
							actor: [ConsentExceptActor]? = nil,
							`class`: [Coding]? = nil,
							code: [Coding]? = nil,
							data: [ConsentExceptData]? = nil,
							dataPeriod: Period? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							period: Period? = nil,
							purpose: [Coding]? = nil,
							securityLabel: [Coding]? = nil,
							type: FHIRPrimitive<ConsentExceptType>)
	{
		self.init(type: type)
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
		self.purpose = purpose
		self.securityLabel = securityLabel
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
		case purpose
		case securityLabel
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentExceptActor](from: _container, forKeyIfPresent: .actor)
		self.`class` = try [Coding](from: _container, forKeyIfPresent: .`class`)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.data = try [ConsentExceptData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try FHIRPrimitive<ConsentExceptType>(from: _container, forKey: .type, auxiliaryKey: ._type)
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
		try purpose?.encode(on: &_container, forKey: .purpose)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ConsentExcept else {
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
		hasher.combine(purpose)
		hasher.combine(securityLabel)
		hasher.combine(type)
	}
}

/**
 Who|what controlled by this exception (or group, by role).
 
 Who or what is controlled by this Exception. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
open class ConsentExceptActor: BackboneElement {
	
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
							role: CodeableConcept)
	{
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
		guard let _other = _other as? ConsentExceptActor else {
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
 Data controlled by this exception.
 
 The resources controlled by this exception, if specific resources are referenced.
 */
open class ConsentExceptData: BackboneElement {
	
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
							reference: Reference)
	{
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
		guard let _other = _other as? ConsentExceptData else {
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
							uri: FHIRPrimitive<FHIRURI>? = nil)
	{
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
