//
//  ProcessRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/ProcessRequest)
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
 Request to perform some action on or in regards to an existing resource.
 
 This resource provides the target, request and response, and action details for an action to be performed by the target
 on or about existing resources.
 */
public struct ProcessRequest: DomainResource {
	
	public static let resourceType: ResourceType = .processRequest
	
	/// The type of processing action being requested, for example Reversal, Readjudication,
	/// StatusRequest,PendedRequest.
	public var action: FHIRPrimitive<ActionList>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Resource type(s) to exclude
	public var exclude: [FHIRPrimitive<FHIRString>]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Resource type(s) to include
	public var include: [FHIRPrimitive<FHIRString>]?
	
	/// Items to re-adjudicate
	public var item: [ProcessRequestItem]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Remove history
	public var nullify: FHIRPrimitive<FHIRBool>?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Selection period
	public var period: Period?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Reference number/string
	public var reference: FHIRPrimitive<FHIRString>?
	
	/// Reference to the Request resource
	public var request: Reference?
	
	/// Reference to the Response resource
	public var response: Reference?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Party which is the target of the request
	public var target: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		action: FHIRPrimitive<ActionList>? = nil,
		contained: [ResourceProxy]? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		exclude: [FHIRPrimitive<FHIRString>]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		include: [FHIRPrimitive<FHIRString>]? = nil,
		item: [ProcessRequestItem]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		nullify: FHIRPrimitive<FHIRBool>? = nil,
		organization: Reference? = nil,
		period: Period? = nil,
		provider: Reference? = nil,
		reference: FHIRPrimitive<FHIRString>? = nil,
		request: Reference? = nil,
		response: Reference? = nil,
		status: FHIRPrimitive<FHIRString>? = nil,
		target: Reference? = nil,
		text: Narrative? = nil
	) {
		self.action = action
		self.contained = contained
		self.created = created
		self.exclude = exclude
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.include = include
		self.item = item
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.nullify = nullify
		self.organization = organization
		self.period = period
		self.provider = provider
		self.reference = reference
		self.request = request
		self.response = response
		self.status = status
		self.target = target
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case action; case _action
		case contained
		case created; case _created
		case exclude; case _exclude
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case include; case _include
		case item
		case language; case _language
		case meta
		case modifierExtension
		case nullify; case _nullify
		case organization
		case period
		case provider
		case reference; case _reference
		case request
		case response
		case status; case _status
		case target
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try FHIRPrimitive<ActionList>(from: _container, forKeyIfPresent: .action, auxiliaryKey: ._action)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.exclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .exclude, auxiliaryKey: ._exclude)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.include = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .include, auxiliaryKey: ._include)
		self.item = try [ProcessRequestItem](from: _container, forKeyIfPresent: .item)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.nullify = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .nullify, auxiliaryKey: ._nullify)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.period = try Period(from: _container, forKeyIfPresent: .period)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.reference = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.response = try Reference(from: _container, forKeyIfPresent: .response)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.target = try Reference(from: _container, forKeyIfPresent: .target)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try action?.encode(on: &_container, forKey: .action, auxiliaryKey: ._action)
		try contained?.encode(on: &_container, forKey: .contained)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try exclude?.encode(on: &_container, forKey: .exclude, auxiliaryKey: ._exclude)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try include?.encode(on: &_container, forKey: .include, auxiliaryKey: ._include)
		try item?.encode(on: &_container, forKey: .item)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try nullify?.encode(on: &_container, forKey: .nullify, auxiliaryKey: ._nullify)
		try organization?.encode(on: &_container, forKey: .organization)
		try period?.encode(on: &_container, forKey: .period)
		try provider?.encode(on: &_container, forKey: .provider)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try request?.encode(on: &_container, forKey: .request)
		try response?.encode(on: &_container, forKey: .response)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try target?.encode(on: &_container, forKey: .target)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Items to re-adjudicate.
 
 List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
 */
public struct ProcessRequestItem: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Service instance
	public var sequenceLinkId: FHIRPrimitive<FHIRInteger>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		sequenceLinkId: FHIRPrimitive<FHIRInteger>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.sequenceLinkId = sequenceLinkId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case sequenceLinkId; case _sequenceLinkId
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.sequenceLinkId = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try sequenceLinkId.encode(on: &_container, forKey: .sequenceLinkId, auxiliaryKey: ._sequenceLinkId)
	}
}
