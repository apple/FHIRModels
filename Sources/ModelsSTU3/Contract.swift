//
//  Contract.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Contract)
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
 
 A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
 */
open class Contract: DomainResource {
	
	override open class var resourceType: ResourceType { return .contract }
	
	/// All possible types for "binding[x]"
	public enum BindingX: Hashable {
		case attachment(Attachment)
		case reference(Reference)
	}
	
	/// Contract number
	public var identifier: Identifier?
	
	/// amended | appended | cancelled | disputed | entered-in-error | executable | executed | negotiable | offered |
	/// policy | rejected | renewed | revoked | resolved | terminated
	public var status: FHIRPrimitive<FHIRString>?
	
	/// When this Contract was issued
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Effective time
	public var applies: Period?
	
	/// Contract Target Entity
	public var subject: [Reference]?
	
	/// Context of the Contract
	public var topic: [Reference]?
	
	/// Authority under which this Contract has standing
	public var authority: [Reference]?
	
	/// Domain in which this Contract applies
	public var domain: [Reference]?
	
	/// Type or form
	public var type: CodeableConcept?
	
	/// Subtype within the context of type
	public var subType: [CodeableConcept]?
	
	/// Action stipulated by this Contract
	public var action: [CodeableConcept]?
	
	/// Rationale for the stiplulated action
	public var actionReason: [CodeableConcept]?
	
	/// Decision by Grantor
	public var decisionType: CodeableConcept?
	
	/// Content derived from the basal information
	public var contentDerivative: CodeableConcept?
	
	/// Security Labels that define affected resources
	public var securityLabel: [Coding]?
	
	/// Entity being ascribed responsibility
	public var agent: [ContractAgent]?
	
	/// Contract Signatory
	public var signer: [ContractSigner]?
	
	/// Contract Valued Item List
	public var valuedItem: [ContractValuedItem]?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Binding Contract
	/// One of `binding[x]`
	public var binding: BindingX?
	
	/// Contract Friendly Language
	public var friendly: [ContractFriendly]?
	
	/// Contract Legal Language
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language
	public var rule: [ContractRule]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [CodeableConcept]? = nil,
							actionReason: [CodeableConcept]? = nil,
							agent: [ContractAgent]? = nil,
							applies: Period? = nil,
							authority: [Reference]? = nil,
							binding: BindingX? = nil,
							contained: [ResourceProxy]? = nil,
							contentDerivative: CodeableConcept? = nil,
							decisionType: CodeableConcept? = nil,
							domain: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							friendly: [ContractFriendly]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							issued: FHIRPrimitive<DateTime>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							legal: [ContractLegal]? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							rule: [ContractRule]? = nil,
							securityLabel: [Coding]? = nil,
							signer: [ContractSigner]? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							subType: [CodeableConcept]? = nil,
							subject: [Reference]? = nil,
							term: [ContractTerm]? = nil,
							text: Narrative? = nil,
							topic: [Reference]? = nil,
							type: CodeableConcept? = nil,
							valuedItem: [ContractValuedItem]? = nil)
	{
		self.init()
		self.action = action
		self.actionReason = actionReason
		self.agent = agent
		self.applies = applies
		self.authority = authority
		self.binding = binding
		self.contained = contained
		self.contentDerivative = contentDerivative
		self.decisionType = decisionType
		self.domain = domain
		self.`extension` = `extension`
		self.friendly = friendly
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.issued = issued
		self.language = language
		self.legal = legal
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.rule = rule
		self.securityLabel = securityLabel
		self.signer = signer
		self.status = status
		self.subType = subType
		self.subject = subject
		self.term = term
		self.text = text
		self.topic = topic
		self.type = type
		self.valuedItem = valuedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actionReason
		case agent
		case applies
		case authority
		case bindingAttachment
		case bindingReference
		case contentDerivative
		case decisionType
		case domain
		case friendly
		case identifier
		case issued; case _issued
		case legal
		case rule
		case securityLabel
		case signer
		case status; case _status
		case subType
		case subject
		case term
		case topic
		case type
		case valuedItem
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actionReason = try [CodeableConcept](from: _container, forKeyIfPresent: .actionReason)
		self.agent = try [ContractAgent](from: _container, forKeyIfPresent: .agent)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.authority = try [Reference](from: _container, forKeyIfPresent: .authority)
		var _t_binding: BindingX? = nil
		if let bindingAttachment = try Attachment(from: _container, forKeyIfPresent: .bindingAttachment) {
			if _t_binding != nil {
				throw DecodingError.dataCorruptedError(forKey: .bindingAttachment, in: _container, debugDescription: "More than one value provided for \"binding\"")
			}
			_t_binding = .attachment(bindingAttachment)
		}
		if let bindingReference = try Reference(from: _container, forKeyIfPresent: .bindingReference) {
			if _t_binding != nil {
				throw DecodingError.dataCorruptedError(forKey: .bindingReference, in: _container, debugDescription: "More than one value provided for \"binding\"")
			}
			_t_binding = .reference(bindingReference)
		}
		self.binding = _t_binding
		self.contentDerivative = try CodeableConcept(from: _container, forKeyIfPresent: .contentDerivative)
		self.decisionType = try CodeableConcept(from: _container, forKeyIfPresent: .decisionType)
		self.domain = try [Reference](from: _container, forKeyIfPresent: .domain)
		self.friendly = try [ContractFriendly](from: _container, forKeyIfPresent: .friendly)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.legal = try [ContractLegal](from: _container, forKeyIfPresent: .legal)
		self.rule = try [ContractRule](from: _container, forKeyIfPresent: .rule)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.signer = try [ContractSigner](from: _container, forKeyIfPresent: .signer)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.term = try [ContractTerm](from: _container, forKeyIfPresent: .term)
		self.topic = try [Reference](from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.valuedItem = try [ContractValuedItem](from: _container, forKeyIfPresent: .valuedItem)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try actionReason?.encode(on: &_container, forKey: .actionReason)
		try agent?.encode(on: &_container, forKey: .agent)
		try applies?.encode(on: &_container, forKey: .applies)
		try authority?.encode(on: &_container, forKey: .authority)
		if let _enum = binding {
			switch _enum {
			case .attachment(let _value):
				try _value.encode(on: &_container, forKey: .bindingAttachment)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .bindingReference)
			}
		}
		try contentDerivative?.encode(on: &_container, forKey: .contentDerivative)
		try decisionType?.encode(on: &_container, forKey: .decisionType)
		try domain?.encode(on: &_container, forKey: .domain)
		try friendly?.encode(on: &_container, forKey: .friendly)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try legal?.encode(on: &_container, forKey: .legal)
		try rule?.encode(on: &_container, forKey: .rule)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try signer?.encode(on: &_container, forKey: .signer)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject?.encode(on: &_container, forKey: .subject)
		try term?.encode(on: &_container, forKey: .term)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try valuedItem?.encode(on: &_container, forKey: .valuedItem)
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
		return action == _other.action
		    && actionReason == _other.actionReason
		    && agent == _other.agent
		    && applies == _other.applies
		    && authority == _other.authority
		    && binding == _other.binding
		    && contentDerivative == _other.contentDerivative
		    && decisionType == _other.decisionType
		    && domain == _other.domain
		    && friendly == _other.friendly
		    && identifier == _other.identifier
		    && issued == _other.issued
		    && legal == _other.legal
		    && rule == _other.rule
		    && securityLabel == _other.securityLabel
		    && signer == _other.signer
		    && status == _other.status
		    && subType == _other.subType
		    && subject == _other.subject
		    && term == _other.term
		    && topic == _other.topic
		    && type == _other.type
		    && valuedItem == _other.valuedItem
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(actionReason)
		hasher.combine(agent)
		hasher.combine(applies)
		hasher.combine(authority)
		hasher.combine(binding)
		hasher.combine(contentDerivative)
		hasher.combine(decisionType)
		hasher.combine(domain)
		hasher.combine(friendly)
		hasher.combine(identifier)
		hasher.combine(issued)
		hasher.combine(legal)
		hasher.combine(rule)
		hasher.combine(securityLabel)
		hasher.combine(signer)
		hasher.combine(status)
		hasher.combine(subType)
		hasher.combine(subject)
		hasher.combine(term)
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(valuedItem)
	}
}

/**
 Entity being ascribed responsibility.
 
 An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
open class ContractAgent: BackboneElement {
	
	/// Contract Agent Type
	public var actor: Reference
	
	/// Role type of the agent
	public var role: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: [CodeableConcept]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractAgent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
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
	
	/// Contract Term Number
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Contract Term Effective Time
	public var applies: Period?
	
	/// Contract Term Type or Form
	public var type: CodeableConcept?
	
	/// Contract Term Type specific classification
	public var subType: CodeableConcept?
	
	/// Context of the Contract term
	public var topic: [Reference]?
	
	/// Contract Term Activity
	public var action: [CodeableConcept]?
	
	/// Purpose for the Contract Term Action
	public var actionReason: [CodeableConcept]?
	
	/// Security Labels that define affected terms
	public var securityLabel: [Coding]?
	
	/// Contract Term Agent List
	public var agent: [ContractTermAgent]?
	
	/// Human readable Contract term text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Contract Term Valued Item List
	public var valuedItem: [ContractTermValuedItem]?
	
	/// Nested Contract Term Group
	public var group: [ContractTerm]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: [CodeableConcept]? = nil,
							actionReason: [CodeableConcept]? = nil,
							agent: [ContractTermAgent]? = nil,
							applies: Period? = nil,
							`extension`: [Extension]? = nil,
							group: [ContractTerm]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							issued: FHIRPrimitive<DateTime>? = nil,
							modifierExtension: [Extension]? = nil,
							securityLabel: [Coding]? = nil,
							subType: CodeableConcept? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							topic: [Reference]? = nil,
							type: CodeableConcept? = nil,
							valuedItem: [ContractTermValuedItem]? = nil)
	{
		self.init()
		self.action = action
		self.actionReason = actionReason
		self.agent = agent
		self.applies = applies
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
		self.valuedItem = valuedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actionReason
		case agent
		case applies
		case group
		case identifier
		case issued; case _issued
		case securityLabel
		case subType
		case text; case _text
		case topic
		case type
		case valuedItem
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actionReason = try [CodeableConcept](from: _container, forKeyIfPresent: .actionReason)
		self.agent = try [ContractTermAgent](from: _container, forKeyIfPresent: .agent)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.group = try [ContractTerm](from: _container, forKeyIfPresent: .group)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.securityLabel = try [Coding](from: _container, forKeyIfPresent: .securityLabel)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.topic = try [Reference](from: _container, forKeyIfPresent: .topic)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.valuedItem = try [ContractTermValuedItem](from: _container, forKeyIfPresent: .valuedItem)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try actionReason?.encode(on: &_container, forKey: .actionReason)
		try agent?.encode(on: &_container, forKey: .agent)
		try applies?.encode(on: &_container, forKey: .applies)
		try group?.encode(on: &_container, forKey: .group)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try securityLabel?.encode(on: &_container, forKey: .securityLabel)
		try subType?.encode(on: &_container, forKey: .subType)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try topic?.encode(on: &_container, forKey: .topic)
		try type?.encode(on: &_container, forKey: .type)
		try valuedItem?.encode(on: &_container, forKey: .valuedItem)
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
		    && actionReason == _other.actionReason
		    && agent == _other.agent
		    && applies == _other.applies
		    && group == _other.group
		    && identifier == _other.identifier
		    && issued == _other.issued
		    && securityLabel == _other.securityLabel
		    && subType == _other.subType
		    && text == _other.text
		    && topic == _other.topic
		    && type == _other.type
		    && valuedItem == _other.valuedItem
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(actionReason)
		hasher.combine(agent)
		hasher.combine(applies)
		hasher.combine(group)
		hasher.combine(identifier)
		hasher.combine(issued)
		hasher.combine(securityLabel)
		hasher.combine(subType)
		hasher.combine(text)
		hasher.combine(topic)
		hasher.combine(type)
		hasher.combine(valuedItem)
	}
}

/**
 Contract Term Agent List.
 
 An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity
 taking place.
 */
open class ContractTermAgent: BackboneElement {
	
	/// Contract Term Agent Subject
	public var actor: Reference
	
	/// Type of the Contract Term Agent
	public var role: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: [CodeableConcept]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case role
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try role?.encode(on: &_container, forKey: .role)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermAgent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && role == _other.role
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(role)
	}
}

/**
 Contract Term Valued Item List.
 
 Contract Provision Valued Item List.
 */
open class ContractTermValuedItem: BackboneElement {
	
	/// All possible types for "entity[x]"
	public enum EntityX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Contract Term Valued Item Type
	/// One of `entity[x]`
	public var entity: EntityX?
	
	/// Contract Term Valued Item Number
	public var identifier: Identifier?
	
	/// Contract Term Valued Item Effective Tiem
	public var effectiveTime: FHIRPrimitive<DateTime>?
	
	/// Contract Term Valued Item Count
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost
	public var unitPrice: Money?
	
	/// Contract Term Valued Item Price Scaling Factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// Contract Term Valued Item Difficulty Scaling Factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Total Contract Term Valued Item Value
	public var net: Money?
	
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
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							points: FHIRPrimitive<FHIRDecimal>? = nil,
							quantity: Quantity? = nil,
							unitPrice: Money? = nil)
	{
		self.init()
		self.effectiveTime = effectiveTime
		self.entity = entity
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effectiveTime; case _effectiveTime
		case entityCodeableConcept
		case entityReference
		case factor; case _factor
		case identifier
		case net
		case points; case _points
		case quantity
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
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractTermValuedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return effectiveTime == _other.effectiveTime
		    && entity == _other.entity
		    && factor == _other.factor
		    && identifier == _other.identifier
		    && net == _other.net
		    && points == _other.points
		    && quantity == _other.quantity
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(effectiveTime)
		hasher.combine(entity)
		hasher.combine(factor)
		hasher.combine(identifier)
		hasher.combine(net)
		hasher.combine(points)
		hasher.combine(quantity)
		hasher.combine(unitPrice)
	}
}

/**
 Contract Valued Item List.
 */
open class ContractValuedItem: BackboneElement {
	
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
							modifierExtension: [Extension]? = nil,
							net: Money? = nil,
							points: FHIRPrimitive<FHIRDecimal>? = nil,
							quantity: Quantity? = nil,
							unitPrice: Money? = nil)
	{
		self.init()
		self.effectiveTime = effectiveTime
		self.entity = entity
		self.`extension` = `extension`
		self.factor = factor
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.net = net
		self.points = points
		self.quantity = quantity
		self.unitPrice = unitPrice
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case effectiveTime; case _effectiveTime
		case entityCodeableConcept
		case entityReference
		case factor; case _factor
		case identifier
		case net
		case points; case _points
		case quantity
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
		self.net = try Money(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
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
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try unitPrice?.encode(on: &_container, forKey: .unitPrice)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ContractValuedItem else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return effectiveTime == _other.effectiveTime
		    && entity == _other.entity
		    && factor == _other.factor
		    && identifier == _other.identifier
		    && net == _other.net
		    && points == _other.points
		    && quantity == _other.quantity
		    && unitPrice == _other.unitPrice
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(effectiveTime)
		hasher.combine(entity)
		hasher.combine(factor)
		hasher.combine(identifier)
		hasher.combine(net)
		hasher.combine(points)
		hasher.combine(quantity)
		hasher.combine(unitPrice)
	}
}
