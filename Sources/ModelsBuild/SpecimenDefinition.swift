//
//  SpecimenDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition)
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
 Kind of specimen.
 
 A kind of specimen with associated set of requirements.
 */
open class SpecimenDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .specimenDefinition }
	
	/// All possible types for "subject[x]"
	public enum SubjectX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Logical canonical URL to reference this SpecimenDefinition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Business identifier
	public var identifier: Identifier?
	
	/// Business version of the SpecimenDefinition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this SpecimenDefinition (Human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// Based on FHIR definition of another SpecimenDefinition
	public var derivedFromCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Based on external definition
	public var derivedFromUri: [FHIRPrimitive<FHIRURI>]?
	
	/// The current state of theSpecimenDefinition.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// If this SpecimenDefinition is not for real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Type of subject for specimen collection
	/// One of `subject[x]`
	public var subject: SubjectX?
	
	/// Date status first applied
	public var date: FHIRPrimitive<DateTime>?
	
	/// The name of the individual or organization that published the SpecimenDefinition
	public var publisher: Reference?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the SpecimenDefinition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Content intends to support these contexts
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for this SpecimenDefinition (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this SpecimenDefinition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// When SpecimenDefinition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// The date on which the asset content was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// The effective date range for the SpecimenDefinition
	public var effectivePeriod: Period?
	
	/// Kind of material to collect
	public var typeCollected: CodeableConcept?
	
	/// Patient preparation for collection
	public var patientPreparation: [CodeableConcept]?
	
	/// Time aspect for collection
	public var timeAspect: FHIRPrimitive<FHIRString>?
	
	/// Specimen collection procedure
	public var collection: [CodeableConcept]?
	
	/// Specimen in container intended for testing by lab
	public var typeTested: [SpecimenDefinitionTypeTested]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							collection: [CodeableConcept]? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
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
							patientPreparation: [CodeableConcept]? = nil,
							publisher: Reference? = nil,
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
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.approvalDate = approvalDate
		self.collection = collection
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
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
		self.patientPreparation = patientPreparation
		self.publisher = publisher
		self.purpose = purpose
		self.subject = subject
		self.text = text
		self.timeAspect = timeAspect
		self.title = title
		self.typeCollected = typeCollected
		self.typeTested = typeTested
		self.url = url
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case collection
		case contact
		case copyright; case _copyright
		case date; case _date
		case derivedFromCanonical; case _derivedFromCanonical
		case derivedFromUri; case _derivedFromUri
		case description_fhir = "description"; case _description_fhir = "_description"
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case lastReviewDate; case _lastReviewDate
		case patientPreparation
		case publisher
		case purpose; case _purpose
		case status; case _status
		case subjectCodeableConcept
		case subjectReference
		case timeAspect; case _timeAspect
		case title; case _title
		case typeCollected
		case typeTested
		case url; case _url
		case useContext
		case version; case _version
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.approvalDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .approvalDate, auxiliaryKey: ._approvalDate)
		self.collection = try [CodeableConcept](from: _container, forKeyIfPresent: .collection)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.derivedFromCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		self.derivedFromUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.patientPreparation = try [CodeableConcept](from: _container, forKeyIfPresent: .patientPreparation)
		self.publisher = try Reference(from: _container, forKeyIfPresent: .publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
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
		self.timeAspect = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .timeAspect, auxiliaryKey: ._timeAspect)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.typeCollected = try CodeableConcept(from: _container, forKeyIfPresent: .typeCollected)
		self.typeTested = try [SpecimenDefinitionTypeTested](from: _container, forKeyIfPresent: .typeTested)
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
		try collection?.encode(on: &_container, forKey: .collection)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try derivedFromCanonical?.encode(on: &_container, forKey: .derivedFromCanonical, auxiliaryKey: ._derivedFromCanonical)
		try derivedFromUri?.encode(on: &_container, forKey: .derivedFromUri, auxiliaryKey: ._derivedFromUri)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try patientPreparation?.encode(on: &_container, forKey: .patientPreparation)
		try publisher?.encode(on: &_container, forKey: .publisher)
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
		try timeAspect?.encode(on: &_container, forKey: .timeAspect, auxiliaryKey: ._timeAspect)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try typeCollected?.encode(on: &_container, forKey: .typeCollected)
		try typeTested?.encode(on: &_container, forKey: .typeTested)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && collection == _other.collection
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && date == _other.date
		    && derivedFromCanonical == _other.derivedFromCanonical
		    && derivedFromUri == _other.derivedFromUri
		    && description_fhir == _other.description_fhir
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && lastReviewDate == _other.lastReviewDate
		    && patientPreparation == _other.patientPreparation
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && status == _other.status
		    && subject == _other.subject
		    && timeAspect == _other.timeAspect
		    && title == _other.title
		    && typeCollected == _other.typeCollected
		    && typeTested == _other.typeTested
		    && url == _other.url
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(collection)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(derivedFromCanonical)
		hasher.combine(derivedFromUri)
		hasher.combine(description_fhir)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(lastReviewDate)
		hasher.combine(patientPreparation)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(timeAspect)
		hasher.combine(title)
		hasher.combine(typeCollected)
		hasher.combine(typeTested)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Specimen in container intended for testing by lab.
 
 Specimen conditioned in a container as expected by the testing laboratory.
 */
open class SpecimenDefinitionTypeTested: BackboneElement {
	
	/// Primary or secondary specimen
	public var isDerived: FHIRPrimitive<FHIRBool>?
	
	/// Type of intended specimen
	public var type: CodeableConcept?
	
	/// The preference for this type of conditioned specimen.
	public var preference: FHIRPrimitive<SpecimenContainedPreference>
	
	/// The specimen's container
	public var container: SpecimenDefinitionTypeTestedContainer?
	
	/// Requirements for specimen delivery and special handling
	public var requirement: FHIRPrimitive<FHIRString>?
	
	/// The usual time for retaining this kind of specimen
	public var retentionTime: Duration?
	
	/// Specimen for single use only
	public var singleUse: FHIRPrimitive<FHIRBool>?
	
	/// Criterion specified for specimen rejection
	public var rejectionCriterion: [CodeableConcept]?
	
	/// Specimen handling before testing
	public var handling: [SpecimenDefinitionTypeTestedHandling]?
	
	/// Where the specimen will be tested
	public var testingDestination: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(preference: FHIRPrimitive<SpecimenContainedPreference>) {
		self.preference = preference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init(preference: preference)
		self.container = container
		self.`extension` = `extension`
		self.handling = handling
		self.id = id
		self.isDerived = isDerived
		self.modifierExtension = modifierExtension
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
		case handling
		case isDerived; case _isDerived
		case preference; case _preference
		case rejectionCriterion
		case requirement; case _requirement
		case retentionTime
		case singleUse; case _singleUse
		case testingDestination
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.container = try SpecimenDefinitionTypeTestedContainer(from: _container, forKeyIfPresent: .container)
		self.handling = try [SpecimenDefinitionTypeTestedHandling](from: _container, forKeyIfPresent: .handling)
		self.isDerived = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isDerived, auxiliaryKey: ._isDerived)
		self.preference = try FHIRPrimitive<SpecimenContainedPreference>(from: _container, forKey: .preference, auxiliaryKey: ._preference)
		self.rejectionCriterion = try [CodeableConcept](from: _container, forKeyIfPresent: .rejectionCriterion)
		self.requirement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requirement, auxiliaryKey: ._requirement)
		self.retentionTime = try Duration(from: _container, forKeyIfPresent: .retentionTime)
		self.singleUse = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .singleUse, auxiliaryKey: ._singleUse)
		self.testingDestination = try [CodeableConcept](from: _container, forKeyIfPresent: .testingDestination)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try container?.encode(on: &_container, forKey: .container)
		try handling?.encode(on: &_container, forKey: .handling)
		try isDerived?.encode(on: &_container, forKey: .isDerived, auxiliaryKey: ._isDerived)
		try preference.encode(on: &_container, forKey: .preference, auxiliaryKey: ._preference)
		try rejectionCriterion?.encode(on: &_container, forKey: .rejectionCriterion)
		try requirement?.encode(on: &_container, forKey: .requirement, auxiliaryKey: ._requirement)
		try retentionTime?.encode(on: &_container, forKey: .retentionTime)
		try singleUse?.encode(on: &_container, forKey: .singleUse, auxiliaryKey: ._singleUse)
		try testingDestination?.encode(on: &_container, forKey: .testingDestination)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTested else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return container == _other.container
		    && handling == _other.handling
		    && isDerived == _other.isDerived
		    && preference == _other.preference
		    && rejectionCriterion == _other.rejectionCriterion
		    && requirement == _other.requirement
		    && retentionTime == _other.retentionTime
		    && singleUse == _other.singleUse
		    && testingDestination == _other.testingDestination
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(container)
		hasher.combine(handling)
		hasher.combine(isDerived)
		hasher.combine(preference)
		hasher.combine(rejectionCriterion)
		hasher.combine(requirement)
		hasher.combine(retentionTime)
		hasher.combine(singleUse)
		hasher.combine(testingDestination)
		hasher.combine(type)
	}
}

/**
 The specimen's container.
 */
open class SpecimenDefinitionTypeTestedContainer: BackboneElement {
	
	/// All possible types for "minimumVolume[x]"
	public enum MinimumVolumeX: Hashable {
		case quantity(Quantity)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// The material type used for the container
	public var material: CodeableConcept?
	
	/// Kind of container associated with the kind of specimen
	public var type: CodeableConcept?
	
	/// Color of container cap
	public var cap: CodeableConcept?
	
	/// The description of the kind of container
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The capacity of this kind of container
	public var capacity: Quantity?
	
	/// Minimum volume
	/// One of `minimumVolume[x]`
	public var minimumVolume: MinimumVolumeX?
	
	/// Additive associated with container
	public var additive: [SpecimenDefinitionTypeTestedContainerAdditive]?
	
	/// Special processing applied to the container for this specimen type
	public var preparation: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case material
		case minimumVolumeQuantity
		case minimumVolumeString; case _minimumVolumeString
		case preparation; case _preparation
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try [SpecimenDefinitionTypeTestedContainerAdditive](from: _container, forKeyIfPresent: .additive)
		self.cap = try CodeableConcept(from: _container, forKeyIfPresent: .cap)
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.material = try CodeableConcept(from: _container, forKeyIfPresent: .material)
		var _t_minimumVolume: MinimumVolumeX? = nil
		if let minimumVolumeQuantity = try Quantity(from: _container, forKeyIfPresent: .minimumVolumeQuantity) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeQuantity, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .quantity(minimumVolumeQuantity)
		}
		if let minimumVolumeString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString) {
			if _t_minimumVolume != nil {
				throw DecodingError.dataCorruptedError(forKey: .minimumVolumeString, in: _container, debugDescription: "More than one value provided for \"minimumVolume\"")
			}
			_t_minimumVolume = .string(minimumVolumeString)
		}
		self.minimumVolume = _t_minimumVolume
		self.preparation = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .preparation, auxiliaryKey: ._preparation)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try cap?.encode(on: &_container, forKey: .cap)
		try capacity?.encode(on: &_container, forKey: .capacity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try material?.encode(on: &_container, forKey: .material)
		if let _enum = minimumVolume {
			switch _enum {
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .minimumVolumeQuantity)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .minimumVolumeString, auxiliaryKey: ._minimumVolumeString)
			}
		}
		try preparation?.encode(on: &_container, forKey: .preparation, auxiliaryKey: ._preparation)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedContainer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && cap == _other.cap
		    && capacity == _other.capacity
		    && description_fhir == _other.description_fhir
		    && material == _other.material
		    && minimumVolume == _other.minimumVolume
		    && preparation == _other.preparation
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(cap)
		hasher.combine(capacity)
		hasher.combine(description_fhir)
		hasher.combine(material)
		hasher.combine(minimumVolume)
		hasher.combine(preparation)
		hasher.combine(type)
	}
}

/**
 Additive associated with container.
 
 Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
 Citrate, EDTA.
 */
open class SpecimenDefinitionTypeTestedContainerAdditive: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX
	
	/// Designated initializer taking all required properties
	public init(additive: AdditiveX) {
		self.additive = additive
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additive: AdditiveX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(additive: additive)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.additiveCodeableConcept) || _container.contains(CodingKeys.additiveReference) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.additiveCodeableConcept, CodingKeys.additiveReference], debugDescription: "Must have at least one value for \"additive\" but have none"))
		}
		
		// Decode all our properties
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveCodeableConcept, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		self.additive = _t_additive!
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch additive {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .additiveCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .additiveReference)
			}
		
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedContainerAdditive else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
	}
}

/**
 Specimen handling before testing.
 
 Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing
 process.
 */
open class SpecimenDefinitionTypeTestedHandling: BackboneElement {
	
	/// Qualifies the interval of temperature
	public var temperatureQualifier: CodeableConcept?
	
	/// Temperature range for these handling instructions
	public var temperatureRange: Range?
	
	/// Maximum preservation time
	public var maxDuration: Duration?
	
	/// Preservation instruction
	public var instruction: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							instruction: FHIRPrimitive<FHIRString>? = nil,
							maxDuration: Duration? = nil,
							modifierExtension: [Extension]? = nil,
							temperatureQualifier: CodeableConcept? = nil,
							temperatureRange: Range? = nil)
	{
		self.init()
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
		case instruction; case _instruction
		case maxDuration
		case temperatureQualifier
		case temperatureRange
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.instruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .instruction, auxiliaryKey: ._instruction)
		self.maxDuration = try Duration(from: _container, forKeyIfPresent: .maxDuration)
		self.temperatureQualifier = try CodeableConcept(from: _container, forKeyIfPresent: .temperatureQualifier)
		self.temperatureRange = try Range(from: _container, forKeyIfPresent: .temperatureRange)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try instruction?.encode(on: &_container, forKey: .instruction, auxiliaryKey: ._instruction)
		try maxDuration?.encode(on: &_container, forKey: .maxDuration)
		try temperatureQualifier?.encode(on: &_container, forKey: .temperatureQualifier)
		try temperatureRange?.encode(on: &_container, forKey: .temperatureRange)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenDefinitionTypeTestedHandling else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return instruction == _other.instruction
		    && maxDuration == _other.maxDuration
		    && temperatureQualifier == _other.temperatureQualifier
		    && temperatureRange == _other.temperatureRange
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(instruction)
		hasher.combine(maxDuration)
		hasher.combine(temperatureQualifier)
		hasher.combine(temperatureRange)
	}
}
