//
//  SpecimenDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition)
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
 Kind of specimen.
 
 A kind of specimen with associated set of requirements.
 */
public struct SpecimenDefinition: DomainResource {
	
	public static let resourceType: ResourceType = .specimenDefinition
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Equatable, Hashable, Sendable {
		indirect case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// When SpecimenDefinition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// Specimen collection procedure
	public var collection: [CodeableConcept]?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// Date status first applied
	public var date: FHIRPrimitive<DateTime>?
	
	/// Based on FHIR definition of another SpecimenDefinition
	public var derivedFromCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Based on external definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Natural language description of the SpecimenDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The effective date range for the SpecimenDefinition
	public var effectivePeriod: Period?
	
	/// If this SpecimenDefinition is not for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Intended jurisdiction for this SpecimenDefinition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The date on which the asset content was last reviewed by the publisher
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Name for this {{title}} (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Patient preparation for collection
	public var patientPreparation: [CodeableConcept]?
	
	/// The name of the individual or organization that published the SpecimenDefinition
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Why this SpecimenDefinition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// The current state of theSpecimenDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// Type of subject for specimen collection
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Time aspect for collection
	public var timeAspect: FHIRPrimitive<FHIRString>?
	
	/// Name for this SpecimenDefinition (Human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Kind of material to collect
	public var typeCollected: CodeableConcept?
	
	/// Specimen in container intended for testing by lab
	public var typeTested: [SpecimenDefinitionTypeTested]?
	
	/// Logical canonical URL to reference this SpecimenDefinition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Business version of the SpecimenDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Designated initializer
	public init(
		approvalDate: FHIRPrimitive<FHIRDate>? = nil,
		collection: [CodeableConcept]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		derivedFromCanonical: [FHIRPrimitive<Canonical>]? = nil,
		derivedFromUri: [FHIRPrimitive<FHIRURI>]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		effectivePeriod: Period? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		patientPreparation: [CodeableConcept]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		subject: SubjectX? = nil,
		text: Narrative? = nil,
		timeAspect: FHIRPrimitive<FHIRString>? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		typeCollected: CodeableConcept? = nil,
		typeTested: [SpecimenDefinitionTypeTested]? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.approvalDate = approvalDate
		self.collection = collection
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.derivedFromCanonical = derivedFromCanonical
		self.derivedFromUri = derivedFromUri
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
		self.patientPreparation = patientPreparation
		self.publisher = publisher
		self.purpose = purpose
		self.status = status
		self.subject = subject
		self.text = text
		self.timeAspect = timeAspect
		self.title = title
		self.typeCollected = typeCollected
		self.typeTested = typeTested
		self.url = url
		self.useContext = useContext
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case approvalDate; case _approvalDate
		case collection
		case contact
		case contained
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case derivedFromCanonical; case _derivedFromCanonical
		case derivedFromUri; case _derivedFromUri
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
		case patientPreparation
		case publisher; case _publisher
		case purpose; case _purpose
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case text
		case timeAspect; case _timeAspect
		case title; case _title
		case typeCollected
		case typeTested
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
		self.collection = try [CodeableConcept](from: _container, forKeyIfPresent: .collection)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.patientPreparation = try [CodeableConcept](from: _container, forKeyIfPresent: .patientPreparation)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Self._decodeSubject(from: _container)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.timeAspect = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .timeAspect, auxiliaryKey: ._timeAspect)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.typeCollected = try CodeableConcept(from: _container, forKeyIfPresent: .typeCollected)
		self.typeTested = try [SpecimenDefinitionTypeTested](from: _container, forKeyIfPresent: .typeTested)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
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
		try collection?.encode(on: &_container, forKey: .collection)
		try contact?.encode(on: &_container, forKey: .contact)
		try contained?.encode(on: &_container, forKey: .contained)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromCanonical?.encode(on: &_container, forKey: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
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
		try patientPreparation?.encode(on: &_container, forKey: .patientPreparation)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = subject {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .subjectCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .subjectReference)
		}
		}
		try text?.encode(on: &_container, forKey: .text)
		try timeAspect?.encode(on: &_container, forKey: .timeAspect, auxiliaryKey: ._timeAspect)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try typeCollected?.encode(on: &_container, forKey: .typeCollected)
		try typeTested?.encode(on: &_container, forKey: .typeTested)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
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
	
	private static func _decodeSubject(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SubjectX? {
		var _t_subject: SubjectX? = nil
		if let subjectCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .subjectCodeableConcept) {
			_t_subject = .codeableConcept(subjectCodeableConcept)
		}
		if let subjectReference = try Reference(from: _container, forKeyIfPresent: .subjectReference) {
			if _t_subject != nil {
				throw DecodingError.dataCorruptedError(forKey: .subjectReference, in: _container, debugDescription: "More than one value provided for \"subject\"")
			}
			_t_subject = .reference(subjectReference)
		}
		return _t_subject
	}
	
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
 Specimen in container intended for testing by lab.
 
 Specimen conditioned in a container as expected by the testing laboratory.
 */
public struct SpecimenDefinitionTypeTested: BackboneElement {
	
	/// The specimen's container
	public var container: SpecimenDefinitionTypeTestedContainer?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Specimen handling before testing
	public var handling: [SpecimenDefinitionTypeTestedHandling]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Primary or secondary specimen
	public var isDerived: FHIRPrimitive<FHIRBool>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The preference for this type of conditioned specimen.
	public var preference: FHIRPrimitive<SpecimenContainedPreference>
	
	/// Criterion specified for specimen rejection
	public var rejectionCriterion: [CodeableConcept]?
	
	/// Requirements for specimen delivery and special handling
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// The usual time for retaining this kind of specimen
	public var retentionTime: Duration?
	
	/// Specimen for single use only
	public var singleUse: FHIRPrimitive<FHIRBool>?
	
	/// Where the specimen will be tested
	public var testingDestination: [CodeableConcept]?
	
	/// Type of intended specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		container: SpecimenDefinitionTypeTestedContainer? = nil,
		`extension`: [Extension]? = nil,
		handling: [SpecimenDefinitionTypeTestedHandling]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		isDerived: FHIRPrimitive<FHIRBool>? = nil,
		modifierExtension: [Extension]? = nil,
		preference: FHIRPrimitive<SpecimenContainedPreference>,
		rejectionCriterion: [CodeableConcept]? = nil,
		requirement: FHIRPrimitive<FHIRString>? = nil,
		retentionTime: Duration? = nil,
		singleUse: FHIRPrimitive<FHIRBool>? = nil,
		testingDestination: [CodeableConcept]? = nil,
		type: CodeableConcept? = nil
	) {
		self.container = container
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.isDerived = isDerived
		self.modifierExtension = modifierExtension
		self.preference = preference
		self.rejectionCriterion = rejectionCriterion
		self.requirement = requirement
		self.retentionTime = retentionTime
		self.singleUse = singleUse
		self.testingDestination = testingDestination
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case container
		case `extension` = "extension"
		case handling
		case id; case _id
		case isDerived; case _isDerived
		case modifierExtension
		case preference; case _preference
		case rejectionCriterion
		case requirement; case _requirement
		case retentionTime
		case singleUse; case _singleUse
		case testingDestination
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.container = try SpecimenDefinitionTypeTestedContainer(from: _container, forKeyIfPresent: .container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.handling = try [SpecimenDefinitionTypeTestedHandling](from: _container, forKeyIfPresent: .handling)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.isDerived = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDerived, auxiliaryKey: ._isDerived)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preference = try FHIRPrimitive<SpecimenContainedPreference>(from: _container, forKey: .preference, auxiliaryKey: ._preference)
		self.rejectionCriterion = try [CodeableConcept](from: _container, forKeyIfPresent: .rejectionCriterion)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.retentionTime = try Duration(from: _container, forKeyIfPresent: .retentionTime)
		self.singleUse = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .singleUse, auxiliaryKey: ._singleUse)
		self.testingDestination = try [CodeableConcept](from: _container, forKeyIfPresent: .testingDestination)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try container?.encode(on: &_container, forKey: .container)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try handling?.encode(on: &_container, forKey: .handling)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try isDerived?.encode(on: &_container, forKey: .isDerived, auxiliaryKey: ._isDerived)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preference.encode(on: &_container, forKey: .preference, auxiliaryKey: ._preference)
		try rejectionCriterion?.encode(on: &_container, forKey: .rejectionCriterion)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try retentionTime?.encode(on: &_container, forKey: .retentionTime)
		try singleUse?.encode(on: &_container, forKey: .singleUse, auxiliaryKey: ._singleUse)
		try testingDestination?.encode(on: &_container, forKey: .testingDestination)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 The specimen's container.
 */
public struct SpecimenDefinitionTypeTestedContainer: BackboneElement {
	
	/// All possible types for "minimumVolume[x]"
	public enum MinimumVolumeX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Additive associated with container
	public var additive: [SpecimenDefinitionTypeTestedContainerAdditive]?
	
	/// Color of container cap
	public var cap: CodeableConcept?
	
	/// The capacity of this kind of container
	public var capacity: Quantity?
	
	/// The description of the kind of container
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The material type used for the container
	public var material: CodeableConcept?
	
	/// Minimum volume
	/// One of `minimumVolume[x]`
	public var minimumVolume: MinimumVolumeX?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Special processing applied to the container for this specimen type
	public var preparation: FHIRPrimitive<FHIRString>?
	
	/// Kind of container associated with the kind of specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		additive: [SpecimenDefinitionTypeTestedContainerAdditive]? = nil,
		cap: CodeableConcept? = nil,
		capacity: Quantity? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		material: CodeableConcept? = nil,
		minimumVolume: MinimumVolumeX? = nil,
		modifierExtension: [Extension]? = nil,
		preparation: FHIRPrimitive<FHIRString>? = nil,
		type: CodeableConcept? = nil
	) {
		self.additive = additive
		self.cap = cap
		self.capacity = capacity
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.material = material
		self.minimumVolume = minimumVolume
		self.modifierExtension = modifierExtension
		self.preparation = preparation
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case cap
		case capacity
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case material
		case minimumVolumeQuantity
		case minimumVolumeString; case _minimumVolumeString
		case modifierExtension
		case preparation; case _preparation
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [SpecimenDefinitionTypeTestedContainerAdditive](from: _container, forKeyIfPresent: .additive)
		self.cap = try CodeableConcept(from: _container, forKeyIfPresent: .cap)
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		self.minimumVolume = try Self._decodeMinimumVolume(from: _container)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.preparation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparation, auxiliaryKey: ._preparation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try cap?.encode(on: &_container, forKey: .cap)
		try capacity?.encode(on: &_container, forKey: .capacity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try material?.encode(on: &_container, forKey: .material)
		if let _enum = minimumVolume {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .minimumVolumeQuantity)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString)
		}
		}
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try preparation?.encode(on: &_container, forKey: .preparation, auxiliaryKey: ._preparation)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeMinimumVolume(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> MinimumVolumeX? {
		var _t_minimumVolume: MinimumVolumeX? = nil
		if let minimumVolumeQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumVolumeQuantity) {
			_t_minimumVolume = .quantity(minimumVolumeQuantity)
		}
		if let minimumVolumeString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeString, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .string(minimumVolumeString)
		}
		return _t_minimumVolume
	}
}

/**
 Additive associated with container.
 
 Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
 Citrate, EDTA.
 */
public struct SpecimenDefinitionTypeTestedContainerAdditive: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		additive: AdditiveX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.additive = additive
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try Self._decodeAdditive(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch additive {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .additiveCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .additiveReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAdditive(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AdditiveX {
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		guard let _t_additive else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.additiveReference)
			throw DecodingError.valueNotFound(AdditiveX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"additive\" but have none"))
		}
		return _t_additive
	}
}

/**
 Specimen handling before testing.
 
 Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing
 process.
 */
public struct SpecimenDefinitionTypeTestedHandling: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Preservation instruction
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Maximum preservation time
	public var maxDuration: Duration?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Qualifies the interval of temperature
	public var temperatureQualifier: CodeableConcept?
	
	/// Temperature range for these handling instructions
	public var temperatureRange: Range?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instruction: FHIRPrimitive<FHIRString>? = nil,
		maxDuration: Duration? = nil,
		modifierExtension: [Extension]? = nil,
		temperatureQualifier: CodeableConcept? = nil,
		temperatureRange: Range? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.instruction = instruction
		self.maxDuration = maxDuration
		self.modifierExtension = modifierExtension
		self.temperatureQualifier = temperatureQualifier
		self.temperatureRange = temperatureRange
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case instruction; case _instruction
		case maxDuration
		case modifierExtension
		case temperatureQualifier
		case temperatureRange
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.maxDuration = try Duration(from: _container, forKeyIfPresent: .maxDuration)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.temperatureQualifier = try CodeableConcept(from: _container, forKeyIfPresent: .temperatureQualifier)
		self.temperatureRange = try Range(from: _container, forKeyIfPresent: .temperatureRange)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try maxDuration?.encode(on: &_container, forKey: .maxDuration)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try temperatureQualifier?.encode(on: &_container, forKey: .temperatureQualifier)
		try temperatureRange?.encode(on: &_container, forKey: .temperatureRange)
	}
}
