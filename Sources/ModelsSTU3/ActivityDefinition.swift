//
//  ActivityDefinition.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition)
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
 The definition of a specific activity to be taken, independent of any particular patient or context.
 
 This resource allows for the definition of some activity to be performed, independent of a particular patient,
 practitioner, or other performance context.
 */
open class ActivityDefinition: DomainResource {
	
	override open class var resourceType: ResourceType { return .activityDefinition }
	
	/// All possible types for "product[x]"
	public enum ProductX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "timing[x]"
	public enum TimingX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
		case range(Range)
		case timing(Timing)
	}
	
	/// Logical URI to reference this activity definition (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the activity definition
	public var identifier: [Identifier]?
	
	/// Business version of the activity definition
	public var version: FHIRPrimitive<FHIRString>?
	
	/// Name for this activity definition (computer friendly)
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Name for this activity definition (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date this was last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the activity definition
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Why this activity definition is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Describes the clinical usage of the asset
	public var usage: FHIRPrimitive<FHIRString>?
	
	/// When the activity definition was approved by publisher
	public var approvalDate: FHIRPrimitive<FHIRDate>?
	
	/// When the activity definition was last reviewed
	public var lastReviewDate: FHIRPrimitive<FHIRDate>?
	
	/// When the activity definition is expected to be used
	public var effectivePeriod: Period?
	
	/// Context the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for activity definition (if applicable)
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
	
	/// Logic used by the asset
	public var library: [Reference]?
	
	/// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest,
	/// a ProcedureRequest, or a CommunicationRequest. Typically, but not always, this is a Request resource.
	public var kind: FHIRPrimitive<ResourceType>?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// When activity is to occur
	/// One of `timing[x]`
	public var timing: TimingX?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Who should participate in the action
	public var participant: [ActivityDefinitionParticipant]?
	
	/// What's administered/supplied
	/// One of `product[x]`
	public var product: ProductX?
	
	/// How much is administered/consumed/supplied
	public var quantity: Quantity?
	
	/// Detailed dosage instructions
	public var dosage: [Dosage]?
	
	/// What part of body to perform on
	public var bodySite: [CodeableConcept]?
	
	/// Transform to apply the template
	public var transform: Reference?
	
	/// Dynamic aspects of the definition
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PublicationStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							approvalDate: FHIRPrimitive<FHIRDate>? = nil,
							bodySite: [CodeableConcept]? = nil,
							code: CodeableConcept? = nil,
							contact: [ContactDetail]? = nil,
							contained: [ResourceProxy]? = nil,
							contributor: [Contributor]? = nil,
							copyright: FHIRPrimitive<FHIRString>? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							dosage: [Dosage]? = nil,
							dynamicValue: [ActivityDefinitionDynamicValue]? = nil,
							effectivePeriod: Period? = nil,
							experimental: FHIRPrimitive<FHIRBool>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							kind: FHIRPrimitive<ResourceType>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							lastReviewDate: FHIRPrimitive<FHIRDate>? = nil,
							library: [Reference]? = nil,
							location: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							name: FHIRPrimitive<FHIRString>? = nil,
							participant: [ActivityDefinitionParticipant]? = nil,
							product: ProductX? = nil,
							publisher: FHIRPrimitive<FHIRString>? = nil,
							purpose: FHIRPrimitive<FHIRString>? = nil,
							quantity: Quantity? = nil,
							relatedArtifact: [RelatedArtifact]? = nil,
							status: FHIRPrimitive<PublicationStatus>,
							text: Narrative? = nil,
							timing: TimingX? = nil,
							title: FHIRPrimitive<FHIRString>? = nil,
							topic: [CodeableConcept]? = nil,
							transform: Reference? = nil,
							url: FHIRPrimitive<FHIRURI>? = nil,
							usage: FHIRPrimitive<FHIRString>? = nil,
							useContext: [UsageContext]? = nil,
							version: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init(status: status)
		self.approvalDate = approvalDate
		self.bodySite = bodySite
		self.code = code
		self.contact = contact
		self.contained = contained
		self.contributor = contributor
		self.copyright = copyright
		self.date = date
		self.description_fhir = description_fhir
		self.dosage = dosage
		self.dynamicValue = dynamicValue
		self.effectivePeriod = effectivePeriod
		self.experimental = experimental
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.kind = kind
		self.language = language
		self.lastReviewDate = lastReviewDate
		self.library = library
		self.location = location
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.name = name
		self.participant = participant
		self.product = product
		self.publisher = publisher
		self.purpose = purpose
		self.quantity = quantity
		self.relatedArtifact = relatedArtifact
		self.text = text
		self.timing = timing
		self.title = title
		self.topic = topic
		self.transform = transform
		self.url = url
		self.usage = usage
		self.useContext = useContext
		self.version = version
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case approvalDate; case _approvalDate
		case bodySite
		case code
		case contact
		case contributor
		case copyright; case _copyright
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case dosage
		case dynamicValue
		case effectivePeriod
		case experimental; case _experimental
		case identifier
		case jurisdiction
		case kind; case _kind
		case lastReviewDate; case _lastReviewDate
		case library
		case location
		case name; case _name
		case participant
		case productCodeableConcept
		case productReference
		case publisher; case _publisher
		case purpose; case _purpose
		case quantity
		case relatedArtifact
		case status; case _status
		case timingDateTime; case _timingDateTime
		case timingPeriod
		case timingRange
		case timingTiming
		case title; case _title
		case topic
		case transform
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
		self.bodySite = try [CodeableConcept](from: _container, forKeyIfPresent: .bodySite)
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.contributor = try [Contributor](from: _container, forKeyIfPresent: .contributor)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.dosage = try [Dosage](from: _container, forKeyIfPresent: .dosage)
		self.dynamicValue = try [ActivityDefinitionDynamicValue](from: _container, forKeyIfPresent: .dynamicValue)
		self.effectivePeriod = try Period(from: _container, forKeyIfPresent: .effectivePeriod)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.kind = try FHIRPrimitive<ResourceType>(from: _container, forKeyIfPresent: .kind, auxiliaryKey: ._kind)
		self.lastReviewDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		self.library = try [Reference](from: _container, forKeyIfPresent: .library)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.participant = try [ActivityDefinitionParticipant](from: _container, forKeyIfPresent: .participant)
		var _t_product: ProductX? = nil
		if let productReference = try Reference(from: _container, forKeyIfPresent: .productReference) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productReference, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .reference(productReference)
		}
		if let productCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .productCodeableConcept) {
			if _t_product != nil {
				throw DecodingError.dataCorruptedError(forKey: .productCodeableConcept, in: _container, debugDescription: "More than one value provided for \"product\"")
			}
			_t_product = .codeableConcept(productCodeableConcept)
		}
		self.product = _t_product
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		self.relatedArtifact = try [RelatedArtifact](from: _container, forKeyIfPresent: .relatedArtifact)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		var _t_timing: TimingX? = nil
		if let timingTiming = try Timing(from: _container, forKeyIfPresent: .timingTiming) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingTiming, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .timing(timingTiming)
		}
		if let timingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timingDateTime, auxiliaryKey: ._timingDateTime) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingDateTime, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .dateTime(timingDateTime)
		}
		if let timingPeriod = try Period(from: _container, forKeyIfPresent: .timingPeriod) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingPeriod, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .period(timingPeriod)
		}
		if let timingRange = try Range(from: _container, forKeyIfPresent: .timingRange) {
			if _t_timing != nil {
				throw DecodingError.dataCorruptedError(forKey: .timingRange, in: _container, debugDescription: "More than one value provided for \"timing\"")
			}
			_t_timing = .range(timingRange)
		}
		self.timing = _t_timing
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.topic = try [CodeableConcept](from: _container, forKeyIfPresent: .topic)
		self.transform = try Reference(from: _container, forKeyIfPresent: .transform)
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
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try code?.encode(on: &_container, forKey: .code)
		try contact?.encode(on: &_container, forKey: .contact)
		try contributor?.encode(on: &_container, forKey: .contributor)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try dosage?.encode(on: &_container, forKey: .dosage)
		try dynamicValue?.encode(on: &_container, forKey: .dynamicValue)
		try effectivePeriod?.encode(on: &_container, forKey: .effectivePeriod)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try kind?.encode(on: &_container, forKey: .kind, auxiliaryKey: ._kind)
		try lastReviewDate?.encode(on: &_container, forKey: .lastReviewDate, auxiliaryKey: ._lastReviewDate)
		try library?.encode(on: &_container, forKey: .library)
		try location?.encode(on: &_container, forKey: .location)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try participant?.encode(on: &_container, forKey: .participant)
		if let _enum = product {
			switch _enum {
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .productReference)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .productCodeableConcept)
			}
		}
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try relatedArtifact?.encode(on: &_container, forKey: .relatedArtifact)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		if let _enum = timing {
			switch _enum {
			case .timing(let _value):
				try _value.encode(on: &_container, forKey: .timingTiming)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timingDateTime, auxiliaryKey: ._timingDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timingPeriod)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .timingRange)
			}
		}
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try topic?.encode(on: &_container, forKey: .topic)
		try transform?.encode(on: &_container, forKey: .transform)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try usage?.encode(on: &_container, forKey: .usage, auxiliaryKey: ._usage)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ActivityDefinition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return approvalDate == _other.approvalDate
		    && bodySite == _other.bodySite
		    && code == _other.code
		    && contact == _other.contact
		    && contributor == _other.contributor
		    && copyright == _other.copyright
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && dosage == _other.dosage
		    && dynamicValue == _other.dynamicValue
		    && effectivePeriod == _other.effectivePeriod
		    && experimental == _other.experimental
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && kind == _other.kind
		    && lastReviewDate == _other.lastReviewDate
		    && library == _other.library
		    && location == _other.location
		    && name == _other.name
		    && participant == _other.participant
		    && product == _other.product
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && quantity == _other.quantity
		    && relatedArtifact == _other.relatedArtifact
		    && status == _other.status
		    && timing == _other.timing
		    && title == _other.title
		    && topic == _other.topic
		    && transform == _other.transform
		    && url == _other.url
		    && usage == _other.usage
		    && useContext == _other.useContext
		    && version == _other.version
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(approvalDate)
		hasher.combine(bodySite)
		hasher.combine(code)
		hasher.combine(contact)
		hasher.combine(contributor)
		hasher.combine(copyright)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(dosage)
		hasher.combine(dynamicValue)
		hasher.combine(effectivePeriod)
		hasher.combine(experimental)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(kind)
		hasher.combine(lastReviewDate)
		hasher.combine(library)
		hasher.combine(location)
		hasher.combine(name)
		hasher.combine(participant)
		hasher.combine(product)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(quantity)
		hasher.combine(relatedArtifact)
		hasher.combine(status)
		hasher.combine(timing)
		hasher.combine(title)
		hasher.combine(topic)
		hasher.combine(transform)
		hasher.combine(url)
		hasher.combine(usage)
		hasher.combine(useContext)
		hasher.combine(version)
	}
}

/**
 Dynamic aspects of the definition.
 
 Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
 dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
 expression that calculated the weight, and the path on the intent resource that would contain the result.
 */
open class ActivityDefinitionDynamicValue: BackboneElement {
	
	/// Natural language description of the dynamic value
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The path to the element to be set dynamically
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Language of the expression
	public var language: FHIRPrimitive<FHIRString>?
	
	/// An expression that provides the dynamic value for the customization
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							expression: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							path: FHIRPrimitive<FHIRString>? = nil)
	{
		self.init()
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.id = id
		self.language = language
		self.modifierExtension = modifierExtension
		self.path = path
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case language; case _language
		case path; case _path
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ActivityDefinitionDynamicValue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && expression == _other.expression
		    && language == _other.language
		    && path == _other.path
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(expression)
		hasher.combine(language)
		hasher.combine(path)
	}
}

/**
 Who should participate in the action.
 
 Indicates who should participate in performing the action described.
 */
open class ActivityDefinitionParticipant: BackboneElement {
	
	/// The type of participant in the action.
	public var type: FHIRPrimitive<ActionParticipantType>
	
	/// E.g. Nurse, Surgeon, Parent, etc
	public var role: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(type: FHIRPrimitive<ActionParticipantType>) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							role: CodeableConcept? = nil,
							type: FHIRPrimitive<ActionParticipantType>)
	{
		self.init(type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.role = role
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case role
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.role = try CodeableConcept(from: _container, forKeyIfPresent: .role)
		self.type = try FHIRPrimitive<ActionParticipantType>(from: _container, forKey: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try role?.encode(on: &_container, forKey: .role)
		try type.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ActivityDefinitionParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return role == _other.role
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(role)
		hasher.combine(type)
	}
}
