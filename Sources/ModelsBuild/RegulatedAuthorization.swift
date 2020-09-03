//
//  RegulatedAuthorization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/RegulatedAuthorization)
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
 The regulatory authorization of a type of medicinal item or service.
 
 The regulatory authorization of a medicinal product, device or process.
 */
open class RegulatedAuthorization: DomainResource {
	
	override open class var resourceType: ResourceType { return .regulatedAuthorization }
	
	/// All possible types for "indication[x]"
	public enum IndicationX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Business identifier for the authorization, typically assigned by the authorizing body
	public var identifier: [Identifier]?
	
	/// The type of product or service that is being authorized
	public var subject: Reference?
	
	/// Overall type of this authorization, for example drug marketing approval, orphan drug designation
	public var type: CodeableConcept?
	
	/// General textual supporting information
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The region (country, jurisdiction etc.) in which the marketing authorization has been granted
	public var region: [CodeableConcept]?
	
	/// The status that is authorised e.g. approved. Intermediate states can be tracked with cases and applications
	public var status: CodeableConcept?
	
	/// The date at which the given status became applicable
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// The beginning of the time period in which the marketing authorization is in the specific status shall be
	/// specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format
	public var validityPeriod: Period?
	
	/// Condition for which the medicinal use applies
	/// One of `indication[x]`
	public var indication: IndicationX?
	
	/// The intended use of the product, e.g. prevention, treatment
	public var intendedUse: CodeableConcept?
	
	/// The legal or regulatory framework against which this authorization is granted, or other reasons for it
	public var basis: [CodeableConcept]?
	
	/// Other dates associated with the authorization. It is common for an authorization to have renewal dates, initial
	/// time limited phases and so on
	public var relatedDate: [RegulatedAuthorizationRelatedDate]?
	
	/// Authorization in areas within a country
	public var jurisdictionalAuthorization: [Reference]?
	
	/// The organization that holds the granted authorization
	public var holder: Reference?
	
	/// Medicines Regulatory Agency
	public var regulator: Reference?
	
	/// The case or regulatory procedure for granting or amending a marketing authorization
	public var `case`: RegulatedAuthorizationCase?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							basis: [CodeableConcept]? = nil,
							`case`: RegulatedAuthorizationCase? = nil,
							contained: [ResourceProxy]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							holder: Reference? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							indication: IndicationX? = nil,
							intendedUse: CodeableConcept? = nil,
							jurisdictionalAuthorization: [Reference]? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							region: [CodeableConcept]? = nil,
							regulator: Reference? = nil,
							relatedDate: [RegulatedAuthorizationRelatedDate]? = nil,
							status: CodeableConcept? = nil,
							statusDate: FHIRPrimitive<DateTime>? = nil,
							subject: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept? = nil,
							validityPeriod: Period? = nil)
	{
		self.init()
		self.basis = basis
		self.`case` = `case`
		self.contained = contained
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.holder = holder
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.indication = indication
		self.intendedUse = intendedUse
		self.jurisdictionalAuthorization = jurisdictionalAuthorization
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.region = region
		self.regulator = regulator
		self.relatedDate = relatedDate
		self.status = status
		self.statusDate = statusDate
		self.subject = subject
		self.text = text
		self.type = type
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basis
		case `case` = "case"
		case description_fhir = "description"; case _description_fhir = "_description"
		case holder
		case identifier
		case indicationCodeableConcept
		case indicationReference
		case intendedUse
		case jurisdictionalAuthorization
		case region
		case regulator
		case relatedDate
		case status
		case statusDate; case _statusDate
		case subject
		case type
		case validityPeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basis = try [CodeableConcept](from: _container, forKeyIfPresent: .basis)
		self.`case` = try RegulatedAuthorizationCase(from: _container, forKeyIfPresent: .`case`)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.holder = try Reference(from: _container, forKeyIfPresent: .holder)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		var _t_indication: IndicationX? = nil
		if let indicationCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .indicationCodeableConcept) {
			if _t_indication != nil {
				throw DecodingError.dataCorruptedError(forKey: .indicationCodeableConcept, in: _container, debugDescription: "More than one value provided for \"indication\"")
			}
			_t_indication = .codeableConcept(indicationCodeableConcept)
		}
		if let indicationReference = try Reference(from: _container, forKeyIfPresent: .indicationReference) {
			if _t_indication != nil {
				throw DecodingError.dataCorruptedError(forKey: .indicationReference, in: _container, debugDescription: "More than one value provided for \"indication\"")
			}
			_t_indication = .reference(indicationReference)
		}
		self.indication = _t_indication
		self.intendedUse = try CodeableConcept(from: _container, forKeyIfPresent: .intendedUse)
		self.jurisdictionalAuthorization = try [Reference](from: _container, forKeyIfPresent: .jurisdictionalAuthorization)
		self.region = try [CodeableConcept](from: _container, forKeyIfPresent: .region)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		self.relatedDate = try [RegulatedAuthorizationRelatedDate](from: _container, forKeyIfPresent: .relatedDate)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basis?.encode(on: &_container, forKey: .basis)
		try `case`?.encode(on: &_container, forKey: .`case`)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try holder?.encode(on: &_container, forKey: .holder)
		try identifier?.encode(on: &_container, forKey: .identifier)
		if let _enum = indication {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .indicationCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .indicationReference)
			}
		}
		try intendedUse?.encode(on: &_container, forKey: .intendedUse)
		try jurisdictionalAuthorization?.encode(on: &_container, forKey: .jurisdictionalAuthorization)
		try region?.encode(on: &_container, forKey: .region)
		try regulator?.encode(on: &_container, forKey: .regulator)
		try relatedDate?.encode(on: &_container, forKey: .relatedDate)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try subject?.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RegulatedAuthorization else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basis == _other.basis
		    && `case` == _other.`case`
		    && description_fhir == _other.description_fhir
		    && holder == _other.holder
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && intendedUse == _other.intendedUse
		    && jurisdictionalAuthorization == _other.jurisdictionalAuthorization
		    && region == _other.region
		    && regulator == _other.regulator
		    && relatedDate == _other.relatedDate
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && subject == _other.subject
		    && type == _other.type
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basis)
		hasher.combine(`case`)
		hasher.combine(description_fhir)
		hasher.combine(holder)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(intendedUse)
		hasher.combine(jurisdictionalAuthorization)
		hasher.combine(region)
		hasher.combine(regulator)
		hasher.combine(relatedDate)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(validityPeriod)
	}
}

/**
 The case or regulatory procedure for granting or amending a marketing authorization.
 */
open class RegulatedAuthorizationCase: BackboneElement {
	
	/// All possible types for "date[x]"
	public enum DateX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Identifier by which this case can be referenced
	public var identifier: Identifier?
	
	/// The defining type of case
	public var type: CodeableConcept?
	
	/// The status associated with the case
	public var status: CodeableConcept?
	
	/// Relevant date for this of case
	/// One of `date[x]`
	public var date: DateX?
	
	/// Applcations submitted to obtain a marketing authorization. Steps within the longer running case or procedure
	public var application: [RegulatedAuthorizationCase]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							application: [RegulatedAuthorizationCase]? = nil,
							date: DateX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier? = nil,
							modifierExtension: [Extension]? = nil,
							status: CodeableConcept? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.application = application
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.status = status
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case application
		case dateDateTime; case _dateDateTime
		case datePeriod
		case identifier
		case status
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.application = try [RegulatedAuthorizationCase](from: _container, forKeyIfPresent: .application)
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
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
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
		try status?.encode(on: &_container, forKey: .status)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RegulatedAuthorizationCase else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return application == _other.application
		    && date == _other.date
		    && identifier == _other.identifier
		    && status == _other.status
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(application)
		hasher.combine(date)
		hasher.combine(identifier)
		hasher.combine(status)
		hasher.combine(type)
	}
}

/**
 Other dates associated with the authorization. It is common for an authorization to have renewal dates, initial time
 limited phases and so on.
 */
open class RegulatedAuthorizationRelatedDate: BackboneElement {
	
	/// All possible types for "date[x]"
	public enum DateX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Another date associated with the authorization
	/// One of `date[x]`
	public var date: DateX
	
	/// Type of this date, for example the data exclusitity period for a medicinal product
	public var type: CodeableConcept
	
	/// Designated initializer taking all required properties
	public init(date: DateX, type: CodeableConcept) {
		self.date = date
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							date: DateX,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							type: CodeableConcept)
	{
		self.init(date: date, type: type)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dateDateTime; case _dateDateTime
		case datePeriod
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.dateDateTime) || _container.contains(CodingKeys.datePeriod) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.dateDateTime, CodingKeys.datePeriod], debugDescription: "Must have at least one value for \"date\" but have none"))
		}
		
		// Decode all our properties
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
		self.date = _t_date!
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		
			switch date {
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .datePeriod)
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .dateDateTime, auxiliaryKey: ._dateDateTime)
			}
		
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? RegulatedAuthorizationRelatedDate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return date == _other.date
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(date)
		hasher.combine(type)
	}
}
