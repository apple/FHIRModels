//
//  ObservationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
//  Copyright 2022 Apple Inc.
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
 Definition of an observation.
 
 Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable
 health care service.
 */
open class ObservationDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .observationDefinition }
	
	/// Logical canonical URL to reference this ObservationDefinition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business identifier of the ObservationDefinition
	public var identifier: Identifier?
	
	/// Business version of the ObservationDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this ObservationDefinition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this ObservationDefinition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The current state of the ObservationDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// The name of the individual or organization that published the ObservationDefinition
	public var publisher: Reference?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the ObservationDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for this ObservationDefinition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this ObservationDefinition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When ObservationDefinition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Date on which the asset content was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// The effective date range for the ObservationDefinition
	public var effectivePeriod: Period?
	
	/// Based on FHIR definition of another observation
	public var derivedFromCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Based on external definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Type of subject for the defined observation
	public var subject: [CodeableConcept]?
	
	/// Desired kind of performer for such kind of observation
	public var performerType: CodeableConcept?
	
	/// General type of observation
	public var category: [CodeableConcept]?
	
	/// Type of observation
	public var code: CodeableConcept
	
	/// The data types allowed for the value element of the instance observations conforming to this
	/// ObservationDefinition.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Multiple results allowed for conforming observations
	public var multipleResultsAllowed: FHIRPrimitive<FHIRBool>?
	
	/// Body part to be observed
	public var bodySite: CodeableConcept?
	
	/// Method used to produce the observation
	public var method: CodeableConcept?
	
	/// Kind of specimen used by this type of observation
	public var specimen: [Reference]?
	
	/// Measurement device or model of device
	public var device: [Reference]?
	
	/// The preferred name to be used when reporting the observation results
	public var preferredReportName: FHIRPrimitive<FHIRString>?
	
	/// Characteristics of quantitative results
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Set of qualified values for observation results
	public var qualifiedValue: [ObservationDefinitionQualifiedValue]?
	
	/// Definitions of related resources belonging to this kind of observation group
	public var hasMember: [Reference]?
	
	/// Component results
	public var component: [ObservationDefinitionComponent]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<PublicationStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		bodySite: CodeableConcept? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		component: [ObservationDefinitionComponent]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFromCanonical: [FHIRPrimitive<Canonical>]? = nil,
		derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		device: [Reference]? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		hasMember: [Reference]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		multipleResultsAllowed: FHIRPrimitive<FHIRBool>? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		performerType: CodeableConcept? = nil,
		permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
		preferredReportName: FHIRPrimitive<FHIRString>? = nil,
		publisher: Reference? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		qualifiedValue: [ObservationDefinitionQualifiedValue]? = nil,
		quantitativeDetails: ObservationDefinitionQuantitativeDetails? = nil,
		specimen: [Reference]? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: [CodeableConcept]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(code: code, status: status)
		self.approvalDate = approvalDate
		self.bodySite = bodySite
		self.category = category
		self.component = component
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.date = date
		self.derivedFromCanonical = derivedFromCanonical
		self.derivedFromUri = derivedFromUri
		self.description_fhir = description_fhir
		self.device = device
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.hasMember = hasMember
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.meta = meta
		self.method = method
		self.modifierExtension = modifierExtension
		self.multipleResultsAllowed = multipleResultsAllowed
		self.name = name
		self.performerType = performerType
		self.permittedDataType = permittedDataType
		self.preferredReportName = preferredReportName
		self.publisher = publisher
		self.purpose = purpose
		self.qualifiedValue = qualifiedValue
		self.quantitativeDetails = quantitativeDetails
		self.specimen = specimen
		self.subject = subject
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case bodySite
		case category
		case code
		case component
		case contact
		case copyright; case _copyright
		case date; case _date
		case derivedFromCanonical; case _derivedFromCanonical
		case derivedFromUri; case _derivedFromUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case device
		case effectivePeriod
		case experimental; case _experimental
		case hasMember
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case method
		case multipleResultsAllowed; case _multipleResultsAllowed
		case name; case _name
		case performerType
		case permittedDataType; case _permittedDataType
		case preferredReportName; case _preferredReportName
		case publisher
		case purpose; case _purpose
		case qualifiedValue
		case quantitativeDetails
		case specimen
		case status; case _status
		case subject
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
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.component = try [ObservationDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try [Reference](from: _container, forKeyIfPresent: .device)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.hasMember = try [Reference](from: _container, forKeyIfPresent: .hasMember)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.multipleResultsAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.preferredReportName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preferredReportName, auxiliaryKey: ._preferredReportName)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.qualifiedValue = try [ObservationDefinitionQualifiedValue](from: _container, forKeyIfPresent: .qualifiedValue)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		self.specimen = try [Reference](from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try [CodeableConcept](from: _container, forKeyIfPresent: .subject)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromCanonical?.encode(on: &_container, forKey: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try device?.encode(on: &_container, forKey: .device)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try hasMember?.encode(on: &_container, forKey: .hasMember)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try method?.encode(on: &_container, forKey: .method)
		try multipleResultsAllowed?.encode(on: &_container, forKey: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try preferredReportName?.encode(on: &_container, forKey: .preferredReportName, auxiliaryKey: ._preferredReportName)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try qualifiedValue?.encode(on: &_container, forKey: .qualifiedValue)
		try quantitativeDetails?.encode(on: &_container, forKey: .quantitativeDetails)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && component == _other.component
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && derivedFromCanonical == _other.derivedFromCanonical
		    && derivedFromUri == _other.derivedFromUri
		    && description_fhir == _other.description_fhir
		    && device == _other.device
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && hasMember == _other.hasMember
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && method == _other.method
		    && multipleResultsAllowed == _other.multipleResultsAllowed
		    && name == _other.name
		    && performerType == _other.performerType
		    && permittedDataType == _other.permittedDataType
		    && preferredReportName == _other.preferredReportName
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && qualifiedValue == _other.qualifiedValue
		    && quantitativeDetails == _other.quantitativeDetails
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(component)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(derivedFromCanonical)
		hasher.combine(derivedFromUri)
		hasher.combine(description_fhir)
		hasher.combine(device)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(hasMember)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(method)
		hasher.combine(multipleResultsAllowed)
		hasher.combine(name)
		hasher.combine(performerType)
		hasher.combine(permittedDataType)
		hasher.combine(preferredReportName)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(qualifiedValue)
		hasher.combine(quantitativeDetails)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Component results.
 
 Some observations have multiple component observations, expressed as separate code value pairs.
 */
open class ObservationDefinitionComponent: BackboneElement {
	
	/// Type of observation
	public var code: CodeableConcept
	
	/// The data types allowed for the value element of the instance of this component observations.
	public var permittedDataType: [FHIRPrimitive<ObservationDataType>]?
	
	/// Characteristics of quantitative results
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Set of qualified values for observation results
	public var qualifiedValue: [ObservationDefinitionQualifiedValue]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
		qualifiedValue: [ObservationDefinitionQualifiedValue]? = nil,
		quantitativeDetails: ObservationDefinitionQuantitativeDetails? = nil
	) {
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.permittedDataType = permittedDataType
		self.qualifiedValue = qualifiedValue
		self.quantitativeDetails = quantitativeDetails
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case permittedDataType; case _permittedDataType
		case qualifiedValue
		case quantitativeDetails
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.qualifiedValue = try [ObservationDefinitionQualifiedValue](from: _container, forKeyIfPresent: .qualifiedValue)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try qualifiedValue?.encode(on: &_container, forKey: .qualifiedValue)
		try quantitativeDetails?.encode(on: &_container, forKey: .quantitativeDetails)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && permittedDataType == _other.permittedDataType
		    && qualifiedValue == _other.qualifiedValue
		    && quantitativeDetails == _other.quantitativeDetails
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(permittedDataType)
		hasher.combine(qualifiedValue)
		hasher.combine(quantitativeDetails)
	}
}

/**
 Set of qualified values for observation results.
 
 A set of qualified values associated with a context and a set of conditions -  provides a range for quantitative and
 ordinal observations and a collection of value sets for qualitative observations.
 */
open class ObservationDefinitionQualifiedValue: BackboneElement {
	
	/// Context qualifier for the set of qualified values
	public var context: CodeableConcept?
	
	/// Targetted population for the set of qualified values
	public var appliesTo: [CodeableConcept]?
	
	/// The gender this  set of qualified values applies to.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Applicable age range for the set of qualified values
	public var age: Range?
	
	/// Applicable gestational age range for the set of qualified values
	public var gestationalAge: Range?
	
	/// Condition associated with the set of qualified values
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// The category of range of values for continuous or ordinal observations that match the criteria of this set of
	/// qualified values.
	public var rangeCategory: FHIRPrimitive<ObservationRangeCategory>?
	
	/// The range for continuous or ordinal observations
	public var range: Range?
	
	/// Value set of valid coded values as part of this set of qualified values
	public var validCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Value set of normal coded values as part of this set of qualified values
	public var normalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Value set of abnormal coded values as part of this set of qualified values
	public var abnormalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Value set of critical coded values as part of this set of qualified values
	public var criticalCodedValueSet: FHIRPrimitive<Canonical>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		abnormalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		age: Range? = nil,
		appliesTo: [CodeableConcept]? = nil,
		condition: FHIRPrimitive<FHIRString>? = nil,
		context: CodeableConcept? = nil,
		criticalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		`extension`: [Extension]? = nil,
		gender: FHIRPrimitive<AdministrativeGender>? = nil,
		gestationalAge: Range? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		normalCodedValueSet: FHIRPrimitive<Canonical>? = nil,
		range: Range? = nil,
		rangeCategory: FHIRPrimitive<ObservationRangeCategory>? = nil,
		validCodedValueSet: FHIRPrimitive<Canonical>? = nil
	) {
		self.init()
		self.abnormalCodedValueSet = abnormalCodedValueSet
		self.age = age
		self.appliesTo = appliesTo
		self.condition = condition
		self.context = context
		self.criticalCodedValueSet = criticalCodedValueSet
		self.`extension` = `extension`
		self.gender = gender
		self.gestationalAge = gestationalAge
		self.id = id
		self.modifierExtension = modifierExtension
		self.normalCodedValueSet = normalCodedValueSet
		self.range = range
		self.rangeCategory = rangeCategory
		self.validCodedValueSet = validCodedValueSet
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abnormalCodedValueSet; case _abnormalCodedValueSet
		case age
		case appliesTo
		case condition; case _condition
		case context
		case criticalCodedValueSet; case _criticalCodedValueSet
		case gender; case _gender
		case gestationalAge
		case normalCodedValueSet; case _normalCodedValueSet
		case range
		case rangeCategory; case _rangeCategory
		case validCodedValueSet; case _validCodedValueSet
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abnormalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .abnormalCodedValueSet, auxiliaryKey: ._abnormalCodedValueSet)
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try CodeableConcept(from: _container, forKeyIfPresent: .context)
		self.criticalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .criticalCodedValueSet, auxiliaryKey: ._criticalCodedValueSet)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.gestationalAge = try Range(from: _container, forKeyIfPresent: .gestationalAge)
		self.normalCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .normalCodedValueSet, auxiliaryKey: ._normalCodedValueSet)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		self.rangeCategory = try FHIRPrimitive<ObservationRangeCategory>(from: _container, forKeyIfPresent: .rangeCategory, auxiliaryKey: ._rangeCategory)
		self.validCodedValueSet = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .validCodedValueSet, auxiliaryKey: ._validCodedValueSet)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abnormalCodedValueSet?.encode(on: &_container, forKey: .abnormalCodedValueSet, auxiliaryKey: ._abnormalCodedValueSet)
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try criticalCodedValueSet?.encode(on: &_container, forKey: .criticalCodedValueSet, auxiliaryKey: ._criticalCodedValueSet)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try gestationalAge?.encode(on: &_container, forKey: .gestationalAge)
		try normalCodedValueSet?.encode(on: &_container, forKey: .normalCodedValueSet, auxiliaryKey: ._normalCodedValueSet)
		try range?.encode(on: &_container, forKey: .range)
		try rangeCategory?.encode(on: &_container, forKey: .rangeCategory, auxiliaryKey: ._rangeCategory)
		try validCodedValueSet?.encode(on: &_container, forKey: .validCodedValueSet, auxiliaryKey: ._validCodedValueSet)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionQualifiedValue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return abnormalCodedValueSet == _other.abnormalCodedValueSet
		    && age == _other.age
		    && appliesTo == _other.appliesTo
		    && condition == _other.condition
		    && context == _other.context
		    && criticalCodedValueSet == _other.criticalCodedValueSet
		    && gender == _other.gender
		    && gestationalAge == _other.gestationalAge
		    && normalCodedValueSet == _other.normalCodedValueSet
		    && range == _other.range
		    && rangeCategory == _other.rangeCategory
		    && validCodedValueSet == _other.validCodedValueSet
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abnormalCodedValueSet)
		hasher.combine(age)
		hasher.combine(appliesTo)
		hasher.combine(condition)
		hasher.combine(context)
		hasher.combine(criticalCodedValueSet)
		hasher.combine(gender)
		hasher.combine(gestationalAge)
		hasher.combine(normalCodedValueSet)
		hasher.combine(range)
		hasher.combine(rangeCategory)
		hasher.combine(validCodedValueSet)
	}
}

/**
 Characteristics of quantitative results.
 
 Characteristics for quantitative results of observations conforming to this ObservationDefinition.
 */
open class ObservationDefinitionQuantitativeDetails: BackboneElement {
	
	/// Primary unit for quantitative results
	public var unit: CodeableConcept?
	
	/// Customary (secondary) unit for quantitative results
	public var customaryUnit: CodeableConcept?
	
	/// Primary to secondary unit conversion factor
	public var conversionFactor: FHIRPrimitive<FHIRDecimal>?
	
	/// Decimal precision of observation quantitative results
	public var decimalPrecision: FHIRPrimitive<FHIRInteger>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		conversionFactor: FHIRPrimitive<FHIRDecimal>? = nil,
		customaryUnit: CodeableConcept? = nil,
		decimalPrecision: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		unit: CodeableConcept? = nil
	) {
		self.init()
		self.conversionFactor = conversionFactor
		self.customaryUnit = customaryUnit
		self.decimalPrecision = decimalPrecision
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case conversionFactor; case _conversionFactor
		case customaryUnit
		case decimalPrecision; case _decimalPrecision
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.conversionFactor = try FHIRPrimitive<FHIRDecimal>(from: _container, forKeyIfPresent: .conversionFactor, auxiliaryKey: ._conversionFactor)
		self.customaryUnit = try CodeableConcept(from: _container, forKeyIfPresent: .customaryUnit)
		self.decimalPrecision = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try conversionFactor?.encode(on: &_container, forKey: .conversionFactor, auxiliaryKey: ._conversionFactor)
		try customaryUnit?.encode(on: &_container, forKey: .customaryUnit)
		try decimalPrecision?.encode(on: &_container, forKey: .decimalPrecision, auxiliaryKey: ._decimalPrecision)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionQuantitativeDetails else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return conversionFactor == _other.conversionFactor
		    && customaryUnit == _other.customaryUnit
		    && decimalPrecision == _other.decimalPrecision
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(conversionFactor)
		hasher.combine(customaryUnit)
		hasher.combine(decimalPrecision)
		hasher.combine(unit)
	}
}
