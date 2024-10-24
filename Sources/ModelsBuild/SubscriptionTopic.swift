//
//  SubscriptionTopic.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/SubscriptionTopic)
//  Copyright 2024 Apple Inc.
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
 The definition of a specific topic for triggering events within the Subscriptions framework.
 
 Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this
 topic.
 */
open class SubscriptionTopic: DomainResource {
	
	override open class var resourceType: ResourceType { return .subscriptionTopic }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this subscription topic, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Business identifier for subscription topic
	public var identifier: [Identifier]?
	
	/// Business version of the subscription topic
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this subscription topic (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this subscription topic (human friendly)
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
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the SubscriptionTopic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction of the SubscriptionTopic (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this SubscriptionTopic is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// When SubscriptionTopic is/was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Date the Subscription Topic was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// The effective date range for the SubscriptionTopic
	public var effectivePeriod: Period?
	
	/// Definition of a trigger for the subscription topic
	public var trigger: [SubscriptionTopicTrigger]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>, url: FHIRPrimitive<FHIRURI>) {
		self.status = status
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
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
		name: FHIRPrimitive<FHIRString>? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		trigger: [SubscriptionTopicTrigger]? = nil,
		url: FHIRPrimitive<FHIRURI>,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(status: status, url: url)
		self.approvalDate = approvalDate
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
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
		self.name = name
		self.publisher = publisher
		self.purpose = purpose
		self.text = text
		self.title = title
		self.trigger = trigger
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case title; case _title
		case trigger
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.trigger = try [SubscriptionTopicTrigger](from: _container, forKeyIfPresent: .trigger)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try trigger?.encode(on: &_container, forKey: .trigger)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
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
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && derivedFrom == _other.derivedFrom
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && title == _other.title
		    && trigger == _other.trigger
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(derivedFrom)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(trigger)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 Definition of a trigger for the subscription topic.
 
 A definition of a state change or event that triggers a notification based on the SubscriptionTopic. The criteria may
 be just a human readable description, or may contain a FHIRPath expression, query-based definition, or event coding.
 Multiple triggers are considered OR joined (e.g., an update matching ANY of the definitions will trigger a
 notification).
 */
open class SubscriptionTopicTrigger: BackboneElement {
	
	/// Text representation of the resource trigger
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Key Data Type, Resource (reference to definition), or relevant definition for this trigger
	public var resource: FHIRPrimitive<FHIRURI>
	
	/// The FHIR RESTful interaction which can be used to trigger a notification for the SubscriptionTopic. Multiple
	/// values are considered OR joined (e.g., CREATE or UPDATE). If not present, all supported interactions are
	/// assumed.
	/// Restricted to: ['create', 'update', 'delete']
	public var supportedInteraction: [FHIRPrimitive<FHIRRestfulInteractions>]?
	
	/// Query based trigger rule
	public var queryCriteria: SubscriptionTopicTriggerQueryCriteria?
	
	/// FHIRPath based trigger rule
	public var fhirPathCriteria: FHIRPrimitive<FHIRString>?
	
	/// Event which can trigger a notification from the SubscriptionTopic
	public var event: CodeableConcept?
	
	/// Properties by which a Subscription can filter notifications based on this trigger
	public var canFilterBy: [SubscriptionTopicTriggerCanFilterBy]?
	
	/// Properties for describing the shape of notifications generated by this trigger
	public var notificationShape: [SubscriptionTopicTriggerNotificationShape]?
	
	/// Designated initializer taking all required properties
	public init(resource: FHIRPrimitive<FHIRURI>) {
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		canFilterBy: [SubscriptionTopicTriggerCanFilterBy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		event: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		fhirPathCriteria: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		notificationShape: [SubscriptionTopicTriggerNotificationShape]? = nil,
		queryCriteria: SubscriptionTopicTriggerQueryCriteria? = nil,
		resource: FHIRPrimitive<FHIRURI>,
		supportedInteraction: [FHIRPrimitive<FHIRRestfulInteractions>]? = nil
	) {
		self.init(resource: resource)
		self.canFilterBy = canFilterBy
		self.description_fhir = description_fhir
		self.event = event
		self.`extension` = `extension`
		self.fhirPathCriteria = fhirPathCriteria
		self.id = id
		self.modifierExtension = modifierExtension
		self.notificationShape = notificationShape
		self.queryCriteria = queryCriteria
		self.supportedInteraction = supportedInteraction
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case canFilterBy
		case description_fhir = "description"; case _description_fhir = "_description"
		case event
		case fhirPathCriteria; case _fhirPathCriteria
		case notificationShape
		case queryCriteria
		case resource; case _resource
		case supportedInteraction; case _supportedInteraction
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.canFilterBy = try [SubscriptionTopicTriggerCanFilterBy](from: _container, forKeyIfPresent: .canFilterBy)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.event = try CodeableConcept(from: _container, forKeyIfPresent: .event)
		self.fhirPathCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		self.notificationShape = try [SubscriptionTopicTriggerNotificationShape](from: _container, forKeyIfPresent: .notificationShape)
		self.queryCriteria = try SubscriptionTopicTriggerQueryCriteria(from: _container, forKeyIfPresent: .queryCriteria)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .resource, auxiliaryKey: ._resource)
		self.supportedInteraction = try [FHIRPrimitive<FHIRRestfulInteractions>](from: _container, forKeyIfPresent: .supportedInteraction, auxiliaryKey: ._supportedInteraction)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try canFilterBy?.encode(on: &_container, forKey: .canFilterBy)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try event?.encode(on: &_container, forKey: .event)
		try fhirPathCriteria?.encode(on: &_container, forKey: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		try notificationShape?.encode(on: &_container, forKey: .notificationShape)
		try queryCriteria?.encode(on: &_container, forKey: .queryCriteria)
		try resource.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try supportedInteraction?.encode(on: &_container, forKey: .supportedInteraction, auxiliaryKey: ._supportedInteraction)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicTrigger else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return canFilterBy == _other.canFilterBy
		    && description_fhir == _other.description_fhir
		    && event == _other.event
		    && fhirPathCriteria == _other.fhirPathCriteria
		    && notificationShape == _other.notificationShape
		    && queryCriteria == _other.queryCriteria
		    && resource == _other.resource
		    && supportedInteraction == _other.supportedInteraction
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(canFilterBy)
		hasher.combine(description_fhir)
		hasher.combine(event)
		hasher.combine(fhirPathCriteria)
		hasher.combine(notificationShape)
		hasher.combine(queryCriteria)
		hasher.combine(resource)
		hasher.combine(supportedInteraction)
	}
}

/**
 Properties by which a Subscription can filter notifications based on this trigger.
 
 List of properties by which Subscriptions can be filtered. May be defined Search Parameters (e.g., Encounter.patient)
 or parameters defined within this SubscriptionTopic context (e.g., hub.event).
 */
open class SubscriptionTopicTriggerCanFilterBy: BackboneElement {
	
	/// Description of this filter parameter
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// URL of the triggering Resource that this filter applies to
	public var resource: FHIRPrimitive<FHIRURI>?
	
	/// Human-readable and computation-friendly name for a filter parameter usable by subscriptions on this topic, via
	/// Subscription.filterBy.filterParameter
	public var filterParameter: FHIRPrimitive<FHIRString>
	
	/// Canonical URL for a filterParameter definition
	public var filterDefinition: FHIRPrimitive<FHIRURI>?
	
	/// Comparators allowed for the filter parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// Modifiers allowed for the filter parameter.
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Designated initializer taking all required properties
	public init(filterParameter: FHIRPrimitive<FHIRString>) {
		self.filterParameter = filterParameter
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		comparator: [FHIRPrimitive<SearchComparator>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		filterDefinition: FHIRPrimitive<FHIRURI>? = nil,
		filterParameter: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifier: [FHIRPrimitive<SearchModifierCode>]? = nil,
		modifierExtension: [Extension]? = nil,
		resource: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(filterParameter: filterParameter)
		self.comparator = comparator
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.filterDefinition = filterDefinition
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator; case _comparator
		case description_fhir = "description"; case _description_fhir = "_description"
		case filterDefinition; case _filterDefinition
		case filterParameter; case _filterParameter
		case modifier; case _modifier
		case resource; case _resource
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.filterDefinition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .filterDefinition, auxiliaryKey: ._filterDefinition)
		self.filterParameter = try FHIRPrimitive<FHIRString>(from: _container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try filterDefinition?.encode(on: &_container, forKey: .filterDefinition, auxiliaryKey: ._filterDefinition)
		try filterParameter.encode(on: &_container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicTriggerCanFilterBy else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return comparator == _other.comparator
		    && description_fhir == _other.description_fhir
		    && filterDefinition == _other.filterDefinition
		    && filterParameter == _other.filterParameter
		    && modifier == _other.modifier
		    && resource == _other.resource
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(comparator)
		hasher.combine(description_fhir)
		hasher.combine(filterDefinition)
		hasher.combine(filterParameter)
		hasher.combine(modifier)
		hasher.combine(resource)
	}
}

/**
 Properties for describing the shape of notifications generated by this trigger.
 
 List of properties to describe the shape (e.g., resources) included in notifications from this trigger.
 */
open class SubscriptionTopicTriggerNotificationShape: BackboneElement {
	
	/// URL of the key definition that is the focus in a notification shape
	public var resource: FHIRPrimitive<FHIRURI>
	
	/// Include directives, rooted in the resource for this shape
	public var include: [FHIRPrimitive<FHIRString>]?
	
	/// Reverse include directives, rooted in the resource for this shape
	public var revInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Query describing data relevant to this notification
	public var relatedQuery: [SubscriptionTopicTriggerNotificationShapeRelatedQuery]?
	
	/// Designated initializer taking all required properties
	public init(resource: FHIRPrimitive<FHIRURI>) {
		self.resource = resource
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		include: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		relatedQuery: [SubscriptionTopicTriggerNotificationShapeRelatedQuery]? = nil,
		resource: FHIRPrimitive<FHIRURI>,
		revInclude: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.init(resource: resource)
		self.`extension` = `extension`
		self.id = id
		self.include = include
		self.modifierExtension = modifierExtension
		self.relatedQuery = relatedQuery
		self.revInclude = revInclude
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case include; case _include
		case relatedQuery
		case resource; case _resource
		case revInclude; case _revInclude
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.include = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .include, auxiliaryKey: ._include)
		self.relatedQuery = try [SubscriptionTopicTriggerNotificationShapeRelatedQuery](from: _container, forKeyIfPresent: .relatedQuery)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .resource, auxiliaryKey: ._resource)
		self.revInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .revInclude, auxiliaryKey: ._revInclude)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try include?.encode(on: &_container, forKey: .include, auxiliaryKey: ._include)
		try relatedQuery?.encode(on: &_container, forKey: .relatedQuery)
		try resource.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try revInclude?.encode(on: &_container, forKey: .revInclude, auxiliaryKey: ._revInclude)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicTriggerNotificationShape else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return include == _other.include
		    && relatedQuery == _other.relatedQuery
		    && resource == _other.resource
		    && revInclude == _other.revInclude
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(include)
		hasher.combine(relatedQuery)
		hasher.combine(resource)
		hasher.combine(revInclude)
	}
}

/**
 Query describing data relevant to this notification.
 
 Queries and codes that could be included with notifications of this shape. Servers MAY include these queries if
 supported and desired in the workflow.
 */
open class SubscriptionTopicTriggerNotificationShapeRelatedQuery: BackboneElement {
	
	/// Coded information describing the type of data this query provides
	public var queryType: Coding?
	
	/// Query to perform
	public var query: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(query: FHIRPrimitive<FHIRString>) {
		self.query = query
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		query: FHIRPrimitive<FHIRString>,
		queryType: Coding? = nil
	) {
		self.init(query: query)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.queryType = queryType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case query; case _query
		case queryType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.query = try FHIRPrimitive<FHIRString>(from: _container, forKey: .query, auxiliaryKey: ._query)
		self.queryType = try Coding(from: _container, forKeyIfPresent: .queryType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try query.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try queryType?.encode(on: &_container, forKey: .queryType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicTriggerNotificationShapeRelatedQuery else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return query == _other.query
		    && queryType == _other.queryType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(query)
		hasher.combine(queryType)
	}
}

/**
 Query based trigger rule.
 
 The FHIR query based rules that the server should use to determine when to trigger a notification for this subscription
 topic.
 */
open class SubscriptionTopicTriggerQueryCriteria: BackboneElement {
	
	/// Rule applied to previous resource state
	public var previous: FHIRPrimitive<FHIRString>?
	
	/// For `create` interactions, should the `previous` criteria count as an automatic pass or an automatic fail. If
	/// not present, the testing behavior during `create` interactions is unspecified (server discretion).
	public var resultForCreate: FHIRPrimitive<CriteriaNotExistsBehavior>?
	
	/// Rule applied to current resource state
	public var current: FHIRPrimitive<FHIRString>?
	
	/// For 'delete' interactions, should the 'current' query criteria count as an automatic pass or an automatic fail.
	/// If not present, the testing behavior during `delete` interactions is unspecified (server discretion).
	public var resultForDelete: FHIRPrimitive<CriteriaNotExistsBehavior>?
	
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
		requireBoth: FHIRPrimitive<FHIRBool>? = nil,
		resultForCreate: FHIRPrimitive<CriteriaNotExistsBehavior>? = nil,
		resultForDelete: FHIRPrimitive<CriteriaNotExistsBehavior>? = nil
	) {
		self.init()
		self.current = current
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.previous = previous
		self.requireBoth = requireBoth
		self.resultForCreate = resultForCreate
		self.resultForDelete = resultForDelete
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case current; case _current
		case previous; case _previous
		case requireBoth; case _requireBoth
		case resultForCreate; case _resultForCreate
		case resultForDelete; case _resultForDelete
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.current = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .current, auxiliaryKey: ._current)
		self.previous = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .previous, auxiliaryKey: ._previous)
		self.requireBoth = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .requireBoth, auxiliaryKey: ._requireBoth)
		self.resultForCreate = try FHIRPrimitive<CriteriaNotExistsBehavior>(from: _container, forKeyIfPresent: .resultForCreate, auxiliaryKey: ._resultForCreate)
		self.resultForDelete = try FHIRPrimitive<CriteriaNotExistsBehavior>(from: _container, forKeyIfPresent: .resultForDelete, auxiliaryKey: ._resultForDelete)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try current?.encode(on: &_container, forKey: .current, auxiliaryKey: ._current)
		try previous?.encode(on: &_container, forKey: .previous, auxiliaryKey: ._previous)
		try requireBoth?.encode(on: &_container, forKey: .requireBoth, auxiliaryKey: ._requireBoth)
		try resultForCreate?.encode(on: &_container, forKey: .resultForCreate, auxiliaryKey: ._resultForCreate)
		try resultForDelete?.encode(on: &_container, forKey: .resultForDelete, auxiliaryKey: ._resultForDelete)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SubscriptionTopicTriggerQueryCriteria else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return current == _other.current
		    && previous == _other.previous
		    && requireBoth == _other.requireBoth
		    && resultForCreate == _other.resultForCreate
		    && resultForDelete == _other.resultForDelete
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(current)
		hasher.combine(previous)
		hasher.combine(requireBoth)
		hasher.combine(resultForCreate)
		hasher.combine(resultForDelete)
	}
}
