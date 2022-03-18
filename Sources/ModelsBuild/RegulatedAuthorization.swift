//
//  RegulatedAuthorization.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/RegulatedAuthorization)
//  Copyright 2022 Apple Inc.
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
 Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity e.g. Market
 Authorization for a Medicinal Product.
 
 Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is
 cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal
 Product.
 */
open class RegulatedAuthorization: DomainResource {
	
	override open class var resourceType: ResourceType { return .regulatedAuthorization }
	
	/// Business identifier for the authorization, typically assigned by the authorizing body
	public var identifier: [Identifier]?
	
	/// The product type, treatment, facility or activity that is being authorized
	public var subject: [Reference]?
	
	/// Overall type of this authorization, for example drug marketing approval, orphan drug designation
	public var type: CodeableConcept?
	
	/// General textual supporting information
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The territory in which the authorization has been granted
	public var region: [CodeableConcept]?
	
	/// The status that is authorised e.g. approved. Intermediate states can be tracked with cases and applications
	public var status: CodeableConcept?
	
	/// The date at which the current status was assigned
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// The time period in which the regulatory approval etc. is in effect, e.g. a Marketing Authorization includes the
	/// date of authorization and/or expiration date
	public var validityPeriod: Period?
	
	/// Condition for which the use of the regulated product applies
	public var indication: CodeableReference?
	
	/// The intended use of the product, e.g. prevention, treatment
	public var intendedUse: CodeableConcept?
	
	/// The legal/regulatory framework or reasons under which this authorization is granted
	public var basis: [CodeableConcept]?
	
	/// The organization that has been granted this authorization, by the regulator
	public var holder: Reference?
	
	/// The regulatory authority or authorizing body granting the authorization
	public var regulator: Reference?
	
	/// Additional information or supporting documentation about the authorization
	public var attachedDocument: [Reference]?
	
	/// The case or regulatory procedure for granting or amending a regulated authorization. Note: This area is subject
	/// to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page)
	public var `case`: RegulatedAuthorizationCase?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		attachedDocument: [Reference]? = nil,
		basis: [CodeableConcept]? = nil,
		`case`: RegulatedAuthorizationCase? = nil,
		contained: [ResourceProxy]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		holder: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		indication: CodeableReference? = nil,
		intendedUse: CodeableConcept? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		region: [CodeableConcept]? = nil,
		regulator: Reference? = nil,
		status: CodeableConcept? = nil,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		subject: [Reference]? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil,
		validityPeriod: Period? = nil
	) {
		self.init()
		self.attachedDocument = attachedDocument
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
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.region = region
		self.regulator = regulator
		self.status = status
		self.statusDate = statusDate
		self.subject = subject
		self.text = text
		self.type = type
		self.validityPeriod = validityPeriod
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attachedDocument
		case basis
		case `case` = "case"
		case description_fhir = "description"; case _description_fhir = "_description"
		case holder
		case identifier
		case indication
		case intendedUse
		case region
		case regulator
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
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.basis = try [CodeableConcept](from: _container, forKeyIfPresent: .basis)
		self.`case` = try RegulatedAuthorizationCase(from: _container, forKeyIfPresent: .`case`)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.holder = try Reference(from: _container, forKeyIfPresent: .holder)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.indication = try CodeableReference(from: _container, forKeyIfPresent: .indication)
		self.intendedUse = try CodeableConcept(from: _container, forKeyIfPresent: .intendedUse)
		self.region = try [CodeableConcept](from: _container, forKeyIfPresent: .region)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try basis?.encode(on: &_container, forKey: .basis)
		try `case`?.encode(on: &_container, forKey: .`case`)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try holder?.encode(on: &_container, forKey: .holder)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try indication?.encode(on: &_container, forKey: .indication)
		try intendedUse?.encode(on: &_container, forKey: .intendedUse)
		try region?.encode(on: &_container, forKey: .region)
		try regulator?.encode(on: &_container, forKey: .regulator)
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
		return attachedDocument == _other.attachedDocument
		    && basis == _other.basis
		    && `case` == _other.`case`
		    && description_fhir == _other.description_fhir
		    && holder == _other.holder
		    && identifier == _other.identifier
		    && indication == _other.indication
		    && intendedUse == _other.intendedUse
		    && region == _other.region
		    && regulator == _other.regulator
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && subject == _other.subject
		    && type == _other.type
		    && validityPeriod == _other.validityPeriod
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attachedDocument)
		hasher.combine(basis)
		hasher.combine(`case`)
		hasher.combine(description_fhir)
		hasher.combine(holder)
		hasher.combine(identifier)
		hasher.combine(indication)
		hasher.combine(intendedUse)
		hasher.combine(region)
		hasher.combine(regulator)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(subject)
		hasher.combine(type)
		hasher.combine(validityPeriod)
	}
}

/**
 The case or regulatory procedure for granting or amending a regulated authorization. Note: This area is subject to
 ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).
 
 The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in
 response to submissions/applications by those seeking authorization. A case is the administrative process that deals
 with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the
 workgroup is seeking implementer feedback on its use (see link at bottom of page).
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
	
	/// Relevant date for this case
	/// One of `date[x]`
	public var date: DateX?
	
	/// Applications submitted to obtain a regulated authorization. Steps within the longer running case or procedure
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
		type: CodeableConcept? = nil
	) {
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
