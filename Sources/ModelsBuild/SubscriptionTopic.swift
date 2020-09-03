//
//  SubscriptionTopic.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/SubscriptionTopic)
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
 Definition Pattern.
 
 Describes a stream of resource state changes identified by trigger criteria and annotated with labels useful to filter
 projections from this topic.
 */
open class SubscriptionTopic: DomainResource {
	
	override open class var resourceType: ResourceType { return .subscriptionTopic }
	
	/// Logical canonical URL to reference this SubscriptionTopic (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Business Identifier for SubscriptionTopic
	public var identifier: [Identifier]?
	
	/// Business version of the SubscriptionTopic
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this SubscriptionTopic (Human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Based on FHIR protocol or definition
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// The current state of the SubscriptionTopic.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date status first applied
	public var date: FHIRPrimitive<DateTime>?
	
	/// The name of the individual or organization that published the SubscriptionTopic
	public var publisher: Reference?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the ToSubscriptionTopicpic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for Topic (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this SubscriptionTopic is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When SubscriptionTopic is/was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Last review date for the SubscriptionTopic
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// The effective date range for the SubscriptionTopic
	public var effectivePeriod: Period?
	
	/// Criteria for including a resource update in the subscription topic
	public var resourceTrigger: SubscriptionTopicResourceTrigger?
	
	/// Properties by which a Subscription can further filter a SubscriptionTopic
	public var canFilterBy: [SubscriptionTopicCanFilterBy]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							canFilterBy: [SubscriptionTopicCanFilterBy]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							derivedFrom: [FHIRPrimitive<Canonical>]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							effectivePeriod: Period? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							publisher: Reference? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							resourceTrigger: SubscriptionTopicResourceTrigger? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status, url: url)
		self.approvalDate = approvalDate
		self.canFilterBy = canFilterBy
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.derivedFrom = derivedFrom
		self.description_fhir = description_fhir
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.publisher = publisher
		self.purpose = purpose
		self.resourceTrigger = resourceTrigger
		self.text = text
		self.title = title
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case canFilterBy
		case contact
		case copyright; case _copyright
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case publisher
		case purpose; case _purpose
		case resourceTrigger
		case status; case _status
		case title; case _title
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.canFilterBy = try [SubscriptionTopicCanFilterBy](from: _container, forKeyIfPresent: .canFilterBy)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.resourceTrigger = try SubscriptionTopicResourceTrigger(from: _container, forKeyIfPresent: .resourceTrigger)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try canFilterBy?.encode(on: &_container, forKey: .canFilterBy)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try resourceTrigger?.encode(on: &_container, forKey: .resourceTrigger)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopic else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && canFilterBy == _other.canFilterBy
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && resourceTrigger == _other.resourceTrigger
		    && status == _other.status
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(canFilterBy)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(resourceTrigger)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Properties by which a Subscription can further filter a SubscriptionTopic.
 
 List of properties by which Subscriptions on the subscription topic can be filtered.
 */
open class SubscriptionTopicCanFilterBy: BackboneElement {
	
	/// Search parameter that serves as filter key
	public var searchParamName: FHIRPrimitive<FHIRString>?
	
	/// Allowable operators to apply when determining matches (Search Modifiers).
	public var searchModifier: [FHIRPrimitive<SubscriptionSearchModifier>]?
	
	/// Description of this filter parameter
	public var documentation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentation: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							searchModifier: [FHIRPrimitive<SubscriptionSearchModifier>]? = nil,
							searchParamName: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.documentation = documentation
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.searchModifier = searchModifier
		self.searchParamName = searchParamName
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentation; case _documentation
		case searchModifier; case _searchModifier
		case searchParamName; case _searchParamName
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentation, auxiliaryKey: ._documentation)
		self.searchModifier = try [FHIRPrimitive<SubscriptionSearchModifier>](from: _container, forKeyIfPresent: .searchModifier, auxiliaryKey: ._searchModifier)
		self.searchParamName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .searchParamName, auxiliaryKey: ._searchParamName)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentation?.encode(on: &_container, forKey: .documentation, auxiliaryKey: ._documentation)
		try searchModifier?.encode(on: &_container, forKey: .searchModifier, auxiliaryKey: ._searchModifier)
		try searchParamName?.encode(on: &_container, forKey: .searchParamName, auxiliaryKey: ._searchParamName)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicCanFilterBy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentation == _other.documentation
		    && searchModifier == _other.searchModifier
		    && searchParamName == _other.searchParamName
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentation)
		hasher.combine(searchModifier)
		hasher.combine(searchParamName)
	}
}

/**
 Criteria for including a resource update in the subscription topic.
 
 The criteria for including updates to a nominated resource in the subscription topic.  Thie criteria may be just a
 human readable description and/or a full FHIR search string or FHIRPath expression.
 */
open class SubscriptionTopicResourceTrigger: BackboneElement {
	
	/// Text representation of the trigger
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The list of resource types that are candidates for this subscription topic.  For example, the Encounter resource
	/// is updated in an 'admission' subscription topic.
	public var resourceType: [FHIRPrimitive<ResourceType>]?
	
	/// The REST interaction based rules that the server should use to determine when to trigger a notification for this
	/// topic.
	/// Restricted to: ['create', 'update', 'delete']
	public var methodCriteria: [FHIRPrimitive<FHIRRestfulInteractions>]?
	
	/// Query based trigger rule
	public var queryCriteria: SubscriptionTopicResourceTriggerQueryCriteria?
	
	/// FHIRPath based trigger rule
	public var fhirPathCriteria: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							fhirPathCriteria: [FHIRPrimitive<FHIRString>]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							methodCriteria: [FHIRPrimitive<FHIRRestfulInteractions>]? = nil,
							modifierExtension: [Extension]? = nil,
							queryCriteria: SubscriptionTopicResourceTriggerQueryCriteria? = nil,
							resourceType: [FHIRPrimitive<ResourceType>]? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.fhirPathCriteria = fhirPathCriteria
		self.id = id
		self.methodCriteria = methodCriteria
		self.modifierExtension = modifierExtension
		self.queryCriteria = queryCriteria
		self.resourceType = resourceType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case fhirPathCriteria; case _fhirPathCriteria
		case methodCriteria; case _methodCriteria
		case queryCriteria
		case resourceType; case _resourceType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.fhirPathCriteria = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		self.methodCriteria = try [FHIRPrimitive<FHIRRestfulInteractions>](from: _container, forKeyIfPresent: .methodCriteria, auxiliaryKey: ._methodCriteria)
		self.queryCriteria = try SubscriptionTopicResourceTriggerQueryCriteria(from: _container, forKeyIfPresent: .queryCriteria)
		self.resourceType = try [FHIRPrimitive<ResourceType>](from: _container, forKeyIfPresent: .resourceType, auxiliaryKey: ._resourceType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try fhirPathCriteria?.encode(on: &_container, forKey: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		try methodCriteria?.encode(on: &_container, forKey: .methodCriteria, auxiliaryKey: ._methodCriteria)
		try queryCriteria?.encode(on: &_container, forKey: .queryCriteria)
		try resourceType?.encode(on: &_container, forKey: .resourceType, auxiliaryKey: ._resourceType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicResourceTrigger else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && fhirPathCriteria == _other.fhirPathCriteria
		    && methodCriteria == _other.methodCriteria
		    && queryCriteria == _other.queryCriteria
		    && resourceType == _other.resourceType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(fhirPathCriteria)
		hasher.combine(methodCriteria)
		hasher.combine(queryCriteria)
		hasher.combine(resourceType)
	}
}

/**
 Query based trigger rule.
 
 The FHIR query based rules that the server should use to determine when to trigger a notification for this subscription
 topic.
 */
open class SubscriptionTopicResourceTriggerQueryCriteria: BackboneElement {
	
	/// Rule applied to previous resource state
	public var previous: FHIRPrimitive<FHIRString>?
	
	/// Rule applied to current resource state
	public var current: FHIRPrimitive<FHIRString>?
	
	/// Both must be true flag
	public var requireBoth: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							current: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							previous: FHIRPrimitive<FHIRString>? = nil,
							requireBoth: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init()
		self.current = current
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.previous = previous
		self.requireBoth = requireBoth
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case current; case _current
		case previous; case _previous
		case requireBoth; case _requireBoth
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.current = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .current, auxiliaryKey: ._current)
		self.previous = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .previous, auxiliaryKey: ._previous)
		self.requireBoth = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .requireBoth, auxiliaryKey: ._requireBoth)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try current?.encode(on: &_container, forKey: .current, auxiliaryKey: ._current)
		try previous?.encode(on: &_container, forKey: .previous, auxiliaryKey: ._previous)
		try requireBoth?.encode(on: &_container, forKey: .requireBoth, auxiliaryKey: ._requireBoth)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicResourceTriggerQueryCriteria else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return current == _other.current
		    && previous == _other.previous
		    && requireBoth == _other.requireBoth
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(current)
		hasher.combine(previous)
		hasher.combine(requireBoth)
	}
}
