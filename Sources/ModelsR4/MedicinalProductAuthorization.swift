//
//  MedicinalProductAuthorization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization)
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
 The regulatory authorization of a medicinal product.
 */
open class MedicinalProductAuthorization: DomainResource {
	
	override open class var resourceType: ResourceType { return .medicinalProductAuthorization }
	
	/// Business identifier for the marketing authorization, as assigned by a regulator
	public var identifier: [Identifier]?
	
	/// The medicinal product that is being authorized
	public var subject: Reference?
	
	/// The country in which the marketing authorization has been granted
	public var country: [CodeableConcept]?
	
	/// Jurisdiction within a country
	public var jurisdiction: [CodeableConcept]?
	
	/// The status of the marketing authorization
	public var status: CodeableConcept?
	
	/// The date at which the given status has become applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be
	/// restored
	public var restoreDate: FHIRPrimitive<DateTime>?
	
	/// The beginning of the time period in which the marketing authorization is in the specific status shall be
	/// specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format
	public var validityPeriod: Period?
	
	/// A period of time after authorization before generic product applicatiosn can be submitted
	public var dataExclusivityPeriod: Period?
	
	/// The date when the first authorization was granted by a Medicines Regulatory Agency
	public var dateOfFirstAuthorization: FHIRPrimitive<DateTime>?
	
	/// Date of first marketing authorization for a company's new medicinal product in any country in the World
	public var internationalBirthDate: FHIRPrimitive<DateTime>?
	
	/// The legal framework against which this authorization is granted
	public var legalBasis: CodeableConcept?
	
	/// Authorization in areas within a country
	public var jurisdictionalAuthorization: [MedicinalProductAuthorizationJurisdictionalAuthorization]?
	
	/// Marketing Authorization Holder
	public var holder: Reference?
	
	/// Medicines Regulatory Agency
	public var regulator: Reference?
	
	/// The regulatory procedure for granting or amending a marketing authorization
	public var procedure: MedicinalProductAuthorizationProcedure?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							validityPeriod: Period? = nil)
	{
		self.init()
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
		case country
		case dataExclusivityPeriod
		case dateOfFirstAuthorization; case _dateOfFirstAuthorization
		case holder
		case identifier
		case internationalBirthDate; case _internationalBirthDate
		case jurisdiction
		case jurisdictionalAuthorization
		case legalBasis
		case procedure
		case regulator
		case restoreDate; case _restoreDate
		case status
		case statusDate; case _statusDate
		case subject
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try [CodeableConcept](from: _container, forKeyIfPresent: .country)
		self.dataExclusivityPeriod = try Period(from: _container, forKeyIfPresent: .dataExclusivityPeriod)
		self.dateOfFirstAuthorization = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateOfFirstAuthorization, auxiliaryKey: ._dateOfFirstAuthorization)
		self.holder = try Reference(from: _container, forKeyIfPresent: .holder)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.internationalBirthDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .internationalBirthDate, auxiliaryKey: ._internationalBirthDate)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.jurisdictionalAuthorization = try [MedicinalProductAuthorizationJurisdictionalAuthorization](from: _container, forKeyIfPresent: .jurisdictionalAuthorization)
		self.legalBasis = try CodeableConcept(from: _container, forKeyIfPresent: .legalBasis)
		self.procedure = try MedicinalProductAuthorizationProcedure(from: _container, forKeyIfPresent: .procedure)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		self.restoreDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .restoreDate, auxiliaryKey: ._restoreDate)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try dataExclusivityPeriod?.encode(on: &_container, forKey: .dataExclusivityPeriod)
		try dateOfFirstAuthorization?.encode(on: &_container, forKey: .dateOfFirstAuthorization, auxiliaryKey: ._dateOfFirstAuthorization)
		try holder?.encode(on: &_container, forKey: .holder)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try internationalBirthDate?.encode(on: &_container, forKey: .internationalBirthDate, auxiliaryKey: ._internationalBirthDate)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try jurisdictionalAuthorization?.encode(on: &_container, forKey: .jurisdictionalAuthorization)
		try legalBasis?.encode(on: &_container, forKey: .legalBasis)
		try procedure?.encode(on: &_container, forKey: .procedure)
		try regulator?.encode(on: &_container, forKey: .regulator)
		try restoreDate?.encode(on: &_container, forKey: .restoreDate, auxiliaryKey: ._restoreDate)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try subject?.encode(on: &_container, forKey: .subject)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductAuthorization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && dataExclusivityPeriod == _other.dataExclusivityPeriod
		    && dateOfFirstAuthorization == _other.dateOfFirstAuthorization
		    && holder == _other.holder
		    && identifier == _other.identifier
		    && internationalBirthDate == _other.internationalBirthDate
		    && jurisdiction == _other.jurisdiction
		    && jurisdictionalAuthorization == _other.jurisdictionalAuthorization
		    && legalBasis == _other.legalBasis
		    && procedure == _other.procedure
		    && regulator == _other.regulator
		    && restoreDate == _other.restoreDate
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && subject == _other.subject
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(dataExclusivityPeriod)
		hasher.combine(dateOfFirstAuthorization)
		hasher.combine(holder)
		hasher.combine(identifier)
		hasher.combine(internationalBirthDate)
		hasher.combine(jurisdiction)
		hasher.combine(jurisdictionalAuthorization)
		hasher.combine(legalBasis)
		hasher.combine(procedure)
		hasher.combine(regulator)
		hasher.combine(restoreDate)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(subject)
		hasher.combine(validityPeriod)
	}
}

/**
 Authorization in areas within a country.
 */
open class MedicinalProductAuthorizationJurisdictionalAuthorization: BackboneElement {
	
	/// The assigned number for the marketing authorization
	public var identifier: [Identifier]?
	
	/// Country of authorization
	public var country: CodeableConcept?
	
	/// Jurisdiction within a country
	public var jurisdiction: [CodeableConcept]?
	
	/// The legal status of supply in a jurisdiction or region
	public var legalStatusOfSupply: CodeableConcept?
	
	/// The start and expected end date of the authorization
	public var validityPeriod: Period?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							country: CodeableConcept? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							jurisdiction: [CodeableConcept]? = nil,
							legalStatusOfSupply: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							validityPeriod: Period? = nil)
	{
		self.init()
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
		case identifier
		case jurisdiction
		case legalStatusOfSupply
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try CodeableConcept(from: _container, forKeyIfPresent: .country)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.legalStatusOfSupply = try CodeableConcept(from: _container, forKeyIfPresent: .legalStatusOfSupply)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try legalStatusOfSupply?.encode(on: &_container, forKey: .legalStatusOfSupply)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductAuthorizationJurisdictionalAuthorization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && legalStatusOfSupply == _other.legalStatusOfSupply
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(legalStatusOfSupply)
		hasher.combine(validityPeriod)
	}
}

/**
 The regulatory procedure for granting or amending a marketing authorization.
 */
open class MedicinalProductAuthorizationProcedure: BackboneElement {
	
	/// All possible types for "date[x]"
	public enum DateX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Identifier for this procedure
	public var identifier: Identifier?
	
	/// Type of procedure
	public var type: CodeableConcept
	
	/// Date of procedure
	/// One of `date[x]`
	public var date: DateX?
	
	/// Applcations submitted to obtain a marketing authorization
	public var application: [MedicinalProductAuthorizationProcedure]?
	
	/// Designated initializer taking all required properties
	public init(type: CodeableConcept) {
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							application: [MedicinalProductAuthorizationProcedure]? = nil,
							date: DateX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(type: type)
		self.application = application
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case application
		case dateDateTime; case _dateDateTime
		case datePeriod
		case identifier
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.application = try [MedicinalProductAuthorizationProcedure](from: _container, forKeyIfPresent: .application)
		var _t_date: DateX? = nil
		if let datePeriod = try Period(from: _container, forKeyIfPresent: .datePeriod) {
			if _t_date != nil {
				throw DecodingError.dataCorruptedError(forKey: .datePeriod, in: _container, debugDescription: "More than one value provided for \"date\"")
			}
			_t_date = .period(datePeriod)
		}
		if let dateDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .dateDateTime, auxiliaryKey: ._dateDateTime) {
			if _t_date != nil {
				throw DecodingError.dataCorruptedError(forKey: .dateDateTime, in: _container, debugDescription: "More than one value provided for \"date\"")
			}
			_t_date = .dateTime(dateDateTime)
		}
		self.date = _t_date
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try application?.encode(on: &_container, forKey: .application)
		if let _enum = date {
			switch _enum {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .datePeriod)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .dateDateTime, auxiliaryKey: ._dateDateTime)
			}
		}
		try identifier?.encode(on: &_container, forKey: .identifier)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MedicinalProductAuthorizationProcedure else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return application == _other.application
		    && date == _other.date
		    && identifier == _other.identifier
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(application)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(type)
	}
}
