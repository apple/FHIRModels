//
//  MedicinalProductAuthorization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization)
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
 The regulatory authorization of a medicinal product.
 */
public struct MedicinalProductAuthorization: DomainResource {
	
	public static let resourceType: ResourceType = .medicinalProductAuthorization
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The country in which the marketing authorization has been granted
	public var country: [CodeableConcept]?
	
	/// A period of time after authorization before generic product applicatiosn can be submitted
	public var dataExclusivityPeriod: Period?
	
	/// The date when the first authorization was granted by a Medicines Regulatory Agency
	public var dateOfFirstAuthorization: FHIRPrimitive<DateTime>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Marketing Authorization Holder
	public var holder: Reference?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the marketing authorization, as assigned by a regulator
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Date of first marketing authorization for a company's new medicinal product in any country in the World
	public var internationalBirthDate: FHIRPrimitive<DateTime>?
	
	/// Jurisdiction within a country
	public var jurisdiction: [CodeableConcept]?
	
	/// Authorization in areas within a country
	public var jurisdictionalAuthorization: [MedicinalProductAuthorizationJurisdictionalAuthorization]?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The legal framework against which this authorization is granted
	public var legalBasis: CodeableConcept?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The regulatory procedure for granting or amending a marketing authorization
	public var procedure: MedicinalProductAuthorizationProcedure?
	
	/// Medicines Regulatory Agency
	public var regulator: Reference?
	
	/// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be
	/// restored
	public var restoreDate: FHIRPrimitive<DateTime>?
	
	/// The status of the marketing authorization
	public var status: CodeableConcept?
	
	/// The date at which the given status has become applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// The medicinal product that is being authorized
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The beginning of the time period in which the marketing authorization is in the specific status shall be
	/// specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		country: [CodeableConcept]? = nil,
		dataExclusivityPeriod: Period? = nil,
		dateOfFirstAuthorization: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		holder: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		internationalBirthDate: FHIRPrimitive<DateTime>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		jurisdictionalAuthorization: [MedicinalProductAuthorizationJurisdictionalAuthorization]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		legalBasis: CodeableConcept? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: MedicinalProductAuthorizationProcedure? = nil,
		regulator: Reference? = nil,
		restoreDate: FHIRPrimitive<DateTime>? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		validityPeriod: Period? = nil
	) {
		self.contained = contained
		self.country = country
		self.dataExclusivityPeriod = dataExclusivityPeriod
		self.dateOfFirstAuthorization = dateOfFirstAuthorization
		self.`extension` = `extension`
		self.holder = holder
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.internationalBirthDate = internationalBirthDate
		self.jurisdiction = jurisdiction
		self.jurisdictionalAuthorization = jurisdictionalAuthorization
		self.language = language
		self.legalBasis = legalBasis
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.regulator = regulator
		self.restoreDate = restoreDate
		self.status = status
		self.statusDate = statusDate
		self.subject = subject
		self.text = text
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case country
		case dataExclusivityPeriod
		case dateOfFirstAuthorization; case _dateOfFirstAuthorization
		case `extension` = "extension"
		case holder
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case internationalBirthDate; case _internationalBirthDate
		case jurisdiction
		case jurisdictionalAuthorization
		case language; case _language
		case legalBasis
		case meta
		case modifierExtension
		case procedure
		case regulator
		case restoreDate; case _restoreDate
		case status
		case statusDate; case _statusDate
		case subject
		case text
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.dataExclusivityPeriod = try Period(from: _container, forKeyIfPresent: .dataExclusivityPeriod)
		self.dateOfFirstAuthorization = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfFirstAuthorization, auxiliaryKey: ._dateOfFirstAuthorization)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.holder = try Reference(from: _container, forKeyIfPresent: .holder)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.internationalBirthDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .internationalBirthDate, auxiliaryKey: ._internationalBirthDate)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.jurisdictionalAuthorization = try [MedicinalProductAuthorizationJurisdictionalAuthorization](from: _container, forKeyIfPresent: .jurisdictionalAuthorization)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.legalBasis = try CodeableConcept(from: _container, forKeyIfPresent: .legalBasis)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try MedicinalProductAuthorizationProcedure(from: _container, forKeyIfPresent: .procedure)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		self.restoreDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .restoreDate, auxiliaryKey: ._restoreDate)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try country?.encode(on: &_container, forKey: .country)
		try dataExclusivityPeriod?.encode(on: &_container, forKey: .dataExclusivityPeriod)
		try dateOfFirstAuthorization?.encode(on: &_container, forKey: .dateOfFirstAuthorization, auxiliaryKey: ._dateOfFirstAuthorization)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try holder?.encode(on: &_container, forKey: .holder)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try internationalBirthDate?.encode(on: &_container, forKey: .internationalBirthDate, auxiliaryKey: ._internationalBirthDate)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try jurisdictionalAuthorization?.encode(on: &_container, forKey: .jurisdictionalAuthorization)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try legalBasis?.encode(on: &_container, forKey: .legalBasis)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try regulator?.encode(on: &_container, forKey: .regulator)
		try restoreDate?.encode(on: &_container, forKey: .restoreDate, auxiliaryKey: ._restoreDate)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
}

/**
 Authorization in areas within a country.
 */
public struct MedicinalProductAuthorizationJurisdictionalAuthorization: BackboneElement {
	
	/// Country of authorization
	public var country: CodeableConcept?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The assigned number for the marketing authorization
	public var identifier: [Identifier]?
	
	/// Jurisdiction within a country
	public var jurisdiction: [CodeableConcept]?
	
	/// The legal status of supply in a jurisdiction or region
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The start and expected end date of the authorization
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
		country: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		legalStatusOfSupply: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		validityPeriod: Period? = nil
	) {
		self.country = country
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.jurisdiction = jurisdiction
		self.legalStatusOfSupply = legalStatusOfSupply
		self.modifierExtension = modifierExtension
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case `extension` = "extension"
		case id; case _id
		case identifier
		case jurisdiction
		case legalStatusOfSupply
		case modifierExtension
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.country = try CodeableConcept(from: _container, forKeyIfPresent: .country)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try country?.encode(on: &_container, forKey: .country)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
	}
}

/**
 The regulatory procedure for granting or amending a marketing authorization.
 */
public struct MedicinalProductAuthorizationProcedure: BackboneElement {
	
	/// All possible types for "date[x]"
	public enum DateX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Applcations submitted to obtain a marketing authorization
	public var application: [MedicinalProductAuthorizationProcedure]?
	
	/// Date of procedure
	/// One of `date[x]`
	public var date: DateX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier for this procedure
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Type of procedure
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		application: [MedicinalProductAuthorizationProcedure]? = nil,
		date: DateX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.application = application
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case application
		case dateDateTime; case _dateDateTime
		case datePeriod
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.application = try [MedicinalProductAuthorizationProcedure](from: _container, forKeyIfPresent: .application)
		self.date = try Self._decodeDate(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try application?.encode(on: &_container, forKey: .application)
		if let _enum = date {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .dateDateTime, auxiliaryKey: ._dateDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .datePeriod)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDate(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DateX? {
		var _t_date: DateX? = nil
		if let dateDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateDateTime, auxiliaryKey: ._dateDateTime) {
			_t_date = .dateTime(dateDateTime)
		}
		if let datePeriod = try Period(from: _container, forKeyIfPresent: .datePeriod) {
			if _t_date != nil {
				throw DecodingError.dataCorruptedError(forKey: .datePeriod, in: _container, debugDescription: "More than one value provided for \"date\"")
			}
			_t_date = .period(datePeriod)
		}
		return _t_date
	}
}
