//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Immunization)
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
 Immunization event information.
 
 Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient,
 a clinician or another party.
 */
public struct Immunization: DomainResource {
	
	public static let resourceType: ResourceType = .immunization
	
	/// All possible types for "occurrence[x]"
	public enum OccurrenceX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Educational material presented to patient
	public var education: [ImmunizationEducation]?
	
	/// Encounter immunization was part of
	public var encounter: Reference?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Funding source for the vaccine
	public var fundingSource: CodeableConcept?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Dose potency
	public var isSubpotent: FHIRPrimitive<FHIRBool>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Where immunization occurred
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Additional immunization notes
	public var note: [Annotation]?
	
	/// Vaccine administration date
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX
	
	/// Who was immunized
	public var patient: Reference
	
	/// Who performed event
	public var performer: [ImmunizationPerformer]?
	
	/// Indicates context the data was recorded in
	public var primarySource: FHIRPrimitive<FHIRBool>?
	
	/// Patient eligibility for a vaccination program
	public var programEligibility: [CodeableConcept]?
	
	/// Protocol followed by the provider
	public var protocolApplied: [ImmunizationProtocolApplied]?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Why immunization occurred
	public var reasonCode: [CodeableConcept]?
	
	/// Why immunization occurred
	public var reasonReference: [Reference]?
	
	/// When the immunization was first captured in the subject's record
	public var recorded: FHIRPrimitive<DateTime>?
	
	/// Indicates the source of a secondarily reported record
	public var reportOrigin: CodeableConcept?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// Indicates the current status of the immunization event.
	/// Restricted to: ['completed', 'entered-in-error', 'not-done']
	public var status: FHIRPrimitive<EventStatus>
	
	/// Reason not done
	public var statusReason: CodeableConcept?
	
	/// Reason for being subpotent
	public var subpotentReason: [CodeableConcept]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Vaccine product administered
	public var vaccineCode: CodeableConcept
	
	/// Designated initializer
	public init(
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
		vaccineCode: CodeableConcept
	) {
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
		self.occurrence = occurrence
		self.patient = patient
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
		self.status = status
		self.statusReason = statusReason
		self.subpotentReason = subpotentReason
		self.text = text
		self.vaccineCode = vaccineCode
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case doseQuantity
		case education
		case encounter
		case expirationDate; case _expirationDate
		case `extension` = "extension"
		case fundingSource
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case isSubpotent; case _isSubpotent
		case language; case _language
		case location
		case lotNumber; case _lotNumber
		case manufacturer
		case meta
		case modifierExtension
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
		case text
		case vaccineCode
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.education = try [ImmunizationEducation](from: _container, forKeyIfPresent: .education)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fundingSource = try CodeableConcept(from: _container, forKeyIfPresent: .fundingSource)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.isSubpotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSubpotent, auxiliaryKey: ._isSubpotent)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufacturer = try Reference(from: _container, forKeyIfPresent: .manufacturer)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrence = try Self._decodeOccurrence(from: _container)
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
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try education?.encode(on: &_container, forKey: .education)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try fundingSource?.encode(on: &_container, forKey: .fundingSource)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try isSubpotent?.encode(on: &_container, forKey: .isSubpotent, auxiliaryKey: ._isSubpotent)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try location?.encode(on: &_container, forKey: .location)
		try lotNumber?.encode(on: &_container, forKey: .lotNumber, auxiliaryKey: ._lotNumber)
		try manufacturer?.encode(on: &_container, forKey: .manufacturer)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
		try text?.encode(on: &_container, forKey: .text)
		try vaccineCode.encode(on: &_container, forKey: .vaccineCode)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeOccurrence(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> OccurrenceX {
		var _t_occurrence: OccurrenceX? = nil
		if let occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime) {
			_t_occurrence = .dateTime(occurrenceDateTime)
		}
		if let occurrenceString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .occurrenceString, auxiliaryKey: ._occurrenceString) {
			if _t_occurrence != nil {
				throw DecodingError.dataCorruptedError(forKey: .occurrenceString, in: _container, debugDescription: "More than one value provided for \"occurrence\"")
			}
			_t_occurrence = .string(occurrenceString)
		}
		guard let _t_occurrence else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.occurrenceString)
			throw DecodingError.valueNotFound(OccurrenceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"occurrence\" but have none"))
		}
		return _t_occurrence
	}
}

/**
 Educational material presented to patient.
 
 Educational material presented to the patient (or guardian) at the time of vaccine administration.
 */
public struct ImmunizationEducation: BackboneElement {
	
	/// Educational material document identifier
	public var documentType: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Educational material presentation date
	public var presentationDate: FHIRPrimitive<DateTime>?
	
	/// Educational material publication date
	public var publicationDate: FHIRPrimitive<DateTime>?
	
	/// Educational material reference pointer
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer
	public init(
		documentType: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		presentationDate: FHIRPrimitive<DateTime>? = nil,
		publicationDate: FHIRPrimitive<DateTime>? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case presentationDate; case _presentationDate
		case publicationDate; case _publicationDate
		case reference; case _reference
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.documentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .documentType, auxiliaryKey: ._documentType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.presentationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .presentationDate, auxiliaryKey: ._presentationDate)
		self.publicationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .publicationDate, auxiliaryKey: ._publicationDate)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try documentType?.encode(on: &_container, forKey: .documentType, auxiliaryKey: ._documentType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try presentationDate?.encode(on: &_container, forKey: .presentationDate, auxiliaryKey: ._presentationDate)
		try publicationDate?.encode(on: &_container, forKey: .publicationDate, auxiliaryKey: ._publicationDate)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
	}
}

/**
 Who performed event.
 
 Indicates who performed the immunization event.
 */
public struct ImmunizationPerformer: BackboneElement {
	
	/// Individual or organization who was performing
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// What type of performance was done
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}

/**
 Protocol followed by the provider.
 
 The protocol (set of recommendations) being followed by the provider who administered the dose.
 */
public struct ImmunizationProtocolApplied: BackboneElement {
	
	/// All possible types for "doseNumber[x]"
	public enum DoseNumberX: Equatable, Hashable, Sendable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// All possible types for "seriesDoses[x]"
	public enum SeriesDosesX: Equatable, Hashable, Sendable {
		case positiveInt(FHIRPrimitive<FHIRPositiveInteger>)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Who is responsible for publishing the recommendations
	public var authority: Reference?
	
	/// Dose number within series
	/// One of `doseNumber[x]`
	public var doseNumber: DoseNumberX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Name of vaccine series
	public var series: FHIRPrimitive<FHIRString>?
	
	/// Recommended number of doses for immunity
	/// One of `seriesDoses[x]`
	public var seriesDoses: SeriesDosesX?
	
	/// Vaccine preventatable disease being targetted
	public var targetDisease: [CodeableConcept]?
	
	/// Designated initializer
	public init(
		authority: Reference? = nil,
		doseNumber: DoseNumberX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		series: FHIRPrimitive<FHIRString>? = nil,
		seriesDoses: SeriesDosesX? = nil,
		targetDisease: [CodeableConcept]? = nil
	) {
		self.authority = authority
		self.doseNumber = doseNumber
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case series; case _series
		case seriesDosesPositiveInt; case _seriesDosesPositiveInt
		case seriesDosesString; case _seriesDosesString
		case targetDisease
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.authority = try Reference(from: _container, forKeyIfPresent: .authority)
		self.doseNumber = try Self._decodeDoseNumber(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.series = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .series, auxiliaryKey: ._series)
		self.seriesDoses = try Self._decodeSeriesDoses(from: _container)
		self.targetDisease = try [CodeableConcept](from: _container, forKeyIfPresent: .targetDisease)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try authority?.encode(on: &_container, forKey: .authority)
		
		switch doseNumber {
		case .positiveInt(let _value):
			try _value.encode(on: &_container, forKey: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .doseNumberString, auxiliaryKey: ._doseNumberString)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
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
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDoseNumber(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DoseNumberX {
		var _t_doseNumber: DoseNumberX? = nil
		if let doseNumberPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .doseNumberPositiveInt, auxiliaryKey: ._doseNumberPositiveInt) {
			_t_doseNumber = .positiveInt(doseNumberPositiveInt)
		}
		if let doseNumberString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .doseNumberString, auxiliaryKey: ._doseNumberString) {
			if _t_doseNumber != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseNumberString, in: _container, debugDescription: "More than one value provided for \"doseNumber\"")
			}
			_t_doseNumber = .string(doseNumberString)
		}
		guard let _t_doseNumber else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.doseNumberString)
			throw DecodingError.valueNotFound(DoseNumberX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"doseNumber\" but have none"))
		}
		return _t_doseNumber
	}
	
	private static func _decodeSeriesDoses(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> SeriesDosesX? {
		var _t_seriesDoses: SeriesDosesX? = nil
		if let seriesDosesPositiveInt = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .seriesDosesPositiveInt, auxiliaryKey: ._seriesDosesPositiveInt) {
			_t_seriesDoses = .positiveInt(seriesDosesPositiveInt)
		}
		if let seriesDosesString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesDosesString, auxiliaryKey: ._seriesDosesString) {
			if _t_seriesDoses != nil {
				throw DecodingError.dataCorruptedError(forKey: .seriesDosesString, in: _container, debugDescription: "More than one value provided for \"seriesDoses\"")
			}
			_t_seriesDoses = .string(seriesDosesString)
		}
		return _t_seriesDoses
	}
}

/**
 Details of a reaction that follows immunization.
 
 Categorical data indicating that an adverse event is associated in time to an immunization.
 */
public struct ImmunizationReaction: BackboneElement {
	
	/// When reaction started
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Indicates self-reported reaction
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer
	public init(
		date: FHIRPrimitive<DateTime>? = nil,
		detail: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		reported: FHIRPrimitive<FHIRBool>? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case reported; case _reported
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try Reference(from: _container, forKeyIfPresent: .detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try reported?.encode(on: &_container, forKey: .reported, auxiliaryKey: ._reported)
	}
}
