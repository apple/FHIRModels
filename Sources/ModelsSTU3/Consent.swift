//
//  Consent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Consent)
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
 A healthcare consumer's policy choices to permits or denies recipients or roles to perform actions for specific
 purposes and periods of time.
 
 A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient
 role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
 */
public struct Consent: DomainResource {
	
	public static let resourceType: ResourceType = .consent
	
	/// All possible types for "source[x]"
	public enum SourceX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case identifier(Identifier)
		indirect case reference(Reference)
	}
	
	/// Actions controlled by this consent
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this consent (or group, by role)
	public var actor: [ConsentActor]?
	
	/// Classification of the consent statement - for indexing/retrieval
	public var category: [CodeableConcept]?
	
	/// Who is agreeing to the policy and exceptions
	public var consentingParty: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Data controlled by this consent
	public var data: [ConsentData]?
	
	/// Timeframe for data controlled by this consent
	public var dataPeriod: Period?
	
	/// When this Consent was created or indexed
	public var dateTime: FHIRPrimitive<DateTime>?
	
	/// Additional rule -  addition or removal of permissions
	public var except: [ConsentExcept]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for this record (external references)
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Custodian of the consent
	public var organization: [Reference]?
	
	/// Who the consent applies to
	public var patient: Reference
	
	/// Period that this consent applies
	public var period: Period?
	
	/// Policies covered by this consent
	public var policy: [ConsentPolicy]?
	
	/// Policy that this consents to
	public var policyRule: FHIRPrimitive<FHIRURI>?
	
	/// Context of activities for which the agreement is made
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Source from which this consent is taken
	/// One of `source[x]`
	public var source: SourceX?
	
	/// Indicates the current state of this consent.
	public var status: FHIRPrimitive<ConsentState>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
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
		text: Narrative? = nil
	) {
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
		self.patient = patient
		self.period = period
		self.policy = policy
		self.policyRule = policyRule
		self.purpose = purpose
		self.securityLabel = securityLabel
		self.source = source
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case actor
		case category
		case consentingParty
		case contained
		case data
		case dataPeriod
		case dateTime; case _dateTime
		case except
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
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
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentActor](from: _container, forKeyIfPresent: .actor)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.consentingParty = try [Reference](from: _container, forKeyIfPresent: .consentingParty)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.data = try [ConsentData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.dateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateTime, auxiliaryKey: ._dateTime)
		self.except = try [ConsentExcept](from: _container, forKeyIfPresent: .except)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try [Reference](from: _container, forKeyIfPresent: .organization)
		self.patient = try Reference(from: _container, forKey: .patient)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.policy = try [ConsentPolicy](from: _container, forKeyIfPresent: .policy)
		self.policyRule = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .policyRule, auxiliaryKey: ._policyRule)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.source = try Self._decodeSource(from: _container)
		self.status = try FHIRPrimitive<ConsentState>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try category?.encode(on: &_container, forKey: .category)
		try consentingParty?.encode(on: &_container, forKey: .consentingParty)
		try contained?.encode(on: &_container, forKey: .contained)
		try data?.encode(on: &_container, forKey: .data)
		try dataPeriod?.encode(on: &_container, forKey: .dataPeriod)
		try dateTime?.encode(on: &_container, forKey: .dateTime, auxiliaryKey: ._dateTime)
		try except?.encode(on: &_container, forKey: .except)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeSource(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SourceX? {
		var _t_source: SourceX? = nil
		if let sourceAttachment = try Attachment(from: _container, forKeyIfPresent: .sourceAttachment) {
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
		return _t_source
	}
}

/**
 Who|what controlled by this consent (or group, by role).
 
 Who or what is controlled by this consent. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
public struct ConsentActor: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Resource for the actor (or group, by role)
	public var reference: Reference
	
	/// How the actor is involved
	public var role: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference,
		role: CodeableConcept
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
		self.reference = try Reference(from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKey: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference)
		try role.encode(on: &_container, forKey: .role)
	}
}

/**
 Data controlled by this consent.
 
 The resources controlled by this consent, if specific resources are referenced.
 */
public struct ConsentData: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: FHIRPrimitive<ConsentDataMeaning>
	
	/// Extensions that cannot be ignored
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
 Additional rule -  addition or removal of permissions.
 
 An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
 */
public struct ConsentExcept: BackboneElement {
	
	/// Actions controlled by this exception
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this exception (or group, by role)
	public var actor: [ConsentExceptActor]?
	
	/// e.g. Resource Type, Profile, or CDA etc
	public var `class`: [Coding]?
	
	/// e.g. LOINC or SNOMED CT code, etc in the content
	public var code: [Coding]?
	
	/// Data controlled by this exception
	public var data: [ConsentExceptData]?
	
	/// Timeframe for data controlled by this exception
	public var dataPeriod: Period?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Timeframe for this exception
	public var period: Period?
	
	/// Context of activities covered by this exception
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Action  to take - permit or deny - when the exception conditions are met.
	public var type: FHIRPrimitive<ConsentExceptType>
	
	/// Designated initializer
	public init(
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
		type: FHIRPrimitive<ConsentExceptType>
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case period
		case purpose
		case securityLabel
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actor = try [ConsentExceptActor](from: _container, forKeyIfPresent: .actor)
		self.`class` = try [Coding](from: _container, forKeyIfPresent: .`class`)
		self.code = try [Coding](from: _container, forKeyIfPresent: .code)
		self.data = try [ConsentExceptData](from: _container, forKeyIfPresent: .data)
		self.dataPeriod = try Period(from: _container, forKeyIfPresent: .dataPeriod)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.purpose = try [Coding](from: _container, forKeyIfPresent: .purpose)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.type = try FHIRPrimitive<ConsentExceptType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actor?.encode(on: &_container, forKey: .actor)
		try `class`?.encode(on: &_container, forKey: .`class`)
		try code?.encode(on: &_container, forKey: .code)
		try data?.encode(on: &_container, forKey: .data)
		try dataPeriod?.encode(on: &_container, forKey: .dataPeriod)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Who|what controlled by this exception (or group, by role).
 
 Who or what is controlled by this Exception. Use group to identify a set of actors by some property they share (e.g.
 'admitting officers').
 */
public struct ConsentExceptActor: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Resource for the actor (or group, by role)
	public var reference: Reference
	
	/// How the actor is involved
	public var role: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference,
		role: CodeableConcept
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
		self.reference = try Reference(from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKey: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference)
		try role.encode(on: &_container, forKey: .role)
	}
}

/**
 Data controlled by this exception.
 
 The resources controlled by this exception, if specific resources are referenced.
 */
public struct ConsentExceptData: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: FHIRPrimitive<ConsentDataMeaning>
	
	/// Extensions that cannot be ignored
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
 Policies covered by this consent.
 
 The references to the policies that are included in this consent scope. Policies may be organizational, but are often
 defined jurisdictionally, or in law.
 */
public struct ConsentPolicy: BackboneElement {
	
	/// Enforcement source for policy
	public var authority: FHIRPrimitive<FHIRURI>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Specific policy covered by this consent
	public var uri: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		authority: FHIRPrimitive<FHIRURI>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		uri: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.authority = authority
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.uri = uri
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority; case _authority
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case uri; case _uri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .authority, auxiliaryKey: ._authority)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.uri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .uri, auxiliaryKey: ._uri)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority, auxiliaryKey: ._authority)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try uri?.encode(on: &_container, forKey: .uri, auxiliaryKey: ._uri)
	}
}
