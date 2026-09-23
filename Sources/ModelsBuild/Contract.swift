//
//  Contract.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Contract)
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
 Legal Agreement.
 
 Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
 */
public struct Contract: DomainResource {
	
	public static let resourceType: ResourceType = .contract
	
	/// All possible types for "legallyBinding[x]"
	public enum LegallyBindingX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// All possible types for "topic[x]"
	public enum TopicX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Acronym or short name
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Effective time
	public var applies: Period?
	
	/// Source of Contract
	public var author: Reference?
	
	/// Authority under which this Contract has standing
	public var authority: [Reference]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Contract precursor content
	public var contentDefinition: ContractContentDefinition?
	
	/// Content derived from the basal information
	public var contentDerivative: CodeableConcept?
	
	/// A sphere of control governed by an authoritative jurisdiction, organization, or person
	public var domain: [Reference]?
	
	/// Contract cessation cause
	public var expirationType: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Contract Friendly Language
	public var friendly: [ContractFriendly]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract number
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Source Contract Definition
	public var instantiatesCanonical: Reference?
	
	/// External Contract Definition
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// When this Contract was issued
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Contract Legal Language
	public var legal: [ContractLegal]?
	
	/// Negotiation status
	public var legalState: CodeableConcept?
	
	/// Binding Contract
	/// One of `legallyBinding[x]`
	public var legallyBinding: LegallyBindingX?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Computer friendly designation
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Key event in Contract History
	public var relevantHistory: [Reference]?
	
	/// Computable Contract Language
	public var rule: [ContractRule]?
	
	/// Range of Legal Concerns
	public var scope: CodeableConcept?
	
	/// Contract Signatory
	public var signer: [ContractSigner]?
	
	/// Specific Location
	public var site: [Reference]?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ContractStatus>?
	
	/// Subtype within the context of type
	public var subType: [CodeableConcept]?
	
	/// Contract Target Entity
	public var subject: [Reference]?
	
	/// Subordinate Friendly name
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Extra Information
	public var supportingInfo: [Reference]?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human Friendly name
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Focus of contract interest
	/// One of `topic[x]`
	public var topic: TopicX?
	
	/// Legal instrument category
	public var type: CodeableConcept?
	
	/// Basal definition
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business edition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		alias: [FHIRPrimitive<FHIRString>]? = nil,
		applies: Period? = nil,
		author: Reference? = nil,
		authority: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		contentDefinition: ContractContentDefinition? = nil,
		contentDerivative: CodeableConcept? = nil,
		domain: [Reference]? = nil,
		expirationType: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		friendly: [ContractFriendly]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instantiatesCanonical: Reference? = nil,
		instantiatesUri: FHIRPrimitive<FHIRURI>? = nil,
		issued: FHIRPrimitive<DateTime>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		legal: [ContractLegal]? = nil,
		legalState: CodeableConcept? = nil,
		legallyBinding: LegallyBindingX? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		relevantHistory: [Reference]? = nil,
		rule: [ContractRule]? = nil,
		scope: CodeableConcept? = nil,
		signer: [ContractSigner]? = nil,
		site: [Reference]? = nil,
		status: FHIRPrimitive<ContractStatus>? = nil,
		subType: [CodeableConcept]? = nil,
		subject: [Reference]? = nil,
		subtitle: FHIRPrimitive<FHIRString>? = nil,
		supportingInfo: [Reference]? = nil,
		term: [ContractTerm]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		topic: TopicX? = nil,
		type: CodeableConcept? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.alias = alias
		self.applies = applies
		self.author = author
		self.authority = authority
		self.contained = contained
		self.contentDefinition = contentDefinition
		self.contentDerivative = contentDerivative
		self.domain = domain
		self.expirationType = expirationType
		self.`extension` = `extension`
		self.friendly = friendly
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.issued = issued
		self.language = language
		self.legal = legal
		self.legalState = legalState
		self.legallyBinding = legallyBinding
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.relevantHistory = relevantHistory
		self.rule = rule
		self.scope = scope
		self.signer = signer
		self.site = site
		self.status = status
		self.subType = subType
		self.subject = subject
		self.subtitle = subtitle
		self.supportingInfo = supportingInfo
		self.term = term
		self.text = text
		self.title = title
		self.topic = topic
		self.type = type
		self.url = url
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case alias; case _alias
		case applies
		case author
		case authority
		case contained
		case contentDefinition
		case contentDerivative
		case domain
		case expirationType
		case `extension` = "extension"
		case friendly
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case issued; case _issued
		case language; case _language
		case legal
		case legalState
		case legallyBindingAttachment
		case legallyBindingReference
		case meta
		case modifierExtension
		case name; case _name
		case relevantHistory
		case rule
		case scope
		case signer
		case site
		case status; case _status
		case subType
		case subject
		case subtitle; case _subtitle
		case supportingInfo
		case term
		case text
		case title; case _title
		case topicCodeableConcept
		case topicReference
		case type
		case url; case _url
		case version; case _version
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authority = try [Reference](from: _container, forKeyIfPresent: .authority)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.contentDefinition = try ContractContentDefinition(from: _container, forKeyIfPresent: .contentDefinition)
		self.contentDerivative = try CodeableConcept(from: _container, forKeyIfPresent: .contentDerivative)
		self.domain = try [Reference](from: _container, forKeyIfPresent: .domain)
		self.expirationType = try CodeableConcept(from: _container, forKeyIfPresent: .expirationType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.friendly = try [ContractFriendly](from: _container, forKeyIfPresent: .friendly)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instantiatesCanonical = try Reference(from: _container, forKeyIfPresent: .instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legal = try [ContractLegal](from: _container, forKeyIfPresent: .legal)
		self.legalState = try CodeableConcept(from: _container, forKeyIfPresent: .legalState)
		self.legallyBinding = try Self._decodeLegallyBinding(from: _container)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.rule = try [ContractRule](from: _container, forKeyIfPresent: .rule)
		self.scope = try CodeableConcept(from: _container, forKeyIfPresent: .scope)
		self.signer = try [ContractSigner](from: _container, forKeyIfPresent: .signer)
		self.site = try [Reference](from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<ContractStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.term = try [ContractTerm](from: _container, forKeyIfPresent: .term)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try Self._decodeTopic(from: _container)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try applies?.encode(on: &_container, forKey: .applies)
		try author?.encode(on: &_container, forKey: .author)
		try authority?.encode(on: &_container, forKey: .authority)
		try contained?.encode(on: &_container, forKey: .contained)
		try contentDefinition?.encode(on: &_container, forKey: .contentDefinition)
		try contentDerivative?.encode(on: &_container, forKey: .contentDerivative)
		try domain?.encode(on: &_container, forKey: .domain)
		try expirationType?.encode(on: &_container, forKey: .expirationType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try friendly?.encode(on: &_container, forKey: .friendly)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legal?.encode(on: &_container, forKey: .legal)
		try legalState?.encode(on: &_container, forKey: .legalState)
		if let _enum = legallyBinding {
		switch _enum {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .legallyBindingAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .legallyBindingReference)
		}
		}
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try relevantHistory?.encode(on: &_container, forKey: .relevantHistory)
		try rule?.encode(on: &_container, forKey: .rule)
		try scope?.encode(on: &_container, forKey: .scope)
		try signer?.encode(on: &_container, forKey: .signer)
		try site?.encode(on: &_container, forKey: .site)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject?.encode(on: &_container, forKey: .subject)
		try subtitle?.encode(on: &_container, forKey: .subtitle, auxiliaryKey: ._subtitle)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try term?.encode(on: &_container, forKey: .term)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		if let _enum = topic {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .topicCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .topicReference)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeLegallyBinding(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> LegallyBindingX? {
		var _t_legallyBinding: LegallyBindingX? = nil
		if let legallyBindingAttachment = try Attachment(from: _container, forKeyIfPresent: .legallyBindingAttachment) {
			_t_legallyBinding = .attachment(legallyBindingAttachment)
		}
		if let legallyBindingReference = try Reference(from: _container, forKeyIfPresent: .legallyBindingReference) {
			if _t_legallyBinding != nil {
				throw DecodingError.dataCorruptedError(forKey: .legallyBindingReference, in: _container, debugDescription: "More than one value provided for \"legallyBinding\"")
			}
			_t_legallyBinding = .reference(legallyBindingReference)
		}
		return _t_legallyBinding
	}
	
	private static func _decodeTopic(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TopicX? {
		var _t_topic: TopicX? = nil
		if let topicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .topicCodeableConcept) {
			_t_topic = .codeableConcept(topicCodeableConcept)
		}
		if let topicReference = try Reference(from: _container, forKeyIfPresent: .topicReference) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicReference, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .reference(topicReference)
		}
		return _t_topic
	}
}

/**
 Contract precursor content.
 
 Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be
 associated with and transformable into a Contract.
 */
public struct ContractContentDefinition: BackboneElement {
	
	/// Publication Ownership
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When published
	public var publicationDate: FHIRPrimitive<DateTime>?
	
	/// None
	public var publicationStatus: FHIRPrimitive<ContractPublicationStatus>
	
	/// Publisher Entity
	public var publisher: Reference?
	
	/// Detailed Content Type Definition
	public var subType: CodeableConcept?
	
	/// Content structure and use
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		copyright: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		publicationDate: FHIRPrimitive<DateTime>? = nil,
		publicationStatus: FHIRPrimitive<ContractPublicationStatus>,
		publisher: Reference? = nil,
		subType: CodeableConcept? = nil,
		type: CodeableConcept
	) {
		self.copyright = copyright
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.publicationDate = publicationDate
		self.publicationStatus = publicationStatus
		self.publisher = publisher
		self.subType = subType
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case copyright; case _copyright
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case publicationDate; case _publicationDate
		case publicationStatus; case _publicationStatus
		case publisher
		case subType
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.publicationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.publicationStatus = try FHIRPrimitive<ContractPublicationStatus>(from: _container, forKey: .publicationStatus, auxiliaryKey: ._publicationStatus)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try publicationStatus.encode(on: &_container, forKey: .publicationStatus, auxiliaryKey: ._publicationStatus)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try subType?.encode(on: &_container, forKey: .subType)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Contract Friendly Language.
 
 The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the
 representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a
 layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the
 Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
 */
public struct ContractFriendly: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// Easily comprehended representation of this Contract
	/// One of `content[x]`
	public var content: ContentX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		content: ContentX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try Self._decodeContent(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch content {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .contentAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .contentReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeContent(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ContentX {
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		guard let _t_content else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.contentReference)
			throw DecodingError.valueNotFound(ContentX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		return _t_content
	}
}

/**
 Contract Legal Language.
 
 List of Legal expressions or representations of this Contract.
 */
public struct ContractLegal: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// Contract Legal Text
	/// One of `content[x]`
	public var content: ContentX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		content: ContentX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try Self._decodeContent(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch content {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .contentAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .contentReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeContent(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ContentX {
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		guard let _t_content else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.contentReference)
			throw DecodingError.valueNotFound(ContentX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		return _t_content
	}
}

/**
 Computable Contract Language.
 
 List of Computable Policy Rule Language Representations of this Contract.
 */
public struct ContractRule: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// Computable Contract Rules
	/// One of `content[x]`
	public var content: ContentX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		content: ContentX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.content = content
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.content = try Self._decodeContent(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch content {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .contentAttachment)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .contentReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeContent(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ContentX {
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		guard let _t_content else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.contentReference)
			throw DecodingError.valueNotFound(ContentX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		return _t_content
	}
}

/**
 Contract Signatory.
 
 Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are
 any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the
 contract such as a notary or witness.
 */
public struct ContractSigner: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Contract Signatory Party
	public var party: Reference
	
	/// Contract Documentation Signature
	public var signature: [Signature]
	
	/// Contract Signatory Role
	public var type: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference,
		signature: [Signature],
		type: Coding
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.party = party
		self.signature = signature
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case party
		case signature
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try Reference(from: _container, forKey: .party)
		self.signature = try [Signature](from: _container, forKey: .signature)
		self.type = try Coding(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party.encode(on: &_container, forKey: .party)
		try signature.encode(on: &_container, forKey: .signature)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Contract Term List.
 
 One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
 */
public struct ContractTerm: BackboneElement {
	
	/// All possible types for "topic[x]"
	public enum TopicX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Entity being ascribed responsibility
	public var action: [ContractTermAction]?
	
	/// Contract Term Effective Time
	public var applies: Period?
	
	/// Contract Term Asset List
	public var asset: [ContractTermAsset]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Nested Contract Term Group
	public var group: [ContractTerm]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract Term Number
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Context of the Contract term
	public var offer: ContractTermOffer
	
	/// Protection for the Term
	public var securityLabel: [ContractTermSecurityLabel]?
	
	/// Contract Term Type specific classification
	public var subType: CodeableConcept?
	
	/// Term Statement
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Term Concern
	/// One of `topic[x]`
	public var topic: TopicX?
	
	/// Contract Term Type or Form
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		action: [ContractTermAction]? = nil,
		applies: Period? = nil,
		asset: [ContractTermAsset]? = nil,
		`extension`: [Extension]? = nil,
		group: [ContractTerm]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		issued: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		offer: ContractTermOffer,
		securityLabel: [ContractTermSecurityLabel]? = nil,
		subType: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		topic: TopicX? = nil,
		type: CodeableConcept? = nil
	) {
		self.action = action
		self.applies = applies
		self.asset = asset
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.issued = issued
		self.modifierExtension = modifierExtension
		self.offer = offer
		self.securityLabel = securityLabel
		self.subType = subType
		self.text = text
		self.topic = topic
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case applies
		case asset
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case issued; case _issued
		case modifierExtension
		case offer
		case securityLabel
		case subType
		case text; case _text
		case topicCodeableConcept
		case topicReference
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [ContractTermAction](from: _container, forKeyIfPresent: .action)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.asset = try [ContractTermAsset](from: _container, forKeyIfPresent: .asset)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [ContractTerm](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.offer = try ContractTermOffer(from: _container, forKey: .offer)
		self.securityLabel = try [ContractTermSecurityLabel](from: _container, forKeyIfPresent: .securityLabel)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.topic = try Self._decodeTopic(from: _container)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try applies?.encode(on: &_container, forKey: .applies)
		try asset?.encode(on: &_container, forKey: .asset)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try offer.encode(on: &_container, forKey: .offer)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try subType?.encode(on: &_container, forKey: .subType)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		if let _enum = topic {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .topicCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .topicReference)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTopic(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TopicX? {
		var _t_topic: TopicX? = nil
		if let topicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .topicCodeableConcept) {
			_t_topic = .codeableConcept(topicCodeableConcept)
		}
		if let topicReference = try Reference(from: _container, forKeyIfPresent: .topicReference) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicReference, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .reference(topicReference)
		}
		return _t_topic
	}
}

/**
 Entity being ascribed responsibility.
 
 An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
public struct ContractTermAction: BackboneElement {
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
		indirect case timing(Timing)
	}
	
	/// Episode associated with action
	public var context: Reference?
	
	/// Pointer to specific item
	public var contextLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// True if the term prohibits the  action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Purpose for the Contract Term Action
	public var intent: CodeableConcept
	
	/// Pointer to specific item
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Comments about the action
	public var note: [Annotation]?
	
	/// When action happens
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Actor that wil execute (or not) the action
	public var performer: Reference?
	
	/// Pointer to specific item
	public var performerLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Competency of the performer
	public var performerRole: CodeableConcept?
	
	/// Kind of service performer
	public var performerType: [CodeableConcept]?
	
	/// Why is action (not) needed?
	public var reason: [CodeableReference]?
	
	/// Pointer to specific item
	public var reasonLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Who asked for action
	public var requester: [Reference]?
	
	/// Pointer to specific item
	public var requesterLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Action restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// State of the action
	public var status: CodeableConcept
	
	/// Entity of the action
	public var subject: [ContractTermActionSubject]?
	
	/// Type or form of the action
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		context: Reference? = nil,
		contextLinkId: [FHIRPrimitive<FHIRString>]? = nil,
		doNotPerform: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		intent: CodeableConcept,
		linkId: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX? = nil,
		performer: Reference? = nil,
		performerLinkId: [FHIRPrimitive<FHIRString>]? = nil,
		performerRole: CodeableConcept? = nil,
		performerType: [CodeableConcept]? = nil,
		reason: [CodeableReference]? = nil,
		reasonLinkId: [FHIRPrimitive<FHIRString>]? = nil,
		requester: [Reference]? = nil,
		requesterLinkId: [FHIRPrimitive<FHIRString>]? = nil,
		securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil,
		status: CodeableConcept,
		subject: [ContractTermActionSubject]? = nil,
		type: CodeableConcept
	) {
		self.context = context
		self.contextLinkId = contextLinkId
		self.doNotPerform = doNotPerform
		self.`extension` = `extension`
		self.id = id
		self.intent = intent
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.performer = performer
		self.performerLinkId = performerLinkId
		self.performerRole = performerRole
		self.performerType = performerType
		self.reason = reason
		self.reasonLinkId = reasonLinkId
		self.requester = requester
		self.requesterLinkId = requesterLinkId
		self.securityLabelNumber = securityLabelNumber
		self.status = status
		self.subject = subject
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case context
		case contextLinkId; case _contextLinkId
		case doNotPerform; case _doNotPerform
		case `extension` = "extension"
		case id; case _id
		case intent
		case linkId; case _linkId
		case modifierExtension
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case performer
		case performerLinkId; case _performerLinkId
		case performerRole
		case performerType
		case reason
		case reasonLinkId; case _reasonLinkId
		case requester
		case requesterLinkId; case _requesterLinkId
		case securityLabelNumber; case _securityLabelNumber
		case status
		case subject
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.contextLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .contextLinkId, auxiliaryKey: ._contextLinkId)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.intent = try CodeableConcept(from: _container, forKey: .intent)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .performerLinkId, auxiliaryKey: ._performerLinkId)
		self.performerRole = try CodeableConcept(from: _container, forKeyIfPresent: .performerRole)
		self.performerType = try [CodeableConcept](from: _container, forKeyIfPresent: .performerType)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.reasonLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .reasonLinkId, auxiliaryKey: ._reasonLinkId)
		self.requester = try [Reference](from: _container, forKeyIfPresent: .requester)
		self.requesterLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .requesterLinkId, auxiliaryKey: ._requesterLinkId)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		self.subject = try [ContractTermActionSubject](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try context?.encode(on: &_container, forKey: .context)
		try contextLinkId?.encode(on: &_container, forKey: .contextLinkId, auxiliaryKey: ._contextLinkId)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try intent.encode(on: &_container, forKey: .intent)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		if let _enum = occurrence {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .occurrencePeriod)
		case .timing(let _value):
			try _value.encode(on: &_container, forKey: .occurrenceTiming)
		}
		}
		try performer?.encode(on: &_container, forKey: .performer)
		try performerLinkId?.encode(on: &_container, forKey: .performerLinkId, auxiliaryKey: ._performerLinkId)
		try performerRole?.encode(on: &_container, forKey: .performerRole)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try reason?.encode(on: &_container, forKey: .reason)
		try reasonLinkId?.encode(on: &_container, forKey: .reasonLinkId, auxiliaryKey: ._reasonLinkId)
		try requester?.encode(on: &_container, forKey: .requester)
		try requesterLinkId?.encode(on: &_container, forKey: .requesterLinkId, auxiliaryKey: ._requesterLinkId)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try status.encode(on: &_container, forKey: .status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX? {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrencePeriod = try Period(from: _container, forKeyIfPresent: .occurrencePeriod) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrencePeriod, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .period(occurrencePeriod)
		}
		if let occurrenceTiming = try Timing(from: _container, forKeyIfPresent: .occurrenceTiming) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceTiming, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .timing(occurrenceTiming)
		}
		return _t_occurrence
	}
}

/**
 Entity of the action.
 */
public struct ContractTermActionSubject: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Entity of the action
	public var reference: [Reference]
	
	/// Role type of the agent
	public var role: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: [Reference],
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
		self.reference = try [Reference](from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Contract Term Asset List.
 */
public struct ContractTermAsset: BackboneElement {
	
	/// Response to assets
	public var answer: [ContractTermOfferAnswer]?
	
	/// Quality desctiption of asset
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Circumstance of the asset
	public var context: [ContractTermAssetContext]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Pointer to asset text
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Time period of the asset
	public var period: [Period]?
	
	/// Asset availability types
	public var periodType: [CodeableConcept]?
	
	/// Kinship of the asset
	public var relationship: Coding?
	
	/// Range of asset
	public var scope: CodeableConcept?
	
	/// Asset restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Asset sub-category
	public var subtype: [CodeableConcept]?
	
	/// Asset clause or question text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Asset category
	public var type: [CodeableConcept]?
	
	/// Associated entities
	public var typeReference: [Reference]?
	
	/// Time period
	public var usePeriod: [Period]?
	
	/// Contract Valued Item List
	public var valuedItem: [ContractTermAssetValuedItem]?
	
	/// Designated initializer
	public init(
		answer: [ContractTermOfferAnswer]? = nil,
		condition: FHIRPrimitive<FHIRString>? = nil,
		context: [ContractTermAssetContext]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		linkId: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		period: [Period]? = nil,
		periodType: [CodeableConcept]? = nil,
		relationship: Coding? = nil,
		scope: CodeableConcept? = nil,
		securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil,
		subtype: [CodeableConcept]? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: [CodeableConcept]? = nil,
		typeReference: [Reference]? = nil,
		usePeriod: [Period]? = nil,
		valuedItem: [ContractTermAssetValuedItem]? = nil
	) {
		self.answer = answer
		self.condition = condition
		self.context = context
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.period = period
		self.periodType = periodType
		self.relationship = relationship
		self.scope = scope
		self.securityLabelNumber = securityLabelNumber
		self.subtype = subtype
		self.text = text
		self.type = type
		self.typeReference = typeReference
		self.usePeriod = usePeriod
		self.valuedItem = valuedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answer
		case condition; case _condition
		case context
		case `extension` = "extension"
		case id; case _id
		case linkId; case _linkId
		case modifierExtension
		case period
		case periodType
		case relationship
		case scope
		case securityLabelNumber; case _securityLabelNumber
		case subtype
		case text; case _text
		case type
		case typeReference
		case usePeriod
		case valuedItem
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.answer = try [ContractTermOfferAnswer](from: _container, forKeyIfPresent: .answer)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try [ContractTermAssetContext](from: _container, forKeyIfPresent: .context)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.period = try [Period](from: _container, forKeyIfPresent: .period)
		self.periodType = try [CodeableConcept](from: _container, forKeyIfPresent: .periodType)
		self.relationship = try Coding(from: _container, forKeyIfPresent: .relationship)
		self.scope = try CodeableConcept(from: _container, forKeyIfPresent: .scope)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.subtype = try [CodeableConcept](from: _container, forKeyIfPresent: .subtype)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.typeReference = try [Reference](from: _container, forKeyIfPresent: .typeReference)
		self.usePeriod = try [Period](from: _container, forKeyIfPresent: .usePeriod)
		self.valuedItem = try [ContractTermAssetValuedItem](from: _container, forKeyIfPresent: .valuedItem)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try answer?.encode(on: &_container, forKey: .answer)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try period?.encode(on: &_container, forKey: .period)
		try periodType?.encode(on: &_container, forKey: .periodType)
		try relationship?.encode(on: &_container, forKey: .relationship)
		try scope?.encode(on: &_container, forKey: .scope)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try subtype?.encode(on: &_container, forKey: .subtype)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try typeReference?.encode(on: &_container, forKey: .typeReference)
		try usePeriod?.encode(on: &_container, forKey: .usePeriod)
		try valuedItem?.encode(on: &_container, forKey: .valuedItem)
	}
}

/**
 Circumstance of the asset.
 */
public struct ContractTermAssetContext: BackboneElement {
	
	/// Codeable asset context
	public var code: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Creator,custodian or owner
	public var reference: Reference?
	
	/// Context description
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		code: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: Reference? = nil,
		text: FHIRPrimitive<FHIRString>? = nil
	) {
		self.code = code
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reference = reference
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reference
		case text; case _text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try code?.encode(on: &_container, forKey: .code)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reference?.encode(on: &_container, forKey: .reference)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
	}
}

/**
 Contract Valued Item List.
 */
public struct ContractTermAssetValuedItem: BackboneElement {
	
	/// All possible types for "entity[x]"
	public enum EntityX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contract Valued Item Effective Tiem
	public var effectiveTime: FHIRPrimitive<DateTime>?
	
	/// Contract Valued Item Type
	/// One of `entity[x]`
	public var entity: EntityX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Contract Valued Item Price Scaling Factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract Valued Item Number
	public var identifier: Identifier?
	
	/// Pointer to specific item
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Total Contract Valued Item Value
	public var net: Money?
	
	/// Terms of valuation
	public var payment: FHIRPrimitive<FHIRString>?
	
	/// When payment is due
	public var paymentDate: FHIRPrimitive<DateTime>?
	
	/// Contract Valued Item Difficulty Scaling Factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Count of Contract Valued Items
	public var quantity: Quantity?
	
	/// Who will receive payment
	public var recipient: Reference?
	
	/// Who will make payment
	public var responsible: Reference?
	
	/// Security Labels that define affected terms
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Contract Valued Item fee, charge, or cost
	public var unitPrice: Money?
	
	/// Designated initializer
	public init(
		effectiveTime: FHIRPrimitive<DateTime>? = nil,
		entity: EntityX? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		linkId: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		net: Money? = nil,
		payment: FHIRPrimitive<FHIRString>? = nil,
		paymentDate: FHIRPrimitive<DateTime>? = nil,
		points: FHIRPrimitive<FHIRDecimal>? = nil,
		quantity: Quantity? = nil,
		recipient: Reference? = nil,
		responsible: Reference? = nil,
		securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil,
		unitPrice: Money? = nil
	) {
		self.effectiveTime = effectiveTime
		self.entity = entity
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.identifier = identifier
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.net = net
		self.payment = payment
		self.paymentDate = paymentDate
		self.points = points
		self.quantity = quantity
		self.recipient = recipient
		self.responsible = responsible
		self.securityLabelNumber = securityLabelNumber
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effectiveTime; case _effectiveTime
		case entityCodeableConcept
		case entityReference
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case identifier
		case linkId; case _linkId
		case modifierExtension
		case net
		case payment; case _payment
		case paymentDate; case _paymentDate
		case points; case _points
		case quantity
		case recipient
		case responsible
		case securityLabelNumber; case _securityLabelNumber
		case unitPrice
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.effectiveTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveTime, auxiliaryKey: ._effectiveTime)
		self.entity = try Self._decodeEntity(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.payment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .payment, auxiliaryKey: ._payment)
		self.paymentDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.recipient = try Reference(from: _container, forKeyIfPresent: .recipient)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try effectiveTime?.encode(on: &_container, forKey: .effectiveTime, auxiliaryKey: ._effectiveTime)
		if let _enum = entity {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .entityCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .entityReference)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try payment?.encode(on: &_container, forKey: .payment, auxiliaryKey: ._payment)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeEntity(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> EntityX? {
		var _t_entity: EntityX? = nil
		if let entityCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .entityCodeableConcept) {
			_t_entity = .codeableConcept(entityCodeableConcept)
		}
		if let entityReference = try Reference(from: _container, forKeyIfPresent: .entityReference) {
			if _t_entity != nil {
				throw DecodingError.dataCorruptedError(forKey: .entityReference, in: _container, debugDescription: "More than one value provided for \"entity\"")
			}
			_t_entity = .reference(entityReference)
		}
		return _t_entity
	}
}

/**
 Context of the Contract term.
 
 The matter of concern in the context of this provision of the agrement.
 */
public struct ContractTermOffer: BackboneElement {
	
	/// Response to offer text
	public var answer: [ContractTermOfferAnswer]?
	
	/// Accepting party choice
	public var decision: CodeableConcept?
	
	/// How decision is conveyed
	public var decisionMode: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Offer business ID
	public var identifier: [Identifier]?
	
	/// Pointer to text
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Offer Recipient
	public var party: [ContractTermOfferParty]?
	
	/// Offer restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Human readable offer text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Negotiable offer asset
	public var topic: Reference?
	
	/// Contract Offer Type or Form
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		answer: [ContractTermOfferAnswer]? = nil,
		decision: CodeableConcept? = nil,
		decisionMode: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		linkId: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		party: [ContractTermOfferParty]? = nil,
		securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		topic: Reference? = nil,
		type: CodeableConcept? = nil
	) {
		self.answer = answer
		self.decision = decision
		self.decisionMode = decisionMode
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.party = party
		self.securityLabelNumber = securityLabelNumber
		self.text = text
		self.topic = topic
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case answer
		case decision
		case decisionMode
		case `extension` = "extension"
		case id; case _id
		case identifier
		case linkId; case _linkId
		case modifierExtension
		case party
		case securityLabelNumber; case _securityLabelNumber
		case text; case _text
		case topic
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.answer = try [ContractTermOfferAnswer](from: _container, forKeyIfPresent: .answer)
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.decisionMode = try [CodeableConcept](from: _container, forKeyIfPresent: .decisionMode)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.party = try [ContractTermOfferParty](from: _container, forKeyIfPresent: .party)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.topic = try Reference(from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try answer?.encode(on: &_container, forKey: .answer)
		try decision?.encode(on: &_container, forKey: .decision)
		try decisionMode?.encode(on: &_container, forKey: .decisionMode)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try party?.encode(on: &_container, forKey: .party)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Response to offer text.
 */
public struct ContractTermOfferAnswer: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		indirect case quantity(Quantity)
		indirect case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The actual answer response
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: ValueX
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case valueAttachment
		case valueBoolean; case _valueBoolean
		case valueCoding
		case valueDate; case _valueDate
		case valueDateTime; case _valueDateTime
		case valueDecimal; case _valueDecimal
		case valueInteger; case _valueInteger
		case valueQuantity
		case valueReference
		case valueString; case _valueString
		case valueTime; case _valueTime
		case valueUri; case _valueUri
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.value = try Self._decodeValue(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch value {
		case .attachment(let _value):
			try _value.encode(on: &_container, forKey: .valueAttachment)
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .valueCoding)
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
		case .decimal(let _value):
			try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
		case .integer(let _value):
			try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .valueQuantity)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .valueReference)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
		case .time(let _value):
			try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
		}
		
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeValue(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ValueX {
		var _t_value: ValueX? = nil
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			_t_value = .attachment(valueAttachment)
		}
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
		}
		if let valueDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .valueDate, auxiliaryKey: ._valueDate) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDate, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .date(valueDate)
		}
		if let valueDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .valueDateTime, auxiliaryKey: ._valueDateTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDateTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .dateTime(valueDateTime)
		}
		if let valueDecimal = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .valueDecimal, auxiliaryKey: ._valueDecimal) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueDecimal, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .decimal(valueDecimal)
		}
		if let valueInteger = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .valueInteger, auxiliaryKey: ._valueInteger) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueInteger, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .integer(valueInteger)
		}
		if let valueQuantity = try Quantity(from: _container, forKeyIfPresent: .valueQuantity) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueQuantity, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .quantity(valueQuantity)
		}
		if let valueReference = try Reference(from: _container, forKeyIfPresent: .valueReference) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueReference, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .reference(valueReference)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		guard let _t_value else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.valueUri)
			throw DecodingError.valueNotFound(ValueX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		return _t_value
	}
}

/**
 Offer Recipient.
 */
public struct ContractTermOfferParty: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Referenced entity
	public var reference: [Reference]
	
	/// Participant engagement type
	public var role: CodeableConcept
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reference: [Reference],
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
		self.reference = try [Reference](from: _container, forKey: .reference)
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
 Protection for the Term.
 
 Security labels that protect the handling of information about the term and its elements, which may be specifically
 identified.
 */
public struct ContractTermSecurityLabel: BackboneElement {
	
	/// Applicable Policy
	public var category: [Coding]?
	
	/// Confidentiality Protection
	public var classification: Coding
	
	/// Handling Instructions
	public var control: [Coding]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Link to Security Labels
	public var number: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Designated initializer
	public init(
		category: [Coding]? = nil,
		classification: Coding,
		control: [Coding]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		number: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil
	) {
		self.category = category
		self.classification = classification
		self.control = control
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.number = number
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case classification
		case control
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case number; case _number
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.category = try [Coding](from: _container, forKeyIfPresent: .category)
		self.classification = try Coding(from: _container, forKey: .classification)
		self.control = try [Coding](from: _container, forKeyIfPresent: .control)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try category?.encode(on: &_container, forKey: .category)
		try classification.encode(on: &_container, forKey: .classification)
		try control?.encode(on: &_container, forKey: .control)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
	}
}
