//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Immunization)
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
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Indicates the current status of the immunization event.
	/// Restricted to: ['completed', 'entered-in-error', 'not-done']
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason not done
	public var statusReason: CodeableConcept?
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
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
	
	/// Indicates the source of a secondarily reported record
	public var reportOrigin: CodeableConcept?
	
	/// Where immunization occurred
	public var location: Reference?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
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
	public var reasonCode: [CodeableConcept]?
	
	/// Why immunization occurred
	public var reasonReference: [Reference]?
	
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
							reasonCode: [CodeableConcept]? = nil,
							reasonReference: [Reference]? = nil,
							recorded: FHIRPrimitive<DateTime>? = nil,
							reportOrigin: CodeableConcept? = nil,
							route: CodeableConcept? = nil,
							site: CodeableConcept? = nil,
							status: FHIRPrimitive<EventStatus>,
							statusReason: CodeableConcept? = nil,
							subpotentReason: [CodeableConcept]? = nil,
							text: Narrative? = nil,
							vaccineCode: CodeableConcept)
	{
		self.init(occurrence: occurrence, patient: patient, status: status, vaccineCode: vaccineCode)
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
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.recorded = recorded
		self.reportOrigin = reportOrigin
		self.route = route
		self.site = site
		self.statusReason = statusReason
		self.subpotentReason = subpotentReason
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case doseQuantity
		case education
		case encounter
		case expirationDate; case _expirationDate
		case fundingSource
		case identifier
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
		case reasonCode
		case reasonReference
		case recorded; case _recorded
		case reportOrigin
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
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.education = try [ImmunizationEducation](from: _container, forKeyIfPresent: .education)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.fundingSource = try CodeableConcept(from: _container, forKeyIfPresent: .fundingSource)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
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
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.recorded = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recorded, auxiliaryKey: ._recorded)
		self.reportOrigin = try CodeableConcept(from: _container, forKeyIfPresent: .reportOrigin)
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
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try education?.encode(on: &_container, forKey: .education)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try fundingSource?.encode(on: &_container, forKey: .fundingSource)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try recorded?.encode(on: &_container, forKey: .recorded, auxiliaryKey: ._recorded)
		try reportOrigin?.encode(on: &_container, forKey: .reportOrigin)
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
		return doseQuantity == _other.doseQuantity
		    && education == _other.education
		    && encounter == _other.encounter
		    && expirationDate == _other.expirationDate
		    && fundingSource == _other.fundingSource
		    && identifier == _other.identifier
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
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && recorded == _other.recorded
		    && reportOrigin == _other.reportOrigin
		    && route == _other.route
		    && site == _other.site
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subpotentReason == _other.subpotentReason
		    && vaccineCode == _other.vaccineCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(doseQuantity)
		hasher.combine(education)
		hasher.combine(encounter)
		hasher.combine(expirationDate)
		hasher.combine(fundingSource)
		hasher.combine(identifier)
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
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(recorded)
		hasher.combine(reportOrigin)
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
	
	/// All possible types for "doseNumber[x]"
	public enum DoseNumberX: Hashable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "seriesDoses[x]"
	public enum SeriesDosesX: Hashable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Who is responsible for publishing the recommendations
	public var authority: Reference?
	
	/// Vaccine preventatable disease being targetted
	public var targetDisease: [CodeableConcept]?
	
	/// Dose number within series
	/// One of `doseNumber[x]`
	public var doseNumber: DoseNumberX
	
	/// Recommended number of doses for immunity
	/// One of `seriesDoses[x]`
	public var seriesDoses: SeriesDosesX?
	
	/// Designated initializer taking all required properties
	public init(doseNumber: DoseNumberX) {
		self.doseNumber = doseNumber
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							authority: Reference? = nil,
							doseNumber: DoseNumberX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							series: FHIRPrimitive<FHIRString>? = nil,
							seriesDoses: SeriesDosesX? = nil,
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
		case doseNumberPositiveInt; case _doseNumberPositiveInt
		case doseNumberString; case _doseNumberString
		case series; case _series
		case seriesDosesPositiveInt; case _seriesDosesPositiveInt
		case seriesDosesString; case _seriesDosesString
		case targetDisease
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.doseNumberPositiveInt) || _container.contains(CodingKeys.doseNumberString) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.doseNumberPositiveInt, CodingKeys.doseNumberString], debugDescription: "Must have at least one value for \"doseNumber\" but have none"))
		}
		
		// Decode all our properties
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		var _t_doseNumber: DoseNumberX? = nil
		if let doseNumberPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberPositiveInt, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .positiveInt(doseNumberPositiveInt)
		}
		if let doseNumberString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .doseNumberString, auxiliaryKey: ._doseNumberString) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberString, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .string(doseNumberString)
		}
		self.doseNumber = _t_doseNumber!
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		var _t_seriesDoses: SeriesDosesX? = nil
		if let seriesDosesPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesPositiveInt, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .positiveInt(seriesDosesPositiveInt)
		}
		if let seriesDosesString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesDosesString, auxiliaryKey: ._seriesDosesString) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesString, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .string(seriesDosesString)
		}
		self.seriesDoses = _t_seriesDoses
		self.targetDisease = try [CodeableConcept](from: _container, forKeyIfPresent: .targetDisease)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try authority?.encode(on: &_container, forKey: .authority)
		
			switch doseNumber {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .doseNumberString, auxiliaryKey: ._doseNumberString)
			}
		
		try series?.encode(on: &_container, forKey: .series, auxiliaryKey: ._series)
		if let _enum = seriesDoses {
			switch _enum {
			case .positiveInt(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .seriesDosesString, auxiliaryKey: ._seriesDosesString)
			}
		}
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
