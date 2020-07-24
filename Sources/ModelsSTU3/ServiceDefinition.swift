//
//  ServiceDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ServiceDefinition)
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
 A description of decision support service functionality.
 
 The ServiceDefinition describes a unit of decision support functionality that is made available as a service, such as
 immunization modules or drug-drug interaction checking.
 */
open class ServiceDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .serviceDefinition }
	
	/// Logical URI to reference this service definition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the service definition
	public var identifier: [Identifier]?
	
	/// Business version of the service definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this service definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this service definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this service definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the service definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Why this service definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Describes the clinical usage of the module
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// When the service definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the service definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the service definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for service definition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// E.g. Education, Treatment, Assessment, etc
	public var topic: [CodeableConcept]?
	
	/// A content contributor
	public var contributor: [Contributor]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Additional documentation, citations, etc
	public var relatedArtifact: [RelatedArtifact]?
	
	/// "when" the module should be invoked
	public var trigger: [TriggerDefinition]?
	
	/// What data is used by the module
	public var dataRequirement: [DataRequirement]?
	
	/// Operation to invoke
	public var operationDefinition: Reference?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							contributor: [Contributor]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							dataRequirement: [DataRequirement]? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
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
							operationDefinition: Reference? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							topic: [CodeableConcept]? = nil,
							trigger: [TriggerDefinition]? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							usage: FHIRPrimitive<FHIRString>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.approvalDate = approvalDate
		self.contact = contact
		self.contained = contained
		self.contributor = contributor
		self.copyright = copyright
		self.dataRequirement = dataRequirement
		self.date = date
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
		self.operationDefinition = operationDefinition
		self.publisher = publisher
		self.purpose = purpose
		self.relatedArtifact = relatedArtifact
		self.text = text
		self.title = title
		self.topic = topic
		self.trigger = trigger
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case contact
		case contributor
		case copyright; case _copyright
		case dataRequirement
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case name; case _name
		case operationDefinition
		case publisher; case _publisher
		case purpose; case _purpose
		case relatedArtifact
		case status; case _status
		case title; case _title
		case topic
		case trigger
		case url; case _url
		case usage; case _usage
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contributor = try [Contributor](from: _container, forKeyIfPresent: .contributor)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.operationDefinition = try Reference(from: _container, forKeyIfPresent: .operationDefinition)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.trigger = try [TriggerDefinition](from: _container, forKeyIfPresent: .trigger)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.usage = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .usage, auxiliaryKey: ._usage)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try contact?.encode(on: &_container, forKey: .contact)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try operationDefinition?.encode(on: &_container, forKey: .operationDefinition)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try trigger?.encode(on: &_container, forKey: .trigger)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ServiceDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && contact == _other.contact
		    && contributor == _other.contributor
		    && copyright == _other.copyright
		    && dataRequirement == _other.dataRequirement
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && name == _other.name
		    && operationDefinition == _other.operationDefinition
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && relatedArtifact == _other.relatedArtifact
		    && status == _other.status
		    && title == _other.title
		    && topic == _other.topic
		    && trigger == _other.trigger
		    && url == _other.url
		    && usage == _other.usage
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(contact)
		hasher.combine(contributor)
		hasher.combine(copyright)
		hasher.combine(dataRequirement)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(name)
		hasher.combine(operationDefinition)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(relatedArtifact)
		hasher.combine(status)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(trigger)
		hasher.combine(url)
		hasher.combine(usage)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}
