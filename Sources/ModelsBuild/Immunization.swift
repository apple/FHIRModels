//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Immunization)
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
 Immunization event information.
 
 Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient,
 a clinician or another party.
 */
open class Immunization: DomainResource {
	
	override open class var resourceType: ResourceType { return .immunization }
	
	/// All possible types for "informationSource[x]"
	public enum InformationSourceX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Instantiates FHIR protocol or definition for the immunization event
	public var instantiatesCanonical: [FHIRPrimitive<Canonical>]?
	
	/// Instantiates external protocol or definition for the immunization event
	public var instantiatesUri: [FHIRPrimitive<FHIRURI>]?
	
	/// Authority that the immunization event is based on
	public var basedOn: [Reference]?
	
	/// Indicates the current status of the immunization event.
	/// Restricted to: ['completed', 'entered-in-error', 'not-done']
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Who was immunized
	public var patient: Reference
	
	/// Encounter immunization was part of
	public var encounter: Reference?
	
	/// Vaccine administration date
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX
	
	/// When the immunization was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Indicates context the data was recorded in
	public var primarySource: FHIRPrimitive<FHIRBool>?
	
	/// Indicates the source of a  reported record
	/// One of `informationSource[x]`
	public var informationSource: InformationSourceX?
	
	/// Where immunization occurred
	public var location: Reference?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Who performed event
	public var performer: [ImmunizationPerformer]?
	
	/// Additional immunization notes
	public var note: [Annotation]?
	
	/// Why immunization occurred
	public var reason: [CodeableReference]?
	
	/// Dose potency
	public var isSubpotent: FHIRPrimitive<FHIRBool>?
	
	/// Reason for being subpotent
	public var subpotentReason: [CodeableConcept]?
	
	/// Educational material presented to patient
	public var education: [ImmunizationEducation]?
	
	/// Patient eligibility for a vaccination program
	public var programEligibility: [CodeableConcept]?
	
	/// Funding source for the vaccine
	public var fundingSource: CodeableConcept?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Protocol followed by the provider
	public var protocolApplied: [ImmunizationProtocolApplied]?
	
	/// Designated initializer taking all required properties
	public init(occurrence: OccurrenceX, patient: Reference, status: FHIRPrimitive<EventStatus>, vaccineCode: CodeableConcept) {
		self.occurrence = occurrence
		self.patient = patient
		self.status = status
		self.vaccineCode = vaccineCode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basedOn: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							doseQuantity: Quantity? = nil,
							education: [ImmunizationEducation]? = nil,
							encounter: Reference? = nil,
							expirationDate: FHIRPrimitive<FHIRDate>? = nil,
							`extension`: [Extension]? = nil,
							fundingSource: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							informationSource: InformationSourceX? = nil,
							instantiatesCanonical: [FHIRPrimitive<Canonical>]? = nil,
							instantiatesUri: [FHIRPrimitive<FHIRURI>]? = nil,
							isSubpotent: FHIRPrimitive<FHIRBool>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							location: Reference? = nil,
							lotNumber: FHIRPrimitive<FHIRString>? = nil,
							manufacturer: Reference? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							occurrence: OccurrenceX,
							patient: Reference,
							performer: [ImmunizationPerformer]? = nil,
							primarySource: FHIRPrimitive<FHIRBool>? = nil,
							programEligibility: [CodeableConcept]? = nil,
							protocolApplied: [ImmunizationProtocolApplied]? = nil,
							reaction: [ImmunizationReaction]? = nil,
							reason: [CodeableReference]? = nil,
							recorded: FHIRPrimitive<DateTime>? = nil,
							route: CodeableConcept? = nil,
							site: CodeableConcept? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: CodeableConcept? = nil,
							subpotentReason: [CodeableConcept]? = nil,
							text: Narrative? = nil,
							vaccineCode: CodeableConcept)
	{
		self.init(occurrence: occurrence, patient: patient, status: status, vaccineCode: vaccineCode)
		self.basedOn = basedOn
		self.contained = contained
		self.doseQuantity = doseQuantity
		self.education = education
		self.encounter = encounter
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.fundingSource = fundingSource
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
		self.instantiatesCanonical = instantiatesCanonical
		self.instantiatesUri = instantiatesUri
		self.isSubpotent = isSubpotent
		self.language = language
		self.location = location
		self.lotNumber = lotNumber
		self.manufacturer = manufacturer
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.performer = performer
		self.primarySource = primarySource
		self.programEligibility = programEligibility
		self.protocolApplied = protocolApplied
		self.reaction = reaction
		self.reason = reason
		self.recorded = recorded
		self.route = route
		self.site = site
		self.statusReason = statusReason
		self.subpotentReason = subpotentReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case doseQuantity
		case education
		case encounter
		case expirationDate; case _expirationDate
		case fundingSource
		case identifier
		case informationSourceCodeableConcept
		case informationSourceReference
		case instantiatesCanonical; case _instantiatesCanonical
		case instantiatesUri; case _instantiatesUri
		case isSubpotent; case _isSubpotent
		case location
		case lotNumber; case _lotNumber
		case manufacturer
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case occurrenceString; case _occurrenceString
		case patient
		case performer
		case primarySource; case _primarySource
		case programEligibility
		case protocolApplied
		case reaction
		case reason
		case recorded; case _recorded
		case route
		case site
		case status; case _status
		case statusReason
		case subpotentReason
		case vaccineCode
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.occurrenceDateTime) || _container.contains(CodingKeys.occurrenceString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.occurrenceDateTime, CodingKeys.occurrenceString], debugDescription: "Must have at least one value for \"occurrence\" but have none"))
		}
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.education = try [ImmunizationEducation](from: _container, forKeyIfPresent: .education)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.fundingSource = try CodeableConcept(from: _container, forKeyIfPresent: .fundingSource)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		var _t_informationSource: InformationSourceX? = nil
		if let informationSourceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .informationSourceCodeableConcept) {
			if _t_informationSource != nil {
				throw DecodingError.dataCorruptedError(forKey: .informationSourceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"informationSource\"")
			}
			_t_informationSource = .codeableConcept(informationSourceCodeableConcept)
		}
		if let informationSourceReference = try Reference(from: _container, forKeyIfPresent: .informationSourceReference) {
			if _t_informationSource != nil {
				throw DecodingError.dataCorruptedError(forKey: .informationSourceReference, in: _container, debugDescription: "More than one value provided for \"informationSource\"")
			}
			_t_informationSource = .reference(informationSourceReference)
		}
		self.informationSource = _t_informationSource
		self.instantiatesCanonical = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		self.instantiatesUri = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		self.isSubpotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSubpotent, auxiliaryKey: ._isSubpotent)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceDateTime, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .occurrenceString, auxiliaryKey: ._occurrenceString) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceString, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .string(occurrenceString)
		}
		self.occurrence = _t_occurrence!
		self.patient = try Reference(from: _container, forKey: .patient)
		self.performer = try [ImmunizationPerformer](from: _container, forKeyIfPresent: .performer)
		self.primarySource = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .primarySource, auxiliaryKey: ._primarySource)
		self.programEligibility = try [CodeableConcept](from: _container, forKeyIfPresent: .programEligibility)
		self.protocolApplied = try [ImmunizationProtocolApplied](from: _container, forKeyIfPresent: .protocolApplied)
		self.reaction = try [ImmunizationReaction](from: _container, forKeyIfPresent: .reaction)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<EventStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subpotentReason = try [CodeableConcept](from: _container, forKeyIfPresent: .subpotentReason)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try education?.encode(on: &_container, forKey: .education)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try fundingSource?.encode(on: &_container, forKey: .fundingSource)
		try identifier?.encode(on: &_container, forKey: .identifier)
		if let _enum = informationSource {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .informationSourceCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .informationSourceReference)
			}
		}
		try instantiatesCanonical?.encode(on: &_container, forKey: .instantiatesCanonical, auxiliaryKey: ._instantiatesCanonical)
		try instantiatesUri?.encode(on: &_container, forKey: .instantiatesUri, auxiliaryKey: ._instantiatesUri)
		try isSubpotent?.encode(on: &_container, forKey: .isSubpotent, auxiliaryKey: ._isSubpotent)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try note?.encode(on: &_container, forKey: .note)
		
			switch occurrence {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .occurrenceString, auxiliaryKey: ._occurrenceString)
			}
		
		try patient.encode(on: &_container, forKey: .patient)
		try performer?.encode(on: &_container, forKey: .performer)
		try primarySource?.encode(on: &_container, forKey: .primarySource, auxiliaryKey: ._primarySource)
		try programEligibility?.encode(on: &_container, forKey: .programEligibility)
		try protocolApplied?.encode(on: &_container, forKey: .protocolApplied)
		try reaction?.encode(on: &_container, forKey: .reaction)
		try reason?.encode(on: &_container, forKey: .reason)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subpotentReason?.encode(on: &_container, forKey: .subpotentReason)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Immunization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && doseQuantity == _other.doseQuantity
		    && education == _other.education
		    && encounter == _other.encounter
		    && expirationDate == _other.expirationDate
		    && fundingSource == _other.fundingSource
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
		    && instantiatesCanonical == _other.instantiatesCanonical
		    && instantiatesUri == _other.instantiatesUri
		    && isSubpotent == _other.isSubpotent
		    && location == _other.location
		    && lotNumber == _other.lotNumber
		    && manufacturer == _other.manufacturer
		    && note == _other.note
		    && occurrence == _other.occurrence
		    && patient == _other.patient
		    && performer == _other.performer
		    && primarySource == _other.primarySource
		    && programEligibility == _other.programEligibility
		    && protocolApplied == _other.protocolApplied
		    && reaction == _other.reaction
		    && reason == _other.reason
		    && recorded == _other.recorded
		    && route == _other.route
		    && site == _other.site
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subpotentReason == _other.subpotentReason
		    && vaccineCode == _other.vaccineCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(doseQuantity)
		hasher.combine(education)
		hasher.combine(encounter)
		hasher.combine(expirationDate)
		hasher.combine(fundingSource)
		hasher.combine(identifier)
		hasher.combine(informationSource)
		hasher.combine(instantiatesCanonical)
		hasher.combine(instantiatesUri)
		hasher.combine(isSubpotent)
		hasher.combine(location)
		hasher.combine(lotNumber)
		hasher.combine(manufacturer)
		hasher.combine(note)
		hasher.combine(occurrence)
		hasher.combine(patient)
		hasher.combine(performer)
		hasher.combine(primarySource)
		hasher.combine(programEligibility)
		hasher.combine(protocolApplied)
		hasher.combine(reaction)
		hasher.combine(reason)
		hasher.combine(recorded)
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subpotentReason)
		hasher.combine(vaccineCode)
	}
}

/**
 Educational material presented to patient.
 
 Educational material presented to the patient (or guardian) at the time of vaccine administration.
 */
open class ImmunizationEducation: BackboneElement {
	
	/// Educational material document identifier
	public var documentType: FHIRPrimitive<FHIRString>?
	
	/// Educational material reference pointer
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Educational material publication date
	public var publicationDate: FHIRPrimitive<DateTime>?
	
	/// Educational material presentation date
	public var presentationDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							documentType: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							presentationDate: FHIRPrimitive<DateTime>? = nil,
							publicationDate: FHIRPrimitive<DateTime>? = nil,
							reference: FHIRPrimitive<FHIRURI>? = nil)
	{
		self.init()
		self.documentType = documentType
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.presentationDate = presentationDate
		self.publicationDate = publicationDate
		self.reference = reference
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case documentType; case _documentType
		case presentationDate; case _presentationDate
		case publicationDate; case _publicationDate
		case reference; case _reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.documentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentType, auxiliaryKey: ._documentType)
		self.presentationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .presentationDate, auxiliaryKey: ._presentationDate)
		self.publicationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try documentType?.encode(on: &_container, forKey: .documentType, auxiliaryKey: ._documentType)
		try presentationDate?.encode(on: &_container, forKey: .presentationDate, auxiliaryKey: ._presentationDate)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationEducation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return documentType == _other.documentType
		    && presentationDate == _other.presentationDate
		    && publicationDate == _other.publicationDate
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(documentType)
		hasher.combine(presentationDate)
		hasher.combine(publicationDate)
		hasher.combine(reference)
	}
}

/**
 Who performed event.
 
 Indicates who performed the immunization event.
 */
open class ImmunizationPerformer: BackboneElement {
	
	/// What type of performance was done
	public var function: CodeableConcept?
	
	/// Individual or organization who was performing
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							actor: Reference,
							`extension`: [Extension]? = nil,
							function: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationPerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}

/**
 Protocol followed by the provider.
 
 The protocol (set of recommendations) being followed by the provider who administered the dose.
 */
open class ImmunizationProtocolApplied: BackboneElement {
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Who is responsible for publishing the recommendations
	public var authority: Reference?
	
	/// Vaccine preventatable disease being targetted
	public var targetDisease: [CodeableConcept]?
	
	/// Dose number within series
	public var doseNumber: FHIRPrimitive<FHIRString>
	
	/// Recommended number of doses for immunity
	public var seriesDoses: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(doseNumber: FHIRPrimitive<FHIRString>) {
		self.doseNumber = doseNumber
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							doseNumber: FHIRPrimitive<FHIRString>,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							series: FHIRPrimitive<FHIRString>? = nil,
							seriesDoses: FHIRPrimitive<FHIRString>? = nil,
							targetDisease: [CodeableConcept]? = nil)
	{
		self.init(doseNumber: doseNumber)
		self.authority = authority
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.series = series
		self.seriesDoses = seriesDoses
		self.targetDisease = targetDisease
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case authority
		case doseNumber; case _doseNumber
		case series; case _series
		case seriesDoses; case _seriesDoses
		case targetDisease
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.doseNumber = try FHIRPrimitive<FHIRString>(from: _container, forKey: .doseNumber, auxiliaryKey: ._doseNumber)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		self.seriesDoses = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesDoses, auxiliaryKey: ._seriesDoses)
		self.targetDisease = try [CodeableConcept](from: _container, forKeyIfPresent: .targetDisease)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		try doseNumber.encode(on: &_container, forKey: .doseNumber, auxiliaryKey: ._doseNumber)
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		try seriesDoses?.encode(on: &_container, forKey: .seriesDoses, auxiliaryKey: ._seriesDoses)
		try targetDisease?.encode(on: &_container, forKey: .targetDisease)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationProtocolApplied else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return authority == _other.authority
		    && doseNumber == _other.doseNumber
		    && series == _other.series
		    && seriesDoses == _other.seriesDoses
		    && targetDisease == _other.targetDisease
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(authority)
		hasher.combine(doseNumber)
		hasher.combine(series)
		hasher.combine(seriesDoses)
		hasher.combine(targetDisease)
	}
}

/**
 Details of a reaction that follows immunization.
 
 Categorical data indicating that an adverse event is associated in time to an immunization.
 */
open class ImmunizationReaction: BackboneElement {
	
	/// When reaction started
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Indicates self-reported reaction
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: FHIRPrimitive<DateTime>? = nil,
							detail: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							reported: FHIRPrimitive<FHIRBool>? = nil)
	{
		self.init()
		self.date = date
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.reported = reported
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case detail
		case reported; case _reported
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try Reference(from: _container, forKeyIfPresent: .detail)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail)
		try reported?.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationReaction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && detail == _other.detail
		    && reported == _other.reported
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(detail)
		hasher.combine(reported)
	}
}
