//
//  Contract.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Contract)
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
 Legal Agreement.
 
 Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
 */
open class Contract: DomainResource {
	
	override open class var resourceType: ResourceType { return .contract }
	
	/// All possible types for "legallyBinding[x]"
	public enum LegallyBindingX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// All possible types for "topic[x]"
	public enum TopicX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Contract number
	public var identifier: [Identifier]?
	
	/// Basal definition
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business edition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// The status of the resource instance.
	public var status: FHIRPrimitive<ContractResourceStatusCodes>?
	
	/// Negotiation status
	public var legalState: CodeableConcept?
	
	/// Source Contract Definition
	public var instantiatesCanonical: Reference?
	
	/// External Contract Definition
	public var instantiatesUri: FHIRPrimitive<FHIRURI>?
	
	/// Content derived from the basal information
	public var contentDerivative: CodeableConcept?
	
	/// When this Contract was issued
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Effective time
	public var applies: Period?
	
	/// Contract cessation cause
	public var expirationType: CodeableConcept?
	
	/// Contract Target Entity
	public var subject: [Reference]?
	
	/// Authority under which this Contract has standing
	public var authority: [Reference]?
	
	/// A sphere of control governed by an authoritative jurisdiction, organization, or person
	public var domain: [Reference]?
	
	/// Specific Location
	public var site: [Reference]?
	
	/// Computer friendly designation
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Human Friendly name
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Subordinate Friendly name
	public var subtitle: FHIRPrimitive<FHIRString>?
	
	/// Acronym or short name
	public var alias: [FHIRPrimitive<FHIRString>]?
	
	/// Source of Contract
	public var author: Reference?
	
	/// Range of Legal Concerns
	public var scope: CodeableConcept?
	
	/// Focus of contract interest
	/// One of `topic[x]`
	public var topic: TopicX?
	
	/// Legal instrument category
	public var type: CodeableConcept?
	
	/// Subtype within the context of type
	public var subType: [CodeableConcept]?
	
	/// Contract precursor content
	public var contentDefinition: ContractContentDefinition?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Extra Information
	public var supportingInfo: [Reference]?
	
	/// Key event in Contract History
	public var relevantHistory: [Reference]?
	
	/// Contract Signatory
	public var signer: [ContractSigner]?
	
	/// Contract Friendly Language
	public var friendly: [ContractFriendly]?
	
	/// Contract Legal Language
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language
	public var rule: [ContractRule]?
	
	/// Binding Contract
	/// One of `legallyBinding[x]`
	public var legallyBinding: LegallyBindingX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							status: FHIRPrimitive<ContractResourceStatusCodes>? = nil,
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case alias; case _alias
		case applies
		case author
		case authority
		case contentDefinition
		case contentDerivative
		case domain
		case expirationType
		case friendly
		case identifier
		case instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case issued; case _issued
		case legal
		case legalState
		case legallyBindingAttachment
		case legallyBindingReference
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
		case title; case _title
		case topicCodeableConcept
		case topicReference
		case type
		case url; case _url
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.alias = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .alias, auxiliaryKey: ._alias)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.authority = try [Reference](from: _container, forKeyIfPresent: .authority)
		self.contentDefinition = try ContractContentDefinition(from: _container, forKeyIfPresent: .contentDefinition)
		self.contentDerivative = try CodeableConcept(from: _container, forKeyIfPresent: .contentDerivative)
		self.domain = try [Reference](from: _container, forKeyIfPresent: .domain)
		self.expirationType = try CodeableConcept(from: _container, forKeyIfPresent: .expirationType)
		self.friendly = try [ContractFriendly](from: _container, forKeyIfPresent: .friendly)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instantiatesCanonical = try Reference(from: _container, forKeyIfPresent: .instantiatesCanonical)
		self.instantiatesUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.legal = try [ContractLegal](from: _container, forKeyIfPresent: .legal)
		self.legalState = try CodeableConcept(from: _container, forKeyIfPresent: .legalState)
		var _t_legallyBinding: LegallyBindingX? = nil
		if let legallyBindingAttachment = try Attachment(from: _container, forKeyIfPresent: .legallyBindingAttachment) {
			if _t_legallyBinding != nil {
				throw DecodingError.dataCorruptedError(forKey: .legallyBindingAttachment, in: _container, debugDescription: "More than one value provided for \"legallyBinding\"")
			}
			_t_legallyBinding = .attachment(legallyBindingAttachment)
		}
		if let legallyBindingReference = try Reference(from: _container, forKeyIfPresent: .legallyBindingReference) {
			if _t_legallyBinding != nil {
				throw DecodingError.dataCorruptedError(forKey: .legallyBindingReference, in: _container, debugDescription: "More than one value provided for \"legallyBinding\"")
			}
			_t_legallyBinding = .reference(legallyBindingReference)
		}
		self.legallyBinding = _t_legallyBinding
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.relevantHistory = try [Reference](from: _container, forKeyIfPresent: .relevantHistory)
		self.rule = try [ContractRule](from: _container, forKeyIfPresent: .rule)
		self.scope = try CodeableConcept(from: _container, forKeyIfPresent: .scope)
		self.signer = try [ContractSigner](from: _container, forKeyIfPresent: .signer)
		self.site = try [Reference](from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<ContractResourceStatusCodes>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.subtitle = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .subtitle, auxiliaryKey: ._subtitle)
		self.supportingInfo = try [Reference](from: _container, forKeyIfPresent: .supportingInfo)
		self.term = try [ContractTerm](from: _container, forKeyIfPresent: .term)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		var _t_topic: TopicX? = nil
		if let topicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .topicCodeableConcept) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicCodeableConcept, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .codeableConcept(topicCodeableConcept)
		}
		if let topicReference = try Reference(from: _container, forKeyIfPresent: .topicReference) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicReference, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .reference(topicReference)
		}
		self.topic = _t_topic
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try alias?.encode(on: &_container, forKey: .alias, auxiliaryKey: ._alias)
		try applies?.encode(on: &_container, forKey: .applies)
		try author?.encode(on: &_container, forKey: .author)
		try authority?.encode(on: &_container, forKey: .authority)
		try contentDefinition?.encode(on: &_container, forKey: .contentDefinition)
		try contentDerivative?.encode(on: &_container, forKey: .contentDerivative)
		try domain?.encode(on: &_container, forKey: .domain)
		try expirationType?.encode(on: &_container, forKey: .expirationType)
		try friendly?.encode(on: &_container, forKey: .friendly)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Contract else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return alias == _other.alias
		    && applies == _other.applies
		    && author == _other.author
		    && authority == _other.authority
		    && contentDefinition == _other.contentDefinition
		    && contentDerivative == _other.contentDerivative
		    && domain == _other.domain
		    && expirationType == _other.expirationType
		    && friendly == _other.friendly
		    && identifier == _other.identifier
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && issued == _other.issued
		    && legal == _other.legal
		    && legalState == _other.legalState
		    && legallyBinding == _other.legallyBinding
		    && name == _other.name
		    && relevantHistory == _other.relevantHistory
		    && rule == _other.rule
		    && scope == _other.scope
		    && signer == _other.signer
		    && site == _other.site
		    && status == _other.status
		    && subType == _other.subType
		    && subject == _other.subject
		    && subtitle == _other.subtitle
		    && supportingInfo == _other.supportingInfo
		    && term == _other.term
		    && title == _other.title
		    && topic == _other.topic
		    && type == _other.type
		    && url == _other.url
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(alias)
		hasher.combine(applies)
		hasher.combine(author)
		hasher.combine(authority)
		hasher.combine(contentDefinition)
		hasher.combine(contentDerivative)
		hasher.combine(domain)
		hasher.combine(expirationType)
		hasher.combine(friendly)
		hasher.combine(identifier)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(issued)
		hasher.combine(legal)
		hasher.combine(legalState)
		hasher.combine(legallyBinding)
		hasher.combine(name)
		hasher.combine(relevantHistory)
		hasher.combine(rule)
		hasher.combine(scope)
		hasher.combine(signer)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(subject)
		hasher.combine(subtitle)
		hasher.combine(supportingInfo)
		hasher.combine(term)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(url)
		hasher.combine(version)
	}
}

/**
 Contract precursor content.
 
 Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be
 associated with and transformable into a Contract.
 */
open class ContractContentDefinition: BackboneElement {
	
	/// Content structure and use
	public var type: CodeableConcept
	
	/// Detailed Content Type Definition
	public var subType: CodeableConcept?
	
	/// Publisher Entity
	public var publisher: Reference?
	
	/// When published
	public var publicationDate: FHIRPrimitive<DateTime>?
	
	/// None
	public var publicationStatus: FHIRPrimitive<ContractResourcePublicationStatusCodes>
	
	/// Publication Ownership
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(publicationStatus: FHIRPrimitive<ContractResourcePublicationStatusCodes>, type: CodeableConcept) {
		self.publicationStatus = publicationStatus
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							copyright: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							publicationDate: FHIRPrimitive<DateTime>? = nil,
							publicationStatus: FHIRPrimitive<ContractResourcePublicationStatusCodes>,
							publisher: Reference? = nil,
							subType: CodeableConcept? = nil,
							type: CodeableConcept)
	{
		self.init(publicationStatus: publicationStatus, type: type)
		self.copyright = copyright
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.publicationDate = publicationDate
		self.publisher = publisher
		self.subType = subType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case copyright; case _copyright
		case publicationDate; case _publicationDate
		case publicationStatus; case _publicationStatus
		case publisher
		case subType
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.publicationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.publicationStatus = try FHIRPrimitive<ContractResourcePublicationStatusCodes>(from: _container, forKey: .publicationStatus, auxiliaryKey: ._publicationStatus)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try publicationStatus.encode(on: &_container, forKey: .publicationStatus, auxiliaryKey: ._publicationStatus)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try subType?.encode(on: &_container, forKey: .subType)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractContentDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return copyright == _other.copyright
		    && publicationDate == _other.publicationDate
		    && publicationStatus == _other.publicationStatus
		    && publisher == _other.publisher
		    && subType == _other.subType
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(copyright)
		hasher.combine(publicationDate)
		hasher.combine(publicationStatus)
		hasher.combine(publisher)
		hasher.combine(subType)
		hasher.combine(type)
	}
}

/**
 Contract Friendly Language.
 
 The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the
 representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a
 layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the
 Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
 */
open class ContractFriendly: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// Easily comprehended representation of this Contract
	/// One of `content[x]`
	public var content: ContentX
	
	/// Designated initializer taking all required properties
	public init(content: ContentX) {
		self.content = content
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							content: ContentX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(content: content)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.contentAttachment) || _container.contains(CodingKeys.contentReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.contentAttachment, CodingKeys.contentReference], debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		
		// Decode all our properties
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentAttachment, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		self.content = _t_content!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch content {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .contentAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .contentReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractFriendly else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
	}
}

/**
 Contract Legal Language.
 
 List of Legal expressions or representations of this Contract.
 */
open class ContractLegal: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// Contract Legal Text
	/// One of `content[x]`
	public var content: ContentX
	
	/// Designated initializer taking all required properties
	public init(content: ContentX) {
		self.content = content
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							content: ContentX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(content: content)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.contentAttachment) || _container.contains(CodingKeys.contentReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.contentAttachment, CodingKeys.contentReference], debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		
		// Decode all our properties
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentAttachment, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		self.content = _t_content!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch content {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .contentAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .contentReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractLegal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
	}
}

/**
 Computable Contract Language.
 
 List of Computable Policy Rule Language Representations of this Contract.
 */
open class ContractRule: BackboneElement {
	
	/// All possible types for "content[x]"
	public enum ContentX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// Computable Contract Rules
	/// One of `content[x]`
	public var content: ContentX
	
	/// Designated initializer taking all required properties
	public init(content: ContentX) {
		self.content = content
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							content: ContentX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(content: content)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case contentAttachment
		case contentReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.contentAttachment) || _container.contains(CodingKeys.contentReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.contentAttachment, CodingKeys.contentReference], debugDescription: "Must have at least one value for \"content\" but have none"))
		}
		
		// Decode all our properties
		var _t_content: ContentX? = nil
		if let contentAttachment = try Attachment(from: _container, forKeyIfPresent: .contentAttachment) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentAttachment, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .attachment(contentAttachment)
		}
		if let contentReference = try Reference(from: _container, forKeyIfPresent: .contentReference) {
			if _t_content != nil {
				throw DecodingError.dataCorruptedError(forKey: .contentReference, in: _container, debugDescription: "More than one value provided for \"content\"")
			}
			_t_content = .reference(contentReference)
		}
		self.content = _t_content!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch content {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .contentAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .contentReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractRule else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return content == _other.content
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(content)
	}
}

/**
 Contract Signatory.
 
 Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are
 any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the
 contract such as a notary or witness.
 */
open class ContractSigner: BackboneElement {
	
	/// Contract Signatory Role
	public var type: Coding
	
	/// Contract Signatory Party
	public var party: Reference
	
	/// Contract Documentation Signature
	public var signature: [Signature]
	
	/// Designated initializer taking all required properties
	public init(party: Reference, signature: [Signature], type: Coding) {
		self.party = party
		self.signature = signature
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							party: Reference,
							signature: [Signature],
							type: Coding)
	{
		self.init(party: party, signature: signature, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case party
		case signature
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.party = try Reference(from: _container, forKey: .party)
		self.signature = try [Signature](from: _container, forKey: .signature)
		self.type = try Coding(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try party.encode(on: &_container, forKey: .party)
		try signature.encode(on: &_container, forKey: .signature)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractSigner else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return party == _other.party
		    && signature == _other.signature
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(party)
		hasher.combine(signature)
		hasher.combine(type)
	}
}

/**
 Contract Term List.
 
 One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
 */
open class ContractTerm: BackboneElement {
	
	/// All possible types for "topic[x]"
	public enum TopicX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Contract Term Number
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Contract Term Effective Time
	public var applies: Period?
	
	/// Term Concern
	/// One of `topic[x]`
	public var topic: TopicX?
	
	/// Contract Term Type or Form
	public var type: CodeableConcept?
	
	/// Contract Term Type specific classification
	public var subType: CodeableConcept?
	
	/// Term Statement
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Protection for the Term
	public var securityLabel: [ContractTermSecurityLabel]?
	
	/// Context of the Contract term
	public var offer: ContractTermOffer
	
	/// Contract Term Asset List
	public var asset: [ContractTermAsset]?
	
	/// Entity being ascribed responsibility
	public var action: [ContractTermAction]?
	
	/// Nested Contract Term Group
	public var group: [ContractTerm]?
	
	/// Designated initializer taking all required properties
	public init(offer: ContractTermOffer) {
		self.offer = offer
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(offer: offer)
		self.action = action
		self.applies = applies
		self.asset = asset
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.issued = issued
		self.modifierExtension = modifierExtension
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
		case group
		case identifier
		case issued; case _issued
		case offer
		case securityLabel
		case subType
		case text; case _text
		case topicCodeableConcept
		case topicReference
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [ContractTermAction](from: _container, forKeyIfPresent: .action)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.asset = try [ContractTermAsset](from: _container, forKeyIfPresent: .asset)
		self.group = try [ContractTerm](from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.offer = try ContractTermOffer(from: _container, forKey: .offer)
		self.securityLabel = try [ContractTermSecurityLabel](from: _container, forKeyIfPresent: .securityLabel)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		var _t_topic: TopicX? = nil
		if let topicCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .topicCodeableConcept) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicCodeableConcept, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .codeableConcept(topicCodeableConcept)
		}
		if let topicReference = try Reference(from: _container, forKeyIfPresent: .topicReference) {
			if _t_topic != nil {
				throw DecodingError.dataCorruptedError(forKey: .topicReference, in: _container, debugDescription: "More than one value provided for \"topic\"")
			}
			_t_topic = .reference(topicReference)
		}
		self.topic = _t_topic
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try applies?.encode(on: &_container, forKey: .applies)
		try asset?.encode(on: &_container, forKey: .asset)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTerm else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && applies == _other.applies
		    && asset == _other.asset
		    && group == _other.group
		    && identifier == _other.identifier
		    && issued == _other.issued
		    && offer == _other.offer
		    && securityLabel == _other.securityLabel
		    && subType == _other.subType
		    && text == _other.text
		    && topic == _other.topic
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(applies)
		hasher.combine(asset)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(issued)
		hasher.combine(offer)
		hasher.combine(securityLabel)
		hasher.combine(subType)
		hasher.combine(text)
		hasher.combine(topic)
		hasher.combine(type)
	}
}

/**
 Entity being ascribed responsibility.
 
 An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
open class ContractTermAction: BackboneElement {
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case timing(Timing)
	}
	
	/// True if the term prohibits the  action
	public var doNotPerform: FHIRPrimitive<FHIRBool>?
	
	/// Type or form of the action
	public var type: CodeableConcept
	
	/// Entity of the action
	public var subject: [ContractTermActionSubject]?
	
	/// Purpose for the Contract Term Action
	public var intent: CodeableConcept
	
	/// Pointer to specific item
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// State of the action
	public var status: CodeableConcept
	
	/// Episode associated with action
	public var context: Reference?
	
	/// Pointer to specific item
	public var contextLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// When action happens
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX?
	
	/// Who asked for action
	public var requester: [Reference]?
	
	/// Pointer to specific item
	public var requesterLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Kind of service performer
	public var performerType: [CodeableConcept]?
	
	/// Competency of the performer
	public var performerRole: CodeableConcept?
	
	/// Actor that wil execute (or not) the action
	public var performer: Reference?
	
	/// Pointer to specific item
	public var performerLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Why is action (not) needed?
	public var reasonCode: [CodeableConcept]?
	
	/// Why is action (not) needed?
	public var reasonReference: [Reference]?
	
	/// Why action is to be performed
	public var reason: [FHIRPrimitive<FHIRString>]?
	
	/// Pointer to specific item
	public var reasonLinkId: [FHIRPrimitive<FHIRString>]?
	
	/// Comments about the action
	public var note: [Annotation]?
	
	/// Action restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Designated initializer taking all required properties
	public init(intent: CodeableConcept, status: CodeableConcept, type: CodeableConcept) {
		self.intent = intent
		self.status = status
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							reason: [FHIRPrimitive<FHIRString>]? = nil,
							reasonCode: [CodeableConcept]? = nil,
							reasonLinkId: [FHIRPrimitive<FHIRString>]? = nil,
							reasonReference: [Reference]? = nil,
							requester: [Reference]? = nil,
							requesterLinkId: [FHIRPrimitive<FHIRString>]? = nil,
							securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil,
							status: CodeableConcept,
							subject: [ContractTermActionSubject]? = nil,
							type: CodeableConcept)
	{
		self.init(intent: intent, status: status, type: type)
		self.context = context
		self.contextLinkId = contextLinkId
		self.doNotPerform = doNotPerform
		self.`extension` = `extension`
		self.id = id
		self.linkId = linkId
		self.modifierExtension = modifierExtension
		self.note = note
		self.occurrence = occurrence
		self.performer = performer
		self.performerLinkId = performerLinkId
		self.performerRole = performerRole
		self.performerType = performerType
		self.reason = reason
		self.reasonCode = reasonCode
		self.reasonLinkId = reasonLinkId
		self.reasonReference = reasonReference
		self.requester = requester
		self.requesterLinkId = requesterLinkId
		self.securityLabelNumber = securityLabelNumber
		self.subject = subject
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case context
		case contextLinkId; case _contextLinkId
		case doNotPerform; case _doNotPerform
		case intent
		case linkId; case _linkId
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrencePeriod
		case occurrenceTiming
		case performer
		case performerLinkId; case _performerLinkId
		case performerRole
		case performerType
		case reason; case _reason
		case reasonCode
		case reasonLinkId; case _reasonLinkId
		case reasonReference
		case requester
		case requesterLinkId; case _requesterLinkId
		case securityLabelNumber; case _securityLabelNumber
		case status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.contextLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .contextLinkId, auxiliaryKey: ._contextLinkId)
		self.doNotPerform = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .doNotPerform, auxiliaryKey: ._doNotPerform)
		self.intent = try CodeableConcept(from: _container, forKey: .intent)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
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
		self.occurrence = _t_occurrence
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.performerLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .performerLinkId, auxiliaryKey: ._performerLinkId)
		self.performerRole = try CodeableConcept(from: _container, forKeyIfPresent: .performerRole)
		self.performerType = try [CodeableConcept](from: _container, forKeyIfPresent: .performerType)
		self.reason = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .reason, auxiliaryKey: ._reason)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .reasonLinkId, auxiliaryKey: ._reasonLinkId)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.requester = try [Reference](from: _container, forKeyIfPresent: .requester)
		self.requesterLinkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .requesterLinkId, auxiliaryKey: ._requesterLinkId)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		self.subject = try [ContractTermActionSubject](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try context?.encode(on: &_container, forKey: .context)
		try contextLinkId?.encode(on: &_container, forKey: .contextLinkId, auxiliaryKey: ._contextLinkId)
		try doNotPerform?.encode(on: &_container, forKey: .doNotPerform, auxiliaryKey: ._doNotPerform)
		try intent.encode(on: &_container, forKey: .intent)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
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
		try reason?.encode(on: &_container, forKey: .reason, auxiliaryKey: ._reason)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonLinkId?.encode(on: &_container, forKey: .reasonLinkId, auxiliaryKey: ._reasonLinkId)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try requester?.encode(on: &_container, forKey: .requester)
		try requesterLinkId?.encode(on: &_container, forKey: .requesterLinkId, auxiliaryKey: ._requesterLinkId)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try status.encode(on: &_container, forKey: .status)
		try subject?.encode(on: &_container, forKey: .subject)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return context == _other.context
		    && contextLinkId == _other.contextLinkId
		    && doNotPerform == _other.doNotPerform
		    && intent == _other.intent
		    && linkId == _other.linkId
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && performer == _other.performer
		    && performerLinkId == _other.performerLinkId
		    && performerRole == _other.performerRole
		    && performerType == _other.performerType
		    && reason == _other.reason
		    && reasonCode == _other.reasonCode
		    && reasonLinkId == _other.reasonLinkId
		    && reasonReference == _other.reasonReference
		    && requester == _other.requester
		    && requesterLinkId == _other.requesterLinkId
		    && securityLabelNumber == _other.securityLabelNumber
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(context)
		hasher.combine(contextLinkId)
		hasher.combine(doNotPerform)
		hasher.combine(intent)
		hasher.combine(linkId)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(performer)
		hasher.combine(performerLinkId)
		hasher.combine(performerRole)
		hasher.combine(performerType)
		hasher.combine(reason)
		hasher.combine(reasonCode)
		hasher.combine(reasonLinkId)
		hasher.combine(reasonReference)
		hasher.combine(requester)
		hasher.combine(requesterLinkId)
		hasher.combine(securityLabelNumber)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Entity of the action.
 */
open class ContractTermActionSubject: BackboneElement {
	
	/// Entity of the action
	public var reference: [Reference]
	
	/// Role type of the agent
	public var role: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(reference: [Reference]) {
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: [Reference],
							role: CodeableConcept? = nil)
	{
		self.init(reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
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
		self.reference = try [Reference](from: _container, forKey: .reference)
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try reference.encode(on: &_container, forKey: .reference)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermActionSubject else {
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
 Contract Term Asset List.
 */
open class ContractTermAsset: BackboneElement {
	
	/// Range of asset
	public var scope: CodeableConcept?
	
	/// Asset category
	public var type: [CodeableConcept]?
	
	/// Associated entities
	public var typeReference: [Reference]?
	
	/// Asset sub-category
	public var subtype: [CodeableConcept]?
	
	/// Kinship of the asset
	public var relationship: Coding?
	
	/// Circumstance of the asset
	public var context: [ContractTermAssetContext]?
	
	/// Quality desctiption of asset
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Asset availability types
	public var periodType: [CodeableConcept]?
	
	/// Time period of the asset
	public var period: [Period]?
	
	/// Time period
	public var usePeriod: [Period]?
	
	/// Asset clause or question text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Pointer to asset text
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Response to assets
	public var answer: [ContractTermOfferAnswer]?
	
	/// Asset restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Contract Valued Item List
	public var valuedItem: [ContractTermAssetValuedItem]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							valuedItem: [ContractTermAssetValuedItem]? = nil)
	{
		self.init()
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
		case linkId; case _linkId
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.answer = try [ContractTermOfferAnswer](from: _container, forKeyIfPresent: .answer)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try [ContractTermAssetContext](from: _container, forKeyIfPresent: .context)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try answer?.encode(on: &_container, forKey: .answer)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermAsset else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return answer == _other.answer
		    && condition == _other.condition
		    && context == _other.context
		    && linkId == _other.linkId
		    && period == _other.period
		    && periodType == _other.periodType
		    && relationship == _other.relationship
		    && scope == _other.scope
		    && securityLabelNumber == _other.securityLabelNumber
		    && subtype == _other.subtype
		    && text == _other.text
		    && type == _other.type
		    && typeReference == _other.typeReference
		    && usePeriod == _other.usePeriod
		    && valuedItem == _other.valuedItem
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(answer)
		hasher.combine(condition)
		hasher.combine(context)
		hasher.combine(linkId)
		hasher.combine(period)
		hasher.combine(periodType)
		hasher.combine(relationship)
		hasher.combine(scope)
		hasher.combine(securityLabelNumber)
		hasher.combine(subtype)
		hasher.combine(text)
		hasher.combine(type)
		hasher.combine(typeReference)
		hasher.combine(usePeriod)
		hasher.combine(valuedItem)
	}
}

/**
 Circumstance of the asset.
 */
open class ContractTermAssetContext: BackboneElement {
	
	/// Creator,custodian or owner
	public var reference: Reference?
	
	/// Codeable asset context
	public var code: [CodeableConcept]?
	
	/// Context description
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							code: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: Reference? = nil,
							text: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
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
		case reference
		case text; case _text
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try [CodeableConcept](from: _container, forKeyIfPresent: .code)
		self.reference = try Reference(from: _container, forKeyIfPresent: .reference)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code?.encode(on: &_container, forKey: .code)
		try reference?.encode(on: &_container, forKey: .reference)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermAssetContext else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && reference == _other.reference
		    && text == _other.text
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(reference)
		hasher.combine(text)
	}
}

/**
 Contract Valued Item List.
 */
open class ContractTermAssetValuedItem: BackboneElement {
	
	/// All possible types for "entity[x]"
	public enum EntityX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Contract Valued Item Type
	/// One of `entity[x]`
	public var entity: EntityX?
	
	/// Contract Valued Item Number
	public var identifier: Identifier?
	
	/// Contract Valued Item Effective Tiem
	public var effectiveTime: FHIRPrimitive<DateTime>?
	
	/// Count of Contract Valued Items
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost
	public var unitPrice: Money?
	
	/// Contract Valued Item Price Scaling Factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Contract Valued Item Difficulty Scaling Factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Total Contract Valued Item Value
	public var net: Money?
	
	/// Terms of valuation
	public var payment: FHIRPrimitive<FHIRString>?
	
	/// When payment is due
	public var paymentDate: FHIRPrimitive<DateTime>?
	
	/// Who will make payment
	public var responsible: Reference?
	
	/// Who will receive payment
	public var recipient: Reference?
	
	/// Pointer to specific item
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Security Labels that define affected terms
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							unitPrice: Money? = nil)
	{
		self.init()
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
		case factor; case _factor
		case identifier
		case linkId; case _linkId
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.effectiveTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectiveTime, auxiliaryKey: ._effectiveTime)
		var _t_entity: EntityX? = nil
		if let entityCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .entityCodeableConcept) {
			if _t_entity != nil {
				throw DecodingError.dataCorruptedError(forKey: .entityCodeableConcept, in: _container, debugDescription: "More than one value provided for \"entity\"")
			}
			_t_entity = .codeableConcept(entityCodeableConcept)
		}
		if let entityReference = try Reference(from: _container, forKeyIfPresent: .entityReference) {
			if _t_entity != nil {
				throw DecodingError.dataCorruptedError(forKey: .entityReference, in: _container, debugDescription: "More than one value provided for \"entity\"")
			}
			_t_entity = .reference(entityReference)
		}
		self.entity = _t_entity
		self.factor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .factor, auxiliaryKey: ._factor)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.payment = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .payment, auxiliaryKey: ._payment)
		self.paymentDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .paymentDate, auxiliaryKey: ._paymentDate)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.recipient = try Reference(from: _container, forKeyIfPresent: .recipient)
		self.responsible = try Reference(from: _container, forKeyIfPresent: .responsible)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.unitPrice = try Money(from: _container, forKeyIfPresent: .unitPrice)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try effectiveTime?.encode(on: &_container, forKey: .effectiveTime, auxiliaryKey: ._effectiveTime)
		if let _enum = entity {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .entityCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .entityReference)
			}
		}
		try factor?.encode(on: &_container, forKey: .factor, auxiliaryKey: ._factor)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try net?.encode(on: &_container, forKey: .net)
		try payment?.encode(on: &_container, forKey: .payment, auxiliaryKey: ._payment)
		try paymentDate?.encode(on: &_container, forKey: .paymentDate, auxiliaryKey: ._paymentDate)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try recipient?.encode(on: &_container, forKey: .recipient)
		try responsible?.encode(on: &_container, forKey: .responsible)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermAssetValuedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return effectiveTime == _other.effectiveTime
		    && entity == _other.entity
		    && factor == _other.factor
		    && identifier == _other.identifier
		    && linkId == _other.linkId
		    && net == _other.net
		    && payment == _other.payment
		    && paymentDate == _other.paymentDate
		    && points == _other.points
		    && quantity == _other.quantity
		    && recipient == _other.recipient
		    && responsible == _other.responsible
		    && securityLabelNumber == _other.securityLabelNumber
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(effectiveTime)
		hasher.combine(entity)
		hasher.combine(factor)
		hasher.combine(identifier)
		hasher.combine(linkId)
		hasher.combine(net)
		hasher.combine(payment)
		hasher.combine(paymentDate)
		hasher.combine(points)
		hasher.combine(quantity)
		hasher.combine(recipient)
		hasher.combine(responsible)
		hasher.combine(securityLabelNumber)
		hasher.combine(unitPrice)
	}
}

/**
 Context of the Contract term.
 
 The matter of concern in the context of this provision of the agrement.
 */
open class ContractTermOffer: BackboneElement {
	
	/// Offer business ID
	public var identifier: [Identifier]?
	
	/// Offer Recipient
	public var party: [ContractTermOfferParty]?
	
	/// Negotiable offer asset
	public var topic: Reference?
	
	/// Contract Offer Type or Form
	public var type: CodeableConcept?
	
	/// Accepting party choice
	public var decision: CodeableConcept?
	
	/// How decision is conveyed
	public var decisionMode: [CodeableConcept]?
	
	/// Response to offer text
	public var answer: [ContractTermOfferAnswer]?
	
	/// Human readable offer text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Pointer to text
	public var linkId: [FHIRPrimitive<FHIRString>]?
	
	/// Offer restriction numbers
	public var securityLabelNumber: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case identifier
		case linkId; case _linkId
		case party
		case securityLabelNumber; case _securityLabelNumber
		case text; case _text
		case topic
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.answer = try [ContractTermOfferAnswer](from: _container, forKeyIfPresent: .answer)
		self.decision = try CodeableConcept(from: _container, forKeyIfPresent: .decision)
		self.decisionMode = try [CodeableConcept](from: _container, forKeyIfPresent: .decisionMode)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.linkId = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .linkId, auxiliaryKey: ._linkId)
		self.party = try [ContractTermOfferParty](from: _container, forKeyIfPresent: .party)
		self.securityLabelNumber = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.topic = try Reference(from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try answer?.encode(on: &_container, forKey: .answer)
		try decision?.encode(on: &_container, forKey: .decision)
		try decisionMode?.encode(on: &_container, forKey: .decisionMode)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try linkId?.encode(on: &_container, forKey: .linkId, auxiliaryKey: ._linkId)
		try party?.encode(on: &_container, forKey: .party)
		try securityLabelNumber?.encode(on: &_container, forKey: .securityLabelNumber, auxiliaryKey: ._securityLabelNumber)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermOffer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return answer == _other.answer
		    && decision == _other.decision
		    && decisionMode == _other.decisionMode
		    && identifier == _other.identifier
		    && linkId == _other.linkId
		    && party == _other.party
		    && securityLabelNumber == _other.securityLabelNumber
		    && text == _other.text
		    && topic == _other.topic
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(answer)
		hasher.combine(decision)
		hasher.combine(decisionMode)
		hasher.combine(identifier)
		hasher.combine(linkId)
		hasher.combine(party)
		hasher.combine(securityLabelNumber)
		hasher.combine(text)
		hasher.combine(topic)
		hasher.combine(type)
	}
}

/**
 Response to offer text.
 */
open class ContractTermOfferAnswer: BackboneElement {
	
	/// All possible types for "value[x]"
	public enum ValueX: Hashable {
		case attachment(Attachment)
		case boolean(FHIRPrimitive<FHIRBool>)
		case coding(Coding)
		case date(FHIRPrimitive<FHIRDate>)
		case dateTime(FHIRPrimitive<DateTime>)
		case decimal(FHIRPrimitive<FHIRDecimal>)
		case integer(FHIRPrimitive<FHIRInteger>)
		case quantity(Quantity)
		case reference(Reference)
		case string(FHIRPrimitive<FHIRString>)
		case time(FHIRPrimitive<FHIRTime>)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// The actual answer response
	/// One of `value[x]`
	public var value: ValueX
	
	/// Designated initializer taking all required properties
	public init(value: ValueX) {
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							value: ValueX)
	{
		self.init(value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
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
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.valueAttachment) || _container.contains(CodingKeys.valueBoolean) || _container.contains(CodingKeys.valueCoding) || _container.contains(CodingKeys.valueDate) || _container.contains(CodingKeys.valueDateTime) || _container.contains(CodingKeys.valueDecimal) || _container.contains(CodingKeys.valueInteger) || _container.contains(CodingKeys.valueQuantity) || _container.contains(CodingKeys.valueReference) || _container.contains(CodingKeys.valueString) || _container.contains(CodingKeys.valueTime) || _container.contains(CodingKeys.valueUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.valueAttachment, CodingKeys.valueBoolean, CodingKeys.valueCoding, CodingKeys.valueDate, CodingKeys.valueDateTime, CodingKeys.valueDecimal, CodingKeys.valueInteger, CodingKeys.valueQuantity, CodingKeys.valueReference, CodingKeys.valueString, CodingKeys.valueTime, CodingKeys.valueUri], debugDescription: "Must have at least one value for \"value\" but have none"))
		}
		
		// Decode all our properties
		var _t_value: ValueX? = nil
		if let valueBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .valueBoolean, auxiliaryKey: ._valueBoolean) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueBoolean, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .boolean(valueBoolean)
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
		if let valueTime = try FHIRPrimitive<FHIRTime>(from: _container, forKeyIfPresent: .valueTime, auxiliaryKey: ._valueTime) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueTime, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .time(valueTime)
		}
		if let valueString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .valueString, auxiliaryKey: ._valueString) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueString, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .string(valueString)
		}
		if let valueUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .valueUri, auxiliaryKey: ._valueUri) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueUri, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .uri(valueUri)
		}
		if let valueAttachment = try Attachment(from: _container, forKeyIfPresent: .valueAttachment) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueAttachment, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .attachment(valueAttachment)
		}
		if let valueCoding = try Coding(from: _container, forKeyIfPresent: .valueCoding) {
			if _t_value != nil {
				throw DecodingError.dataCorruptedError(forKey: .valueCoding, in: _container, debugDescription: "More than one value provided for \"value\"")
			}
			_t_value = .coding(valueCoding)
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
		self.value = _t_value!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch value {
			case .boolean(let _value):
				try _value.encode(on: &_container, forKey: .valueBoolean, auxiliaryKey: ._valueBoolean)
			case .decimal(let _value):
				try _value.encode(on: &_container, forKey: .valueDecimal, auxiliaryKey: ._valueDecimal)
			case .integer(let _value):
				try _value.encode(on: &_container, forKey: .valueInteger, auxiliaryKey: ._valueInteger)
			case .date(let _value):
				try _value.encode(on: &_container, forKey: .valueDate, auxiliaryKey: ._valueDate)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .valueDateTime, auxiliaryKey: ._valueDateTime)
			case .time(let _value):
				try _value.encode(on: &_container, forKey: .valueTime, auxiliaryKey: ._valueTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .valueString, auxiliaryKey: ._valueString)
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .valueUri, auxiliaryKey: ._valueUri)
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .valueAttachment)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .valueCoding)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .valueQuantity)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .valueReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermOfferAnswer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(value)
	}
}

/**
 Offer Recipient.
 */
open class ContractTermOfferParty: BackboneElement {
	
	/// Referenced entity
	public var reference: [Reference]
	
	/// Participant engagement type
	public var role: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(reference: [Reference], role: CodeableConcept) {
		self.reference = reference
		self.role = role
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reference: [Reference],
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
		self.reference = try [Reference](from: _container, forKey: .reference)
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
		guard let _other = _other as? ContractTermOfferParty else {
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
 Protection for the Term.
 
 Security labels that protect the handling of information about the term and its elements, which may be specifically
 identified..
 */
open class ContractTermSecurityLabel: BackboneElement {
	
	/// Link to Security Labels
	public var number: [FHIRPrimitive<FHIRUnsignedInteger>]?
	
	/// Confidentiality Protection
	public var classification: Coding
	
	/// Applicable Policy
	public var category: [Coding]?
	
	/// Handling Instructions
	public var control: [Coding]?
	
	/// Designated initializer taking all required properties
	public init(classification: Coding) {
		self.classification = classification
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							category: [Coding]? = nil,
							classification: Coding,
							control: [Coding]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							number: [FHIRPrimitive<FHIRUnsignedInteger>]? = nil)
	{
		self.init(classification: classification)
		self.category = category
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
		case number; case _number
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try [Coding](from: _container, forKeyIfPresent: .category)
		self.classification = try Coding(from: _container, forKey: .classification)
		self.control = try [Coding](from: _container, forKeyIfPresent: .control)
		self.number = try [FHIRPrimitive<FHIRUnsignedInteger>](from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try classification.encode(on: &_container, forKey: .classification)
		try control?.encode(on: &_container, forKey: .control)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermSecurityLabel else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && classification == _other.classification
		    && control == _other.control
		    && number == _other.number
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(classification)
		hasher.combine(control)
		hasher.combine(number)
	}
}
