//
//  ObservationDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/ObservationDefinition)
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
 Definition of an observation.
 
 Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable
 health care service.
 */
open class ObservationDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .observationDefinition }
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Logical canonical URL to reference this ObservationDefinition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business identifier of the ObservationDefinition
	public var identifier: Identifier?
	
	/// Business version of the ObservationDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this ObservationDefinition (Human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Based on FHIR definition of another observation
	public var derivedFromCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Based on external definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// The current state of the ObservationDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// If for testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Type of subject for the defined observation
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Date status first applied
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
	public var specimen: Reference?
	
	/// Measurement device
	public var device: Reference?
	
	/// The preferred name to be used when reporting the observation results
	public var preferredReportName: FHIRPrimitive<FHIRString>?
	
	/// Characteristics of quantitative results
	public var quantitativeDetails: ObservationDefinitionQuantitativeDetails?
	
	/// Qualified range for continuous and ordinal observation results
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
	/// Value set of valid coded values for the observations conforming to this ObservationDefinition
	public var validCodedValueSet: Reference?
	
	/// Value set of normal coded values for the observations conforming to this ObservationDefinition
	public var normalCodedValueSet: Reference?
	
	/// Value set of abnormal coded values for the observations conforming to this ObservationDefinition
	public var abnormalCodedValueSet: Reference?
	
	/// Value set of critical coded values for the observations conforming to this ObservationDefinition
	public var criticalCodedValueSet: Reference?
	
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
							abnormalCodedValueSet: Reference? = nil,
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							bodySite: CodeableConcept? = nil,
							category: [CodeableConcept]? = nil,
							code: CodeableConcept,
							component: [ObservationDefinitionComponent]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							criticalCodedValueSet: Reference? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							derivedFromCanonical: [FHIRPrimitive<Canonical>]? = nil,
							derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							device: Reference? = nil,
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
							normalCodedValueSet: Reference? = nil,
							performerType: CodeableConcept? = nil,
							permittedDataType: [FHIRPrimitive<ObservationDataType>]? = nil,
							preferredReportName: FHIRPrimitive<FHIRString>? = nil,
							publisher: Reference? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							qualifiedInterval: [ObservationDefinitionQualifiedInterval]? = nil,
							quantitativeDetails: ObservationDefinitionQuantitativeDetails? = nil,
							specimen: Reference? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							subject: SubjectX? = nil,
							text: Narrative? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							useContext: [UsageContext]? = nil,
							validCodedValueSet: Reference? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(code: code, status: status)
		self.abnormalCodedValueSet = abnormalCodedValueSet
		self.approvalDate = approvalDate
		self.bodySite = bodySite
		self.category = category
		self.component = component
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.criticalCodedValueSet = criticalCodedValueSet
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
		self.normalCodedValueSet = normalCodedValueSet
		self.performerType = performerType
		self.permittedDataType = permittedDataType
		self.preferredReportName = preferredReportName
		self.publisher = publisher
		self.purpose = purpose
		self.qualifiedInterval = qualifiedInterval
		self.quantitativeDetails = quantitativeDetails
		self.specimen = specimen
		self.subject = subject
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.validCodedValueSet = validCodedValueSet
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case abnormalCodedValueSet
		case approvalDate; case _approvalDate
		case bodySite
		case category
		case code
		case component
		case contact
		case copyright; case _copyright
		case criticalCodedValueSet
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
		case normalCodedValueSet
		case performerType
		case permittedDataType; case _permittedDataType
		case preferredReportName; case _preferredReportName
		case publisher
		case purpose; case _purpose
		case qualifiedInterval
		case quantitativeDetails
		case specimen
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case title; case _title
		case url; case _url
		case useContext
		case validCodedValueSet
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.abnormalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .abnormalCodedValueSet)
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.component = try [ObservationDefinitionComponent](from: _container, forKeyIfPresent: .component)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.criticalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .criticalCodedValueSet)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Reference(from: _container, forKeyIfPresent: .device)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.hasMember = try [Reference](from: _container, forKeyIfPresent: .hasMember)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.multipleResultsAllowed = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .multipleResultsAllowed, auxiliaryKey: ._multipleResultsAllowed)
		self.normalCodedValueSet = try Reference(from: _container, forKeyIfPresent: .normalCodedValueSet)
		self.performerType = try CodeableConcept(from: _container, forKeyIfPresent: .performerType)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.preferredReportName = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preferredReportName, auxiliaryKey: ._preferredReportName)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.qualifiedInterval = try [ObservationDefinitionQualifiedInterval](from: _container, forKeyIfPresent: .qualifiedInterval)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		self.specimen = try Reference(from: _container, forKeyIfPresent: .specimen)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectCodeableConcept, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		self.subject = _t_subject
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.validCodedValueSet = try Reference(from: _container, forKeyIfPresent: .validCodedValueSet)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try abnormalCodedValueSet?.encode(on: &_container, forKey: .abnormalCodedValueSet)
		try approvalDate?.encode(on: &_container, forKey: .approvalDate, auxiliaryKey: ._approvalDate)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try component?.encode(on: &_container, forKey: .component)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try criticalCodedValueSet?.encode(on: &_container, forKey: .criticalCodedValueSet)
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
		try normalCodedValueSet?.encode(on: &_container, forKey: .normalCodedValueSet)
		try performerType?.encode(on: &_container, forKey: .performerType)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try preferredReportName?.encode(on: &_container, forKey: .preferredReportName, auxiliaryKey: ._preferredReportName)
		try publisher?.encode(on: &_container, forKey: .publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try qualifiedInterval?.encode(on: &_container, forKey: .qualifiedInterval)
		try quantitativeDetails?.encode(on: &_container, forKey: .quantitativeDetails)
		try specimen?.encode(on: &_container, forKey: .specimen)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = subject {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .subjectReference)
			}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try validCodedValueSet?.encode(on: &_container, forKey: .validCodedValueSet)
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
		return abnormalCodedValueSet == _other.abnormalCodedValueSet
		    && approvalDate == _other.approvalDate
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && component == _other.component
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && criticalCodedValueSet == _other.criticalCodedValueSet
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
		    && normalCodedValueSet == _other.normalCodedValueSet
		    && performerType == _other.performerType
		    && permittedDataType == _other.permittedDataType
		    && preferredReportName == _other.preferredReportName
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && qualifiedInterval == _other.qualifiedInterval
		    && quantitativeDetails == _other.quantitativeDetails
		    && specimen == _other.specimen
		    && status == _other.status
		    && subject == _other.subject
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && validCodedValueSet == _other.validCodedValueSet
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(abnormalCodedValueSet)
		hasher.combine(approvalDate)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(component)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(criticalCodedValueSet)
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
		hasher.combine(normalCodedValueSet)
		hasher.combine(performerType)
		hasher.combine(permittedDataType)
		hasher.combine(preferredReportName)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(qualifiedInterval)
		hasher.combine(quantitativeDetails)
		hasher.combine(specimen)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(validCodedValueSet)
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
	
	/// Qualified range for continuous and ordinal observation results
	public var qualifiedInterval: [ObservationDefinitionQualifiedInterval]?
	
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
							qualifiedInterval: [ObservationDefinitionQualifiedInterval]? = nil,
							quantitativeDetails: ObservationDefinitionQuantitativeDetails? = nil)
	{
		self.init(code: code)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.permittedDataType = permittedDataType
		self.qualifiedInterval = qualifiedInterval
		self.quantitativeDetails = quantitativeDetails
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case permittedDataType; case _permittedDataType
		case qualifiedInterval
		case quantitativeDetails
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.permittedDataType = try [FHIRPrimitive<ObservationDataType>](from: _container, forKeyIfPresent: .permittedDataType, auxiliaryKey: ._permittedDataType)
		self.qualifiedInterval = try [ObservationDefinitionQualifiedInterval](from: _container, forKeyIfPresent: .qualifiedInterval)
		self.quantitativeDetails = try ObservationDefinitionQuantitativeDetails(from: _container, forKeyIfPresent: .quantitativeDetails)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try permittedDataType?.encode(on: &_container, forKey: .permittedDataType, auxiliaryKey: ._permittedDataType)
		try qualifiedInterval?.encode(on: &_container, forKey: .qualifiedInterval)
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
		    && qualifiedInterval == _other.qualifiedInterval
		    && quantitativeDetails == _other.quantitativeDetails
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(permittedDataType)
		hasher.combine(qualifiedInterval)
		hasher.combine(quantitativeDetails)
	}
}

/**
 Qualified range for continuous and ordinal observation results.
 
 Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this
 ObservationDefinition.
 */
open class ObservationDefinitionQualifiedInterval: BackboneElement {
	
	/// The category of interval of values for continuous or ordinal observations conforming to this
	/// ObservationDefinition.
	public var category: FHIRPrimitive<ObservationRangeCategory>?
	
	/// The interval itself, for continuous or ordinal observations
	public var range: Range?
	
	/// Range context qualifier
	public var context: CodeableConcept?
	
	/// Targetted population of the range
	public var appliesTo: [CodeableConcept]?
	
	/// Sex of the population the range applies to.
	public var gender: FHIRPrimitive<AdministrativeGender>?
	
	/// Applicable age range, if relevant
	public var age: Range?
	
	/// Applicable gestational age range, if relevant
	public var gestationalAge: Range?
	
	/// Condition associated with the reference range
	public var condition: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							age: Range? = nil,
							appliesTo: [CodeableConcept]? = nil,
							category: FHIRPrimitive<ObservationRangeCategory>? = nil,
							condition: FHIRPrimitive<FHIRString>? = nil,
							context: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							gender: FHIRPrimitive<AdministrativeGender>? = nil,
							gestationalAge: Range? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							range: Range? = nil)
	{
		self.init()
		self.age = age
		self.appliesTo = appliesTo
		self.category = category
		self.condition = condition
		self.context = context
		self.`extension` = `extension`
		self.gender = gender
		self.gestationalAge = gestationalAge
		self.id = id
		self.modifierExtension = modifierExtension
		self.range = range
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case age
		case appliesTo
		case category; case _category
		case condition; case _condition
		case context
		case gender; case _gender
		case gestationalAge
		case range
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.age = try Range(from: _container, forKeyIfPresent: .age)
		self.appliesTo = try [CodeableConcept](from: _container, forKeyIfPresent: .appliesTo)
		self.category = try FHIRPrimitive<ObservationRangeCategory>(from: _container, forKeyIfPresent: .category, auxiliaryKey: ._category)
		self.condition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .condition, auxiliaryKey: ._condition)
		self.context = try CodeableConcept(from: _container, forKeyIfPresent: .context)
		self.gender = try FHIRPrimitive<AdministrativeGender>(from: _container, forKeyIfPresent: .gender, auxiliaryKey: ._gender)
		self.gestationalAge = try Range(from: _container, forKeyIfPresent: .gestationalAge)
		self.range = try Range(from: _container, forKeyIfPresent: .range)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try age?.encode(on: &_container, forKey: .age)
		try appliesTo?.encode(on: &_container, forKey: .appliesTo)
		try category?.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try condition?.encode(on: &_container, forKey: .condition, auxiliaryKey: ._condition)
		try context?.encode(on: &_container, forKey: .context)
		try gender?.encode(on: &_container, forKey: .gender, auxiliaryKey: ._gender)
		try gestationalAge?.encode(on: &_container, forKey: .gestationalAge)
		try range?.encode(on: &_container, forKey: .range)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ObservationDefinitionQualifiedInterval else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return age == _other.age
		    && appliesTo == _other.appliesTo
		    && category == _other.category
		    && condition == _other.condition
		    && context == _other.context
		    && gender == _other.gender
		    && gestationalAge == _other.gestationalAge
		    && range == _other.range
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(age)
		hasher.combine(appliesTo)
		hasher.combine(category)
		hasher.combine(condition)
		hasher.combine(context)
		hasher.combine(gender)
		hasher.combine(gestationalAge)
		hasher.combine(range)
	}
}

/**
 Characteristics of quantitative results.
 
 Characteristics for quantitative results of this observation.
 */
open class ObservationDefinitionQuantitativeDetails: BackboneElement {
	
	/// Customary unit for quantitative results
	public var customaryUnit: CodeableConcept?
	
	/// SI unit for quantitative results
	public var unit: CodeableConcept?
	
	/// SI to Customary unit conversion factor
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
							unit: CodeableConcept? = nil)
	{
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
