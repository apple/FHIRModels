//
//  Bundle.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Bundle)
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
 Contains a collection of resources.
 
 A container for a collection of resources.
 */
public struct Bundle: Resource {
	
	public static let resourceType: ResourceType = .bundle
	
	/// Entry in the bundle - will have a resource or information
	public var entry: [BundleEntry]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Persistent identifier for the bundle
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Links related to this Bundle
	public var link: [BundleLink]?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Digital Signature
	public var signature: Signature?
	
	/// When the bundle was assembled
	public var timestamp: FHIRPrimitive<Instant>?
	
	/// If search, the total number of matches
	public var total: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Indicates the purpose of this bundle - how it is intended to be used.
	public var type: FHIRPrimitive<BundleType>
	
	/// Designated initializer
	public init(
		entry: [BundleEntry]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		link: [BundleLink]? = nil,
		meta: Meta? = nil,
		signature: Signature? = nil,
		timestamp: FHIRPrimitive<Instant>? = nil,
		total: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		type: FHIRPrimitive<BundleType>
	) {
		self.entry = entry
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.link = link
		self.meta = meta
		self.signature = signature
		self.timestamp = timestamp
		self.total = total
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case entry
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case link
		case meta
		case signature
		case timestamp; case _timestamp
		case total; case _total
		case type; case _type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.entry = try [BundleEntry](from: _container, forKeyIfPresent: .entry)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.link = try [BundleLink](from: _container, forKeyIfPresent: .link)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.signature = try Signature(from: _container, forKeyIfPresent: .signature)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .timestamp, auxiliaryKey: ._timestamp)
		self.total = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
		self.type = try FHIRPrimitive<BundleType>(from: _container, forKey: .type, auxiliaryKey: ._type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try entry?.encode(on: &_container, forKey: .entry)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try link?.encode(on: &_container, forKey: .link)
		try meta?.encode(on: &_container, forKey: .meta)
		try signature?.encode(on: &_container, forKey: .signature)
		try timestamp?.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}

/**
 Entry in the bundle - will have a resource or information.
 
 An entry in a bundle resource - will either contain a resource or information about a resource (transactions and
 history only).
 */
public struct BundleEntry: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// URI for resource (Absolute URL server address or URI for UUID/OID)
	public var fullUrl: FHIRPrimitive<FHIRURI>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Links related to this entry
	public var link: [BundleLink]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Additional execution information (transaction/batch/history)
	public var request: BundleEntryRequest?
	
	/// A resource in the bundle
	public var resource: ResourceProxy?
	
	/// Results of execution (transaction/batch/history)
	public var response: BundleEntryResponse?
	
	/// Search related information
	public var search: BundleEntrySearch?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		fullUrl: FHIRPrimitive<FHIRURI>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [BundleLink]? = nil,
		modifierExtension: [Extension]? = nil,
		request: BundleEntryRequest? = nil,
		resource: ResourceProxy? = nil,
		response: BundleEntryResponse? = nil,
		search: BundleEntrySearch? = nil
	) {
		self.`extension` = `extension`
		self.fullUrl = fullUrl
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.request = request
		self.resource = resource
		self.response = response
		self.search = search
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case fullUrl; case _fullUrl
		case id; case _id
		case link
		case modifierExtension
		case request
		case resource
		case response
		case search
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fullUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fullUrl, auxiliaryKey: ._fullUrl)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.link = try [BundleLink](from: _container, forKeyIfPresent: .link)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.request = try BundleEntryRequest(from: _container, forKeyIfPresent: .request)
		self.resource = try ResourceProxy(from: _container, forKeyIfPresent: .resource)
		self.response = try BundleEntryResponse(from: _container, forKeyIfPresent: .response)
		self.search = try BundleEntrySearch(from: _container, forKeyIfPresent: .search)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fullUrl?.encode(on: &_container, forKey: .fullUrl, auxiliaryKey: ._fullUrl)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try link?.encode(on: &_container, forKey: .link)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try request?.encode(on: &_container, forKey: .request)
		try resource?.encode(on: &_container, forKey: .resource)
		try response?.encode(on: &_container, forKey: .response)
		try search?.encode(on: &_container, forKey: .search)
	}
}

/**
 Additional execution information (transaction/batch/history).
 
 Additional information about how this entry should be processed as part of a transaction or batch.  For history, it
 shows how the entry was processed to create the version contained in the entry.
 */
public struct BundleEntryRequest: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// For managing update contention
	public var ifMatch: FHIRPrimitive<FHIRString>?
	
	/// For managing cache currency
	public var ifModifiedSince: FHIRPrimitive<Instant>?
	
	/// For conditional creates
	public var ifNoneExist: FHIRPrimitive<FHIRString>?
	
	/// For managing cache currency
	public var ifNoneMatch: FHIRPrimitive<FHIRString>?
	
	/// In a transaction or batch, this is the HTTP action to be executed for this entry. In a history bundle, this
	/// indicates the HTTP action that occurred.
	public var method: FHIRPrimitive<HTTPVerb>
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// URL for HTTP equivalent of this entry
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		ifMatch: FHIRPrimitive<FHIRString>? = nil,
		ifModifiedSince: FHIRPrimitive<Instant>? = nil,
		ifNoneExist: FHIRPrimitive<FHIRString>? = nil,
		ifNoneMatch: FHIRPrimitive<FHIRString>? = nil,
		method: FHIRPrimitive<HTTPVerb>,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.id = id
		self.ifMatch = ifMatch
		self.ifModifiedSince = ifModifiedSince
		self.ifNoneExist = ifNoneExist
		self.ifNoneMatch = ifNoneMatch
		self.method = method
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case ifMatch; case _ifMatch
		case ifModifiedSince; case _ifModifiedSince
		case ifNoneExist; case _ifNoneExist
		case ifNoneMatch; case _ifNoneMatch
		case method; case _method
		case modifierExtension
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.ifMatch = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifMatch, auxiliaryKey: ._ifMatch)
		self.ifModifiedSince = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .ifModifiedSince, auxiliaryKey: ._ifModifiedSince)
		self.ifNoneExist = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifNoneExist, auxiliaryKey: ._ifNoneExist)
		self.ifNoneMatch = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifNoneMatch, auxiliaryKey: ._ifNoneMatch)
		self.method = try FHIRPrimitive<HTTPVerb>(from: _container, forKey: .method, auxiliaryKey: ._method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try ifMatch?.encode(on: &_container, forKey: .ifMatch, auxiliaryKey: ._ifMatch)
		try ifModifiedSince?.encode(on: &_container, forKey: .ifModifiedSince, auxiliaryKey: ._ifModifiedSince)
		try ifNoneExist?.encode(on: &_container, forKey: .ifNoneExist, auxiliaryKey: ._ifNoneExist)
		try ifNoneMatch?.encode(on: &_container, forKey: .ifNoneMatch, auxiliaryKey: ._ifNoneMatch)
		try method.encode(on: &_container, forKey: .method, auxiliaryKey: ._method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}

/**
 Results of execution (transaction/batch/history).
 
 Indicates the results of processing the corresponding 'request' entry in the batch or transaction being responded to or
 what the results of an operation where when returning history.
 */
public struct BundleEntryResponse: BackboneElement {
	
	/// The Etag for the resource (if relevant)
	public var etag: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Server's date time modified
	public var lastModified: FHIRPrimitive<Instant>?
	
	/// The location (if the operation returns a location)
	public var location: FHIRPrimitive<FHIRURI>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// OperationOutcome with hints and warnings (for batch/transaction)
	public var outcome: ResourceProxy?
	
	/// Status response code (text optional)
	public var status: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		etag: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		lastModified: FHIRPrimitive<Instant>? = nil,
		location: FHIRPrimitive<FHIRURI>? = nil,
		modifierExtension: [Extension]? = nil,
		outcome: ResourceProxy? = nil,
		status: FHIRPrimitive<FHIRString>
	) {
		self.etag = etag
		self.`extension` = `extension`
		self.id = id
		self.lastModified = lastModified
		self.location = location
		self.modifierExtension = modifierExtension
		self.outcome = outcome
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case etag; case _etag
		case `extension` = "extension"
		case id; case _id
		case lastModified; case _lastModified
		case location; case _location
		case modifierExtension
		case outcome
		case status; case _status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.etag = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .etag, auxiliaryKey: ._etag)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.lastModified = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastModified, auxiliaryKey: ._lastModified)
		self.location = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .location, auxiliaryKey: ._location)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.outcome = try ResourceProxy(from: _container, forKeyIfPresent: .outcome)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try etag?.encode(on: &_container, forKey: .etag, auxiliaryKey: ._etag)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try lastModified?.encode(on: &_container, forKey: .lastModified, auxiliaryKey: ._lastModified)
		try location?.encode(on: &_container, forKey: .location, auxiliaryKey: ._location)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
	}
}

/**
 Search related information.
 
 Information about the search process that lead to the creation of this entry.
 */
public struct BundleEntrySearch: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Why this entry is in the result set - whether it's included as a match or because of an _include requirement, or
	/// to convey information or warning information about the search process.
	public var mode: FHIRPrimitive<SearchEntryMode>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Search ranking (between 0 and 1)
	public var score: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		mode: FHIRPrimitive<SearchEntryMode>? = nil,
		modifierExtension: [Extension]? = nil,
		score: FHIRPrimitive<FHIRDecimal>? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.score = score
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case mode; case _mode
		case modifierExtension
		case score; case _score
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.mode = try FHIRPrimitive<SearchEntryMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.score = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .score, auxiliaryKey: ._score)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try score?.encode(on: &_container, forKey: .score, auxiliaryKey: ._score)
	}
}

/**
 Links related to this Bundle.
 
 A series of links that provide context to this bundle.
 */
public struct BundleLink: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
	public var relation: FHIRPrimitive<FHIRString>
	
	/// Reference details for the link
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		relation: FHIRPrimitive<FHIRString>,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.relation = relation
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case relation; case _relation
		case url; case _url
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relation = try FHIRPrimitive<FHIRString>(from: _container, forKey: .relation, auxiliaryKey: ._relation)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relation.encode(on: &_container, forKey: .relation, auxiliaryKey: ._relation)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
	}
}
