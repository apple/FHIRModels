//
//  Contract.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Contract)
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
 Contract.
 
 A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
 */
public struct Contract: DomainResource {
	
	public static let resourceType: ResourceType = .contract
	
	/// All possible types for "binding[x]"
	public enum BindingX: Equatable, Hashable, Sendable {
		indirect case attachment(Attachment)
		indirect case reference(Reference)
	}
	
	/// Contract Action
	public var action: [CodeableConcept]?
	
	/// Contract Action Reason
	public var actionReason: [CodeableConcept]?
	
	/// Contract Actor
	public var actor: [ContractActor]?
	
	/// Effective time
	public var applies: Period?
	
	/// Authority under which this Contract has standing
	public var authority: [Reference]?
	
	/// Binding Contract
	/// One of `binding[x]`
	public var binding: BindingX?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Domain in which this Contract applies
	public var domain: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Contract Friendly Language
	public var friendly: [ContractFriendly]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// When this Contract was issued
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Contract Legal Language
	public var legal: [ContractLegal]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Computable Contract Language
	public var rule: [ContractRule]?
	
	/// Contract Signer
	public var signer: [ContractSigner]?
	
	/// Contract Subtype
	public var subType: [CodeableConcept]?
	
	/// Subject of this Contract
	public var subject: [Reference]?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Contract Tyoe
	public var type: CodeableConcept?
	
	/// Contract Valued Item
	public var valuedItem: [ContractValuedItem]?
	
	/// Designated initializer
	public init(
		action: [CodeableConcept]? = nil,
		actionReason: [CodeableConcept]? = nil,
		actor: [ContractActor]? = nil,
		applies: Period? = nil,
		authority: [Reference]? = nil,
		binding: BindingX? = nil,
		contained: [ResourceProxy]? = nil,
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
		signer: [ContractSigner]? = nil,
		subType: [CodeableConcept]? = nil,
		subject: [Reference]? = nil,
		term: [ContractTerm]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		valuedItem: [ContractValuedItem]? = nil
	) {
		self.action = action
		self.actionReason = actionReason
		self.actor = actor
		self.applies = applies
		self.authority = authority
		self.binding = binding
		self.contained = contained
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
		self.signer = signer
		self.subType = subType
		self.subject = subject
		self.term = term
		self.text = text
		self.type = type
		self.valuedItem = valuedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action
		case actionReason
		case actor
		case applies
		case authority
		case bindingAttachment
		case bindingReference
		case contained
		case domain
		case `extension` = "extension"
		case friendly
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case issued; case _issued
		case language; case _language
		case legal
		case meta
		case modifierExtension
		case rule
		case signer
		case subType
		case subject
		case term
		case text
		case type
		case valuedItem
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actionReason = try [CodeableConcept](from: _container, forKeyIfPresent: .actionReason)
		self.actor = try [ContractActor](from: _container, forKeyIfPresent: .actor)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.authority = try [Reference](from: _container, forKeyIfPresent: .authority)
		self.binding = try Self._decodeBinding(from: _container)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.domain = try [Reference](from: _container, forKeyIfPresent: .domain)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.friendly = try [ContractFriendly](from: _container, forKeyIfPresent: .friendly)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legal = try [ContractLegal](from: _container, forKeyIfPresent: .legal)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.rule = try [ContractRule](from: _container, forKeyIfPresent: .rule)
		self.signer = try [ContractSigner](from: _container, forKeyIfPresent: .signer)
		self.subType = try [CodeableConcept](from: _container, forKeyIfPresent: .subType)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.term = try [ContractTerm](from: _container, forKeyIfPresent: .term)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.valuedItem = try [ContractValuedItem](from: _container, forKeyIfPresent: .valuedItem)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actionReason?.encode(on: &_container, forKey: .actionReason)
		try actor?.encode(on: &_container, forKey: .actor)
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
		try contained?.encode(on: &_container, forKey: .contained)
		try domain?.encode(on: &_container, forKey: .domain)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try friendly?.encode(on: &_container, forKey: .friendly)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legal?.encode(on: &_container, forKey: .legal)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try rule?.encode(on: &_container, forKey: .rule)
		try signer?.encode(on: &_container, forKey: .signer)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject?.encode(on: &_container, forKey: .subject)
		try term?.encode(on: &_container, forKey: .term)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try valuedItem?.encode(on: &_container, forKey: .valuedItem)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeBinding(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> BindingX? {
		var _t_binding: BindingX? = nil
		if let bindingAttachment = try Attachment(from: _container, forKeyIfPresent: .bindingAttachment) {
			_t_binding = .attachment(bindingAttachment)
		}
		if let bindingReference = try Reference(from: _container, forKeyIfPresent: .bindingReference) {
			if _t_binding != nil {
				throw DecodingError.dataCorruptedError(forKey: .bindingReference, in: _container, debugDescription: "More than one value provided for \"binding\"")
			}
			_t_binding = .reference(bindingReference)
		}
		return _t_binding
	}
}

/**
 Contract Actor.
 
 List of Contract actors.
 */
public struct ContractActor: BackboneElement {
	
	/// Contract Actor Type
	public var entity: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Contract  Actor Role
	public var role: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		entity: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: [CodeableConcept]? = nil
	) {
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entity
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.entity = try Reference(from: _container, forKey: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try entity.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
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
 Contract Signer.
 
 Party signing this Contract.
 */
public struct ContractSigner: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Contract Signatory Party
	public var party: Reference
	
	/// Contract Documentation Signature
	public var signature: FHIRPrimitive<FHIRString>
	
	/// Contract Signer Type
	public var type: Coding
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		party: Reference,
		signature: FHIRPrimitive<FHIRString>,
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
		case signature; case _signature
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
		self.signature = try FHIRPrimitive<FHIRString>(from: _container, forKey: .signature, auxiliaryKey: ._signature)
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
		try signature.encode(on: &_container, forKey: .signature, auxiliaryKey: ._signature)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Contract Term List.
 
 One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
 */
public struct ContractTerm: BackboneElement {
	
	/// Contract Term Action
	public var action: [CodeableConcept]?
	
	/// Contract Term Action Reason
	public var actionReason: [CodeableConcept]?
	
	/// Contract Term Actor List
	public var actor: [ContractTermActor]?
	
	/// Contract Term Effective Time
	public var applies: Period?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Nested Contract Term Group
	public var group: [ContractTerm]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract Term identifier
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: FHIRPrimitive<DateTime>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Contract Term Subtype
	public var subType: CodeableConcept?
	
	/// Subject of this Contract Term
	public var subject: Reference?
	
	/// Human readable Contract term text
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Contract Term Type
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item
	public var valuedItem: [ContractTermValuedItem]?
	
	/// Designated initializer
	public init(
		action: [CodeableConcept]? = nil,
		actionReason: [CodeableConcept]? = nil,
		actor: [ContractTermActor]? = nil,
		applies: Period? = nil,
		`extension`: [Extension]? = nil,
		group: [ContractTerm]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		issued: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		subType: CodeableConcept? = nil,
		subject: Reference? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil,
		valuedItem: [ContractTermValuedItem]? = nil
	) {
		self.action = action
		self.actionReason = actionReason
		self.actor = actor
		self.applies = applies
		self.`extension` = `extension`
		self.group = group
		self.id = id
		self.identifier = identifier
		self.issued = issued
		self.modifierExtension = modifierExtension
		self.subType = subType
		self.subject = subject
		self.text = text
		self.type = type
		self.valuedItem = valuedItem
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case actionReason
		case actor
		case applies
		case `extension` = "extension"
		case group
		case id; case _id
		case identifier
		case issued; case _issued
		case modifierExtension
		case subType
		case subject
		case text; case _text
		case type
		case valuedItem
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try [CodeableConcept](from: _container, forKeyIfPresent: .action)
		self.actionReason = try [CodeableConcept](from: _container, forKeyIfPresent: .actionReason)
		self.actor = try [ContractTermActor](from: _container, forKeyIfPresent: .actor)
		self.applies = try Period(from: _container, forKeyIfPresent: .applies)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.group = try [ContractTerm](from: _container, forKeyIfPresent: .group)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.issued = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.subType = try CodeableConcept(from: _container, forKeyIfPresent: .subType)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.valuedItem = try [ContractTermValuedItem](from: _container, forKeyIfPresent: .valuedItem)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action)
		try actionReason?.encode(on: &_container, forKey: .actionReason)
		try actor?.encode(on: &_container, forKey: .actor)
		try applies?.encode(on: &_container, forKey: .applies)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try group?.encode(on: &_container, forKey: .group)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try subType?.encode(on: &_container, forKey: .subType)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try valuedItem?.encode(on: &_container, forKey: .valuedItem)
	}
}

/**
 Contract Term Actor List.
 
 List of actors participating in this Contract Provision.
 */
public struct ContractTermActor: BackboneElement {
	
	/// Contract Term Actor
	public var entity: Reference
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Contract Term Actor Role
	public var role: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		entity: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		role: [CodeableConcept]? = nil
	) {
		self.entity = entity
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entity
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case role
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.entity = try Reference(from: _container, forKey: .entity)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try entity.encode(on: &_container, forKey: .entity)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try role?.encode(on: &_container, forKey: .role)
	}
}

/**
 Contract Term Valued Item.
 
 Contract Provision Valued Item List.
 */
public struct ContractTermValuedItem: BackboneElement {
	
	/// All possible types for "entity[x]"
	public enum EntityX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contract Term Valued Item Effective Tiem
	public var effectiveTime: FHIRPrimitive<DateTime>?
	
	/// Contract Term Valued Item Type
	/// One of `entity[x]`
	public var entity: EntityX?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Contract Term Valued Item Price Scaling Factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract Term Valued Item Identifier
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total Contract Term Valued Item Value
	public var net: Quantity?
	
	/// Contract Term Valued Item Difficulty Scaling Factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Contract Term Valued Item Count
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost
	public var unitPrice: Quantity?
	
	/// Designated initializer
	public init(
		effectiveTime: FHIRPrimitive<DateTime>? = nil,
		entity: EntityX? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		net: Quantity? = nil,
		points: FHIRPrimitive<FHIRDecimal>? = nil,
		quantity: Quantity? = nil,
		unitPrice: Quantity? = nil
	) {
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
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case identifier
		case modifierExtension
		case net
		case points; case _points
		case quantity
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
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
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
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
 Contract Valued Item.
 
 Contract Valued Item List.
 */
public struct ContractValuedItem: BackboneElement {
	
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
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Contract Valued Item Price Scaling Factor
	public var factor: FHIRPrimitive<FHIRDecimal>?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Contract Valued Item Identifier
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Total Contract Valued Item Value
	public var net: Quantity?
	
	/// Contract Valued Item Difficulty Scaling Factor
	public var points: FHIRPrimitive<FHIRDecimal>?
	
	/// Count of Contract Valued Items
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost
	public var unitPrice: Quantity?
	
	/// Designated initializer
	public init(
		effectiveTime: FHIRPrimitive<DateTime>? = nil,
		entity: EntityX? = nil,
		`extension`: [Extension]? = nil,
		factor: FHIRPrimitive<FHIRDecimal>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		net: Quantity? = nil,
		points: FHIRPrimitive<FHIRDecimal>? = nil,
		quantity: Quantity? = nil,
		unitPrice: Quantity? = nil
	) {
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
		case `extension` = "extension"
		case factor; case _factor
		case id; case _id
		case identifier
		case modifierExtension
		case net
		case points; case _points
		case quantity
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
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.net = try Quantity(from: _container, forKeyIfPresent: .net)
		self.points = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .points, auxiliaryKey: ._points)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.unitPrice = try Quantity(from: _container, forKeyIfPresent: .unitPrice)
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
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try net?.encode(on: &_container, forKey: .net)
		try points?.encode(on: &_container, forKey: .points, auxiliaryKey: ._points)
		try quantity?.encode(on: &_container, forKey: .quantity)
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
