//
//  Immunization.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/Immunization)
//  Copyright 2023 Apple Inc.
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
	
	/// Authority that the immunization event is based on
	public var basedOn: [Reference]?
	
	/// completed | entered-in-error | not-done
	public var status: FHIRPrimitive<FHIRString>
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	/// Vaccine administered
	public var vaccineCode: CodeableConcept
	
	/// Product that was administered
	public var administeredProduct: CodeableReference?
	
	/// Vaccine manufacturer
	public var manufacturer: CodeableReference?
	
	/// Vaccine lot number
	public var lotNumber: FHIRPrimitive<FHIRString>?
	
	/// Vaccine expiration date
	public var expirationDate: FHIRPrimitive<FHIRDate>?
	
	/// Who was immunized
	public var patient: Reference
	
	/// Encounter immunization was part of
	public var encounter: Reference?
	
	/// Additional information in support of the immunization
	public var supportingInformation: [Reference]?
	
	/// Vaccine administration date
	/// One of `occurrence[x]`
	public var occurrence: OccurrenceX
	
	/// Indicates context the data was captured in
	public var primarySource: FHIRPrimitive<FHIRBool>?
	
	/// Indicates the source of a  reported record
	public var informationSource: CodeableReference?
	
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
	
	/// Patient eligibility for a specific vaccination program
	public var programEligibility: [ImmunizationProgramEligibility]?
	
	/// Funding source for the vaccine
	public var fundingSource: CodeableConcept?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Protocol followed by the provider
	public var protocolApplied: [ImmunizationProtocolApplied]?
	
	/// Designated initializer taking all required properties
	public init(occurrence: OccurrenceX, patient: Reference, status: FHIRPrimitive<FHIRString>, vaccineCode: CodeableConcept) {
		self.occurrence = occurrence
		self.patient = patient
		self.status = status
		self.vaccineCode = vaccineCode
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		administeredProduct: CodeableReference? = nil,
		basedOn: [Reference]? = nil,
		contained: [ResourceProxy]? = nil,
		doseQuantity: Quantity? = nil,
		encounter: Reference? = nil,
		expirationDate: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		fundingSource: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		informationSource: CodeableReference? = nil,
		isSubpotent: FHIRPrimitive<FHIRBool>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		lotNumber: FHIRPrimitive<FHIRString>? = nil,
		manufacturer: CodeableReference? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		occurrence: OccurrenceX,
		patient: Reference,
		performer: [ImmunizationPerformer]? = nil,
		primarySource: FHIRPrimitive<FHIRBool>? = nil,
		programEligibility: [ImmunizationProgramEligibility]? = nil,
		protocolApplied: [ImmunizationProtocolApplied]? = nil,
		reaction: [ImmunizationReaction]? = nil,
		reason: [CodeableReference]? = nil,
		route: CodeableConcept? = nil,
		site: CodeableConcept? = nil,
		status: FHIRPrimitive<FHIRString>,
		statusReason: CodeableConcept? = nil,
		subpotentReason: [CodeableConcept]? = nil,
		supportingInformation: [Reference]? = nil,
		text: Narrative? = nil,
		vaccineCode: CodeableConcept
	) {
		self.init(occurrence: occurrence, patient: patient, status: status, vaccineCode: vaccineCode)
		self.administeredProduct = administeredProduct
		self.basedOn = basedOn
		self.contained = contained
		self.doseQuantity = doseQuantity
		self.encounter = encounter
		self.expirationDate = expirationDate
		self.`extension` = `extension`
		self.fundingSource = fundingSource
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.informationSource = informationSource
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
		self.route = route
		self.site = site
		self.statusReason = statusReason
		self.subpotentReason = subpotentReason
		self.supportingInformation = supportingInformation
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case administeredProduct
		case basedOn
		case doseQuantity
		case encounter
		case expirationDate; case _expirationDate
		case fundingSource
		case identifier
		case informationSource
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
		case route
		case site
		case status; case _status
		case statusReason
		case subpotentReason
		case supportingInformation
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
		self.administeredProduct = try CodeableReference(from: _container, forKeyIfPresent: .administeredProduct)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expirationDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .expirationDate, auxiliaryKey: ._expirationDate)
		self.fundingSource = try CodeableConcept(from: _container, forKeyIfPresent: .fundingSource)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.informationSource = try CodeableReference(from: _container, forKeyIfPresent: .informationSource)
		self.isSubpotent = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .isSubpotent, auxiliaryKey: ._isSubpotent)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.lotNumber = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lotNumber, auxiliaryKey: ._lotNumber)
		self.manufacturer = try CodeableReference(from: _container, forKeyIfPresent: .manufacturer)
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
		self.programEligibility = try [ImmunizationProgramEligibility](from: _container, forKeyIfPresent: .programEligibility)
		self.protocolApplied = try [ImmunizationProtocolApplied](from: _container, forKeyIfPresent: .protocolApplied)
		self.reaction = try [ImmunizationReaction](from: _container, forKeyIfPresent: .reaction)
		self.reason = try [CodeableReference](from: _container, forKeyIfPresent: .reason)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusReason = try CodeableConcept(from: _container, forKeyIfPresent: .statusReason)
		self.subpotentReason = try [CodeableConcept](from: _container, forKeyIfPresent: .subpotentReason)
		self.supportingInformation = try [Reference](from: _container, forKeyIfPresent: .supportingInformation)
		self.vaccineCode = try CodeableConcept(from: _container, forKey: .vaccineCode)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try administeredProduct?.encode(on: &_container, forKey: .administeredProduct)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try doseQuantity?.encode(on: &_container, forKey: .doseQuantity)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expirationDate?.encode(on: &_container, forKey: .expirationDate, auxiliaryKey: ._expirationDate)
		try fundingSource?.encode(on: &_container, forKey: .fundingSource)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try informationSource?.encode(on: &_container, forKey: .informationSource)
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
		try route?.encode(on: &_container, forKey: .route)
		try site?.encode(on: &_container, forKey: .site)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusReason?.encode(on: &_container, forKey: .statusReason)
		try subpotentReason?.encode(on: &_container, forKey: .subpotentReason)
		try supportingInformation?.encode(on: &_container, forKey: .supportingInformation)
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
		return administeredProduct == _other.administeredProduct
		    && basedOn == _other.basedOn
		    && doseQuantity == _other.doseQuantity
		    && encounter == _other.encounter
		    && expirationDate == _other.expirationDate
		    && fundingSource == _other.fundingSource
		    && identifier == _other.identifier
		    && informationSource == _other.informationSource
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
		    && route == _other.route
		    && site == _other.site
		    && status == _other.status
		    && statusReason == _other.statusReason
		    && subpotentReason == _other.subpotentReason
		    && supportingInformation == _other.supportingInformation
		    && vaccineCode == _other.vaccineCode
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(administeredProduct)
		hasher.combine(basedOn)
		hasher.combine(doseQuantity)
		hasher.combine(encounter)
		hasher.combine(expirationDate)
		hasher.combine(fundingSource)
		hasher.combine(identifier)
		hasher.combine(informationSource)
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
		hasher.combine(route)
		hasher.combine(site)
		hasher.combine(status)
		hasher.combine(statusReason)
		hasher.combine(subpotentReason)
		hasher.combine(supportingInformation)
		hasher.combine(vaccineCode)
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
		modifierExtension: [Extension]? = nil
	) {
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
 Patient eligibility for a specific vaccination program.
 
 Indicates a patient's eligibility for a funding program.
 */
open class ImmunizationProgramEligibility: BackboneElement {
	
	/// The program that eligibility is declared for
	public var program: CodeableConcept
	
	/// The patient's eligibility status for the program
	public var programStatus: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(program: CodeableConcept, programStatus: CodeableConcept) {
		self.program = program
		self.programStatus = programStatus
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		program: CodeableConcept,
		programStatus: CodeableConcept
	) {
		self.init(program: program, programStatus: programStatus)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case program
		case programStatus
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.program = try CodeableConcept(from: _container, forKey: .program)
		self.programStatus = try CodeableConcept(from: _container, forKey: .programStatus)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try program.encode(on: &_container, forKey: .program)
		try programStatus.encode(on: &_container, forKey: .programStatus)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImmunizationProgramEligibility else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return program == _other.program
		    && programStatus == _other.programStatus
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(program)
		hasher.combine(programStatus)
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
	
	/// Vaccine preventatable disease being targeted
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
		targetDisease: [CodeableConcept]? = nil
	) {
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
	public var manifestation: CodeableReference?
	
	/// Indicates self-reported reaction
	public var reported: FHIRPrimitive<FHIRBool>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		manifestation: CodeableReference? = nil,
		modifierExtension: [Extension]? = nil,
		reported: FHIRPrimitive<FHIRBool>? = nil
	) {
		self.init()
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.manifestation = manifestation
		self.modifierExtension = modifierExtension
		self.reported = reported
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case date; case _date
		case manifestation
		case reported; case _reported
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.manifestation = try CodeableReference(from: _container, forKeyIfPresent: .manifestation)
		self.reported = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .reported, auxiliaryKey: ._reported)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try manifestation?.encode(on: &_container, forKey: .manifestation)
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
		    && manifestation == _other.manifestation
		    && reported == _other.reported
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(manifestation)
		hasher.combine(reported)
	}
}
