//
//  Bundle.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Bundle)
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
 Contains a collection of resources.
 
 A container for a collection of resources.
 */
open class Bundle: Resource {
	
	override open class var resourceType: ResourceType { return .bundle }
	
	/// Persistent identifier for the bundle
	public var identifier: Identifier?
	
	/// Indicates the purpose of this bundle - how it is intended to be used.
	public var type: FHIRPrimitive<BundleType>
	
	/// When the bundle was assembled
	public var timestamp: FHIRPrimitive<Instant>?
	
	/// If search, the total number of matches
	public var total: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Links related to this Bundle
	public var link: [BundleLink]?
	
	/// Entry in the bundle - will have a resource or information
	public var entry: [BundleEntry]?
	
	/// Digital Signature
	public var signature: Signature?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<BundleType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: FHIRPrimitive<BundleType>)
	{
		self.init(type: type)
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
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case entry
		case identifier
		case link
		case signature
		case timestamp; case _timestamp
		case total; case _total
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.entry = try [BundleEntry](from: _container, forKeyIfPresent: .entry)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.link = try [BundleLink](from: _container, forKeyIfPresent: .link)
		self.signature = try Signature(from: _container, forKeyIfPresent: .signature)
		self.timestamp = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .timestamp, auxiliaryKey: ._timestamp)
		self.total = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .total, auxiliaryKey: ._total)
		self.type = try FHIRPrimitive<BundleType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try entry?.encode(on: &_container, forKey: .entry)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try link?.encode(on: &_container, forKey: .link)
		try signature?.encode(on: &_container, forKey: .signature)
		try timestamp?.encode(on: &_container, forKey: .timestamp, auxiliaryKey: ._timestamp)
		try total?.encode(on: &_container, forKey: .total, auxiliaryKey: ._total)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Bundle else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return entry == _other.entry
		    && identifier == _other.identifier
		    && link == _other.link
		    && signature == _other.signature
		    && timestamp == _other.timestamp
		    && total == _other.total
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(entry)
		hasher.combine(identifier)
		hasher.combine(link)
		hasher.combine(signature)
		hasher.combine(timestamp)
		hasher.combine(total)
		hasher.combine(type)
	}
}

/**
 Entry in the bundle - will have a resource or information.
 
 An entry in a bundle resource - will either contain a resource or information about a resource (transactions and
 history only).
 */
open class BundleEntry: BackboneElement {
	
	/// Links related to this entry
	public var link: [BundleLink]?
	
	/// URI for resource (Absolute URL server address or URI for UUID/OID)
	public var fullUrl: FHIRPrimitive<FHIRURI>?
	
	/// A resource in the bundle
	public var resource: ResourceProxy?
	
	/// Search related information
	public var search: BundleEntrySearch?
	
	/// Additional execution information (transaction/batch/history)
	public var request: BundleEntryRequest?
	
	/// Results of execution (transaction/batch/history)
	public var response: BundleEntryResponse?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							fullUrl: FHIRPrimitive<FHIRURI>? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							link: [BundleLink]? = nil,
							modifierExtension: [Extension]? = nil,
							request: BundleEntryRequest? = nil,
							resource: ResourceProxy? = nil,
							response: BundleEntryResponse? = nil,
							search: BundleEntrySearch? = nil)
	{
		self.init()
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
		case fullUrl; case _fullUrl
		case link
		case request
		case resource
		case response
		case search
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.fullUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .fullUrl, auxiliaryKey: ._fullUrl)
		self.link = try [BundleLink](from: _container, forKeyIfPresent: .link)
		self.request = try BundleEntryRequest(from: _container, forKeyIfPresent: .request)
		self.resource = try ResourceProxy(from: _container, forKeyIfPresent: .resource)
		self.response = try BundleEntryResponse(from: _container, forKeyIfPresent: .response)
		self.search = try BundleEntrySearch(from: _container, forKeyIfPresent: .search)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try fullUrl?.encode(on: &_container, forKey: .fullUrl, auxiliaryKey: ._fullUrl)
		try link?.encode(on: &_container, forKey: .link)
		try request?.encode(on: &_container, forKey: .request)
		try resource?.encode(on: &_container, forKey: .resource)
		try response?.encode(on: &_container, forKey: .response)
		try search?.encode(on: &_container, forKey: .search)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BundleEntry else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return fullUrl == _other.fullUrl
		    && link == _other.link
		    && request == _other.request
		    && resource == _other.resource
		    && response == _other.response
		    && search == _other.search
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(fullUrl)
		hasher.combine(link)
		hasher.combine(request)
		hasher.combine(resource)
		hasher.combine(response)
		hasher.combine(search)
	}
}

/**
 Additional execution information (transaction/batch/history).
 
 Additional information about how this entry should be processed as part of a transaction or batch.  For history, it
 shows how the entry was processed to create the version contained in the entry.
 */
open class BundleEntryRequest: BackboneElement {
	
	/// In a transaction or batch, this is the HTTP action to be executed for this entry. In a history bundle, this
	/// indicates the HTTP action that occurred.
	public var method: FHIRPrimitive<HTTPVerb>
	
	/// URL for HTTP equivalent of this entry
	public var url: FHIRPrimitive<FHIRURI>
	
	/// For managing cache currency
	public var ifNoneMatch: FHIRPrimitive<FHIRString>?
	
	/// For managing cache currency
	public var ifModifiedSince: FHIRPrimitive<Instant>?
	
	/// For managing update contention
	public var ifMatch: FHIRPrimitive<FHIRString>?
	
	/// For conditional creates
	public var ifNoneExist: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(method: FHIRPrimitive<HTTPVerb>, url: FHIRPrimitive<FHIRURI>) {
		self.method = method
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							ifMatch: FHIRPrimitive<FHIRString>? = nil,
							ifModifiedSince: FHIRPrimitive<Instant>? = nil,
							ifNoneExist: FHIRPrimitive<FHIRString>? = nil,
							ifNoneMatch: FHIRPrimitive<FHIRString>? = nil,
							method: FHIRPrimitive<HTTPVerb>,
							modifierExtension: [Extension]? = nil,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(method: method, url: url)
		self.`extension` = `extension`
		self.id = id
		self.ifMatch = ifMatch
		self.ifModifiedSince = ifModifiedSince
		self.ifNoneExist = ifNoneExist
		self.ifNoneMatch = ifNoneMatch
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case ifMatch; case _ifMatch
		case ifModifiedSince; case _ifModifiedSince
		case ifNoneExist; case _ifNoneExist
		case ifNoneMatch; case _ifNoneMatch
		case method; case _method
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.ifMatch = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifMatch, auxiliaryKey: ._ifMatch)
		self.ifModifiedSince = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .ifModifiedSince, auxiliaryKey: ._ifModifiedSince)
		self.ifNoneExist = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifNoneExist, auxiliaryKey: ._ifNoneExist)
		self.ifNoneMatch = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .ifNoneMatch, auxiliaryKey: ._ifNoneMatch)
		self.method = try FHIRPrimitive<HTTPVerb>(from: _container, forKey: .method, auxiliaryKey: ._method)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try ifMatch?.encode(on: &_container, forKey: .ifMatch, auxiliaryKey: ._ifMatch)
		try ifModifiedSince?.encode(on: &_container, forKey: .ifModifiedSince, auxiliaryKey: ._ifModifiedSince)
		try ifNoneExist?.encode(on: &_container, forKey: .ifNoneExist, auxiliaryKey: ._ifNoneExist)
		try ifNoneMatch?.encode(on: &_container, forKey: .ifNoneMatch, auxiliaryKey: ._ifNoneMatch)
		try method.encode(on: &_container, forKey: .method, auxiliaryKey: ._method)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BundleEntryRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return ifMatch == _other.ifMatch
		    && ifModifiedSince == _other.ifModifiedSince
		    && ifNoneExist == _other.ifNoneExist
		    && ifNoneMatch == _other.ifNoneMatch
		    && method == _other.method
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(ifMatch)
		hasher.combine(ifModifiedSince)
		hasher.combine(ifNoneExist)
		hasher.combine(ifNoneMatch)
		hasher.combine(method)
		hasher.combine(url)
	}
}

/**
 Results of execution (transaction/batch/history).
 
 Indicates the results of processing the corresponding 'request' entry in the batch or transaction being responded to or
 what the results of an operation where when returning history.
 */
open class BundleEntryResponse: BackboneElement {
	
	/// Status response code (text optional)
	public var status: FHIRPrimitive<FHIRString>
	
	/// The location (if the operation returns a location)
	public var location: FHIRPrimitive<FHIRURI>?
	
	/// The Etag for the resource (if relevant)
	public var etag: FHIRPrimitive<FHIRString>?
	
	/// Server's date time modified
	public var lastModified: FHIRPrimitive<Instant>?
	
	/// OperationOutcome with hints and warnings (for batch/transaction)
	public var outcome: ResourceProxy?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<FHIRString>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							etag: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							lastModified: FHIRPrimitive<Instant>? = nil,
							location: FHIRPrimitive<FHIRURI>? = nil,
							modifierExtension: [Extension]? = nil,
							outcome: ResourceProxy? = nil,
							status: FHIRPrimitive<FHIRString>)
	{
		self.init(status: status)
		self.etag = etag
		self.`extension` = `extension`
		self.id = id
		self.lastModified = lastModified
		self.location = location
		self.modifierExtension = modifierExtension
		self.outcome = outcome
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case etag; case _etag
		case lastModified; case _lastModified
		case location; case _location
		case outcome
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.etag = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .etag, auxiliaryKey: ._etag)
		self.lastModified = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastModified, auxiliaryKey: ._lastModified)
		self.location = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .location, auxiliaryKey: ._location)
		self.outcome = try ResourceProxy(from: _container, forKeyIfPresent: .outcome)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try etag?.encode(on: &_container, forKey: .etag, auxiliaryKey: ._etag)
		try lastModified?.encode(on: &_container, forKey: .lastModified, auxiliaryKey: ._lastModified)
		try location?.encode(on: &_container, forKey: .location, auxiliaryKey: ._location)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BundleEntryResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return etag == _other.etag
		    && lastModified == _other.lastModified
		    && location == _other.location
		    && outcome == _other.outcome
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(etag)
		hasher.combine(lastModified)
		hasher.combine(location)
		hasher.combine(outcome)
		hasher.combine(status)
	}
}

/**
 Search related information.
 
 Information about the search process that lead to the creation of this entry.
 */
open class BundleEntrySearch: BackboneElement {
	
	/// Why this entry is in the result set - whether it's included as a match or because of an _include requirement, or
	/// to convey information or warning information about the search process.
	public var mode: FHIRPrimitive<SearchEntryMode>?
	
	/// Search ranking (between 0 and 1)
	public var score: FHIRPrimitive<FHIRDecimal>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							mode: FHIRPrimitive<SearchEntryMode>? = nil,
							modifierExtension: [Extension]? = nil,
							score: FHIRPrimitive<FHIRDecimal>? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.mode = mode
		self.modifierExtension = modifierExtension
		self.score = score
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case mode; case _mode
		case score; case _score
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.mode = try FHIRPrimitive<SearchEntryMode>(from: _container, forKeyIfPresent: .mode, auxiliaryKey: ._mode)
		self.score = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .score, auxiliaryKey: ._score)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try mode?.encode(on: &_container, forKey: .mode, auxiliaryKey: ._mode)
		try score?.encode(on: &_container, forKey: .score, auxiliaryKey: ._score)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BundleEntrySearch else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return mode == _other.mode
		    && score == _other.score
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(mode)
		hasher.combine(score)
	}
}

/**
 Links related to this Bundle.
 
 A series of links that provide context to this bundle.
 */
open class BundleLink: BackboneElement {
	
	/// See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
	public var relation: FHIRPrimitive<FHIRString>
	
	/// Reference details for the link
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Designated initializer taking all required properties
	public init(relation: FHIRPrimitive<FHIRString>, url: FHIRPrimitive<FHIRURI>) {
		self.relation = relation
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							relation: FHIRPrimitive<FHIRString>,
							url: FHIRPrimitive<FHIRURI>)
	{
		self.init(relation: relation, url: url)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case relation; case _relation
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.relation = try FHIRPrimitive<FHIRString>(from: _container, forKey: .relation, auxiliaryKey: ._relation)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try relation.encode(on: &_container, forKey: .relation, auxiliaryKey: ._relation)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? BundleLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return relation == _other.relation
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(relation)
		hasher.combine(url)
	}
}
