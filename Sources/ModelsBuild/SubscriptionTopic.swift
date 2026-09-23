//
//  SubscriptionTopic.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/SubscriptionTopic)
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
 The definition of a specific topic for triggering events within the Subscriptions framework.
 
 Describes a stream of resource state changes or events and annotated with labels useful to filter projections from this
 topic.
 */
public struct SubscriptionTopic: DomainResource {
	
	public static let resourceType: ResourceType = .subscriptionTopic
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When SubscriptionTopic is/was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Notice about intellectual property ownership, can include restrictions on use
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date status first applied
	public var date: FHIRPrimitive<DateTime>?
	
	/// Based on FHIR protocol or definition
	public var derivedFrom: [FHIRPrimitive<Canonical>]?
	
	/// Natural language description of the SubscriptionTopic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The effective date range for the SubscriptionTopic
	public var effectivePeriod: Period?
	
	/// If For testing only - never for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for subscription topic
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction of the SubscriptionTopic (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Date the Subscription Topic was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this subscription topic (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// The name of the individual or organization that published the SubscriptionTopic
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this SubscriptionTopic is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The current state of the SubscriptionTopic.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Name for this subscription topic (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Definition of a trigger for the subscription topic
	public var trigger: [SubscriptionTopicTrigger]?
	
	/// Canonical identifier for this subscription topic, represented as an absolute URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Business version of the subscription topic
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
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
		self.status = status
		self.text = text
		self.title = title
		self.trigger = trigger
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFrom; case _derivedFrom
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case jurisdiction
		case language; case _language
		case lastReviewDate; case _lastReviewDate
		case meta
		case modifierExtension
		case name; case _name
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case text
		case title; case _title
		case trigger
		case url; case _url
		case useContext
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFrom = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFrom, auxiliaryKey: ._derivedFrom)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.trigger = try [SubscriptionTopicTrigger](from: _container, forKeyIfPresent: .trigger)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		self.versionAlgorithm = try Self._decodeVersionAlgorithm(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom, auxiliaryKey: ._derivedFrom)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try trigger?.encode(on: &_container, forKey: .trigger)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
		switch _enum {
		case .coding(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeVersionAlgorithm(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> VersionAlgorithmX? {
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		return _t_versionAlgorithm
	}
}

/**
 Definition of a trigger for the subscription topic.
 
 A definition of a state change or event that triggers a notification based on the SubscriptionTopic. The criteria may
 be just a human readable description, or may contain a FHIRPath expression, query-based definition, or event coding.
 Multiple triggers are considered OR joined (e.g., an update matching ANY of the definitions will trigger a
 notification).
 */
public struct SubscriptionTopicTrigger: BackboneElement {
	
	/// Properties by which a Subscription can filter notifications based on this trigger
	public var canFilterBy: [SubscriptionTopicTriggerCanFilterBy]?
	
	/// Text representation of the resource trigger
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Event which can trigger a notification from the SubscriptionTopic
	public var event: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// FHIRPath based trigger rule
	public var fhirPathCriteria: FHIRPrimitive<FHIRString>?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Properties for describing the shape of notifications generated by this trigger
	public var notificationShape: [SubscriptionTopicTriggerNotificationShape]?
	
	/// Query based trigger rule
	public var queryCriteria: SubscriptionTopicTriggerQueryCriteria?
	
	/// Key Data Type, Resource (reference to definition), or relevant definition for this trigger
	public var resource: FHIRPrimitive<FHIRURI>
	
	/// The FHIR RESTful interaction which can be used to trigger a notification for the SubscriptionTopic. Multiple
	/// values are considered OR joined (e.g., CREATE or UPDATE). If not present, all supported interactions are
	/// assumed.
	/// Restricted to: ['create', 'update', 'delete']
	public var supportedInteraction: [FHIRPrimitive<FHIRRestfulInteractions>]?
	
	/// Designated initializer
	public init(
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
		self.canFilterBy = canFilterBy
		self.description_fhir = description_fhir
		self.event = event
		self.`extension` = `extension`
		self.fhirPathCriteria = fhirPathCriteria
		self.id = id
		self.modifierExtension = modifierExtension
		self.notificationShape = notificationShape
		self.queryCriteria = queryCriteria
		self.resource = resource
		self.supportedInteraction = supportedInteraction
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case canFilterBy
		case description_fhir = "description"; case _description_fhir = "_description"
		case event
		case `extension` = "extension"
		case fhirPathCriteria; case _fhirPathCriteria
		case id; case _id
		case modifierExtension
		case notificationShape
		case queryCriteria
		case resource; case _resource
		case supportedInteraction; case _supportedInteraction
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.canFilterBy = try [SubscriptionTopicTriggerCanFilterBy](from: _container, forKeyIfPresent: .canFilterBy)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.event = try CodeableConcept(from: _container, forKeyIfPresent: .event)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fhirPathCriteria = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.notificationShape = try [SubscriptionTopicTriggerNotificationShape](from: _container, forKeyIfPresent: .notificationShape)
		self.queryCriteria = try SubscriptionTopicTriggerQueryCriteria(from: _container, forKeyIfPresent: .queryCriteria)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .resource, auxiliaryKey: ._resource)
		self.supportedInteraction = try [FHIRPrimitive<FHIRRestfulInteractions>](from: _container, forKeyIfPresent: .supportedInteraction, auxiliaryKey: ._supportedInteraction)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try canFilterBy?.encode(on: &_container, forKey: .canFilterBy)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try event?.encode(on: &_container, forKey: .event)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fhirPathCriteria?.encode(on: &_container, forKey: .fhirPathCriteria, auxiliaryKey: ._fhirPathCriteria)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try notificationShape?.encode(on: &_container, forKey: .notificationShape)
		try queryCriteria?.encode(on: &_container, forKey: .queryCriteria)
		try resource.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try supportedInteraction?.encode(on: &_container, forKey: .supportedInteraction, auxiliaryKey: ._supportedInteraction)
	}
}

/**
 Properties by which a Subscription can filter notifications based on this trigger.
 
 List of properties by which Subscriptions can be filtered. May be defined Search Parameters (e.g., Encounter.patient)
 or parameters defined within this SubscriptionTopic context (e.g., hub.event).
 */
public struct SubscriptionTopicTriggerCanFilterBy: BackboneElement {
	
	/// Comparators allowed for the filter parameter.
	public var comparator: [FHIRPrimitive<SearchComparator>]?
	
	/// Description of this filter parameter
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Canonical URL for a filterParameter definition
	public var filterDefinition: FHIRPrimitive<FHIRURI>?
	
	/// Human-readable and computation-friendly name for a filter parameter usable by subscriptions on this topic, via
	/// Subscription.filterBy.filterParameter
	public var filterParameter: FHIRPrimitive<FHIRString>
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Modifiers allowed for the filter parameter.
	public var modifier: [FHIRPrimitive<SearchModifierCode>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// URL of the triggering Resource that this filter applies to
	public var resource: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
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
		self.comparator = comparator
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.filterDefinition = filterDefinition
		self.filterParameter = filterParameter
		self.id = id
		self.modifier = modifier
		self.modifierExtension = modifierExtension
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case comparator; case _comparator
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case filterDefinition; case _filterDefinition
		case filterParameter; case _filterParameter
		case id; case _id
		case modifier; case _modifier
		case modifierExtension
		case resource; case _resource
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.comparator = try [FHIRPrimitive<SearchComparator>](from: _container, forKeyIfPresent: .comparator, auxiliaryKey: ._comparator)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.filterDefinition = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .filterDefinition, auxiliaryKey: ._filterDefinition)
		self.filterParameter = try FHIRPrimitive<FHIRString>(from: _container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifier = try [FHIRPrimitive<SearchModifierCode>](from: _container, forKeyIfPresent: .modifier, auxiliaryKey: ._modifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try comparator?.encode(on: &_container, forKey: .comparator, auxiliaryKey: ._comparator)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try filterDefinition?.encode(on: &_container, forKey: .filterDefinition, auxiliaryKey: ._filterDefinition)
		try filterParameter.encode(on: &_container, forKey: .filterParameter, auxiliaryKey: ._filterParameter)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifier?.encode(on: &_container, forKey: .modifier, auxiliaryKey: ._modifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
	}
}

/**
 Properties for describing the shape of notifications generated by this trigger.
 
 List of properties to describe the shape (e.g., resources) included in notifications from this trigger.
 */
public struct SubscriptionTopicTriggerNotificationShape: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Include directives, rooted in the resource for this shape
	public var include: [FHIRPrimitive<FHIRString>]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Query describing data relevant to this notification
	public var relatedQuery: [SubscriptionTopicTriggerNotificationShapeRelatedQuery]?
	
	/// URL of the key definition that is the focus in a notification shape
	public var resource: FHIRPrimitive<FHIRURI>
	
	/// Reverse include directives, rooted in the resource for this shape
	public var revInclude: [FHIRPrimitive<FHIRString>]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		include: [FHIRPrimitive<FHIRString>]? = nil,
		modifierExtension: [Extension]? = nil,
		relatedQuery: [SubscriptionTopicTriggerNotificationShapeRelatedQuery]? = nil,
		resource: FHIRPrimitive<FHIRURI>,
		revInclude: [FHIRPrimitive<FHIRString>]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.include = include
		self.modifierExtension = modifierExtension
		self.relatedQuery = relatedQuery
		self.resource = resource
		self.revInclude = revInclude
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case include; case _include
		case modifierExtension
		case relatedQuery
		case resource; case _resource
		case revInclude; case _revInclude
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.include = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .include, auxiliaryKey: ._include)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.relatedQuery = try [SubscriptionTopicTriggerNotificationShapeRelatedQuery](from: _container, forKeyIfPresent: .relatedQuery)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .resource, auxiliaryKey: ._resource)
		self.revInclude = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .revInclude, auxiliaryKey: ._revInclude)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try include?.encode(on: &_container, forKey: .include, auxiliaryKey: ._include)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try relatedQuery?.encode(on: &_container, forKey: .relatedQuery)
		try resource.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try revInclude?.encode(on: &_container, forKey: .revInclude, auxiliaryKey: ._revInclude)
	}
}

/**
 Query describing data relevant to this notification.
 
 Queries and codes that could be included with notifications of this shape. Servers MAY include these queries if
 supported and desired in the workflow.
 */
public struct SubscriptionTopicTriggerNotificationShapeRelatedQuery: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Query to perform
	public var query: FHIRPrimitive<FHIRString>
	
	/// Coded information describing the type of data this query provides
	public var queryType: Coding?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		query: FHIRPrimitive<FHIRString>,
		queryType: Coding? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.query = query
		self.queryType = queryType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case query; case _query
		case queryType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.query = try FHIRPrimitive<FHIRString>(from: _container, forKey: .query, auxiliaryKey: ._query)
		self.queryType = try Coding(from: _container, forKeyIfPresent: .queryType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try query.encode(on: &_container, forKey: .query, auxiliaryKey: ._query)
		try queryType?.encode(on: &_container, forKey: .queryType)
	}
}

/**
 Query based trigger rule.
 
 The FHIR query based rules that the server should use to determine when to trigger a notification for this subscription
 topic.
 */
public struct SubscriptionTopicTriggerQueryCriteria: BackboneElement {
	
	/// Rule applied to current resource state
	public var current: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Rule applied to previous resource state
	public var previous: FHIRPrimitive<FHIRString>?
	
	/// Both must be true flag
	public var requireBoth: FHIRPrimitive<FHIRBool>?
	
	/// For `create` interactions, should the `previous` criteria count as an automatic pass or an automatic fail. If
	/// not present, the testing behavior during `create` interactions is unspecified (server discretion).
	public var resultForCreate: FHIRPrimitive<CriteriaNotExistsBehavior>?
	
	/// For 'delete' interactions, should the 'current' query criteria count as an automatic pass or an automatic fail.
	/// If not present, the testing behavior during `delete` interactions is unspecified (server discretion).
	public var resultForDelete: FHIRPrimitive<CriteriaNotExistsBehavior>?
	
	/// Designated initializer
	public init(
		current: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		previous: FHIRPrimitive<FHIRString>? = nil,
		requireBoth: FHIRPrimitive<FHIRBool>? = nil,
		resultForCreate: FHIRPrimitive<CriteriaNotExistsBehavior>? = nil,
		resultForDelete: FHIRPrimitive<CriteriaNotExistsBehavior>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case previous; case _previous
		case requireBoth; case _requireBoth
		case resultForCreate; case _resultForCreate
		case resultForDelete; case _resultForDelete
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.current = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .current, auxiliaryKey: ._current)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.previous = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .previous, auxiliaryKey: ._previous)
		self.requireBoth = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .requireBoth, auxiliaryKey: ._requireBoth)
		self.resultForCreate = try FHIRPrimitive<CriteriaNotExistsBehavior>(from: _container, forKeyIfPresent: .resultForCreate, auxiliaryKey: ._resultForCreate)
		self.resultForDelete = try FHIRPrimitive<CriteriaNotExistsBehavior>(from: _container, forKeyIfPresent: .resultForDelete, auxiliaryKey: ._resultForDelete)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try current?.encode(on: &_container, forKey: .current, auxiliaryKey: ._current)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try previous?.encode(on: &_container, forKey: .previous, auxiliaryKey: ._previous)
		try requireBoth?.encode(on: &_container, forKey: .requireBoth, auxiliaryKey: ._requireBoth)
		try resultForCreate?.encode(on: &_container, forKey: .resultForCreate, auxiliaryKey: ._resultForCreate)
		try resultForDelete?.encode(on: &_container, forKey: .resultForDelete, auxiliaryKey: ._resultForDelete)
	}
}
