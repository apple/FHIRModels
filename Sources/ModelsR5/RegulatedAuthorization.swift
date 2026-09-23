//
//  RegulatedAuthorization.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/RegulatedAuthorization)
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
 Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity e.g. Market
 Authorization for a Medicinal Product.
 
 Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is
 cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal
 Product.
 */
public struct RegulatedAuthorization: DomainResource {
	
	public static let resourceType: ResourceType = .regulatedAuthorization
	
	/// Additional information or supporting documentation about the authorization
	public var attachedDocument: [Reference]?
	
	/// The legal/regulatory framework or reasons under which this authorization is granted
	public var basis: [CodeableConcept]?
	
	/// The case or regulatory procedure for granting or amending a regulated authorization. Note: This area is subject
	/// to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page)
	public var `case`: RegulatedAuthorizationCase?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// General textual supporting information
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The organization that has been granted this authorization, by the regulator
	public var holder: Reference?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for the authorization, typically assigned by the authorizing body
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Condition for which the use of the regulated product applies
	public var indication: [CodeableReference]?
	
	/// The intended use of the product, e.g. prevention, treatment
	public var intendedUse: CodeableConcept?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The territory in which the authorization has been granted
	public var region: [CodeableConcept]?
	
	/// The regulatory authority or authorizing body granting the authorization
	public var regulator: Reference?
	
	/// The status that is authorised e.g. approved. Intermediate states can be tracked with cases and applications
	public var status: CodeableConcept?
	
	/// The date at which the current status was assigned
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// The product type, treatment, facility or activity that is being authorized
	public var subject: [Reference]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Overall type of this authorization, for example drug marketing approval, orphan drug designation
	public var type: CodeableConcept?
	
	/// The time period in which the regulatory approval etc. is in effect, e.g. a Marketing Authorization includes the
	/// date of authorization and/or expiration date
	public var validityPeriod: Period?
	
	/// Designated initializer
	public init(
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
		indication: [CodeableReference]? = nil,
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
		case resourceType
		case attachedDocument
		case basis
		case `case` = "case"
		case contained
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case holder
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case indication
		case intendedUse
		case language; case _language
		case meta
		case modifierExtension
		case region
		case regulator
		case status
		case statusDate; case _statusDate
		case subject
		case text
		case type
		case validityPeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attachedDocument = try [Reference](from: _container, forKeyIfPresent: .attachedDocument)
		self.basis = try [CodeableConcept](from: _container, forKeyIfPresent: .basis)
		self.`case` = try RegulatedAuthorizationCase(from: _container, forKeyIfPresent: .`case`)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.holder = try Reference(from: _container, forKeyIfPresent: .holder)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.indication = try [CodeableReference](from: _container, forKeyIfPresent: .indication)
		self.intendedUse = try CodeableConcept(from: _container, forKeyIfPresent: .intendedUse)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.region = try [CodeableConcept](from: _container, forKeyIfPresent: .region)
		self.regulator = try Reference(from: _container, forKeyIfPresent: .regulator)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.subject = try [Reference](from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		self.validityPeriod = try Period(from: _container, forKeyIfPresent: .validityPeriod)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try attachedDocument?.encode(on: &_container, forKey: .attachedDocument)
		try basis?.encode(on: &_container, forKey: .basis)
		try `case`?.encode(on: &_container, forKey: .`case`)
		try contained?.encode(on: &_container, forKey: .contained)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try holder?.encode(on: &_container, forKey: .holder)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try indication?.encode(on: &_container, forKey: .indication)
		try intendedUse?.encode(on: &_container, forKey: .intendedUse)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try region?.encode(on: &_container, forKey: .region)
		try regulator?.encode(on: &_container, forKey: .regulator)
		try status?.encode(on: &_container, forKey: .status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
		try validityPeriod?.encode(on: &_container, forKey: .validityPeriod)
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
public struct RegulatedAuthorizationCase: BackboneElement {
	
	/// All possible types for "date[x]"
	public enum DateX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Applications submitted to obtain a regulated authorization. Steps within the longer running case or procedure
	public var application: [RegulatedAuthorizationCase]?
	
	/// Relevant date for this case
	/// One of `date[x]`
	public var date: DateX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Identifier by which this case can be referenced
	public var identifier: Identifier?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The status associated with the case
	public var status: CodeableConcept?
	
	/// The defining type of case
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		application: [RegulatedAuthorizationCase]? = nil,
		date: DateX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		modifierExtension: [Extension]? = nil,
		status: CodeableConcept? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case status
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.application = try [RegulatedAuthorizationCase](from: _container, forKeyIfPresent: .application)
		self.date = try Self._decodeDate(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.status = try CodeableConcept(from: _container, forKeyIfPresent: .status)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
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
		try status?.encode(on: &_container, forKey: .status)
		try type?.encode(on: &_container, forKey: .type)
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
