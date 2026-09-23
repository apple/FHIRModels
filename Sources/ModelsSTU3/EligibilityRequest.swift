//
//  EligibilityRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest)
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
 Determine insurance validity and scope of coverage.
 
 The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the
 form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force and
 optionally to provide the insurance details of the policy.
 */
public struct EligibilityRequest: DomainResource {
	
	public static let resourceType: ResourceType = .eligibilityRequest
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Equatable, Hashable, Sendable {
		case date(FHIRPrimitive<FHIRDate>)
		indirect case period(Period)
	}
	
	/// Type of services covered
	public var benefitCategory: CodeableConcept?
	
	/// Detailed services covered within the type
	public var benefitSubCategory: CodeableConcept?
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Insurance or medical plan
	public var coverage: Reference?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Author
	public var enterer: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Target
	public var insurer: Reference?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Estimated date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		benefitCategory: CodeableConcept? = nil,
		benefitSubCategory: CodeableConcept? = nil,
		businessArrangement: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		coverage: Reference? = nil,
		created: FHIRPrimitive<DateTime>? = nil,
		enterer: Reference? = nil,
		`extension`: [Extension]? = nil,
		facility: Reference? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		insurer: Reference? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference? = nil,
		patient: Reference? = nil,
		priority: CodeableConcept? = nil,
		provider: Reference? = nil,
		serviced: ServicedX? = nil,
		status: FHIRPrimitive<FHIRString>? = nil,
		text: Narrative? = nil
	) {
		self.benefitCategory = benefitCategory
		self.benefitSubCategory = benefitSubCategory
		self.businessArrangement = businessArrangement
		self.contained = contained
		self.coverage = coverage
		self.created = created
		self.enterer = enterer
		self.`extension` = `extension`
		self.facility = facility
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.insurer = insurer
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.patient = patient
		self.priority = priority
		self.provider = provider
		self.serviced = serviced
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case benefitCategory
		case benefitSubCategory
		case businessArrangement; case _businessArrangement
		case contained
		case coverage
		case created; case _created
		case enterer
		case `extension` = "extension"
		case facility
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case insurer
		case language; case _language
		case meta
		case modifierExtension
		case organization
		case patient
		case priority
		case provider
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.benefitCategory = try CodeableConcept(from: _container, forKeyIfPresent: .benefitCategory)
		self.benefitSubCategory = try CodeableConcept(from: _container, forKeyIfPresent: .benefitSubCategory)
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		self.serviced = try Self._decodeServiced(from: _container)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try benefitCategory?.encode(on: &_container, forKey: .benefitCategory)
		try benefitSubCategory?.encode(on: &_container, forKey: .benefitSubCategory)
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try contained?.encode(on: &_container, forKey: .contained)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try facility?.encode(on: &_container, forKey: .facility)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try insurer?.encode(on: &_container, forKey: .insurer)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization?.encode(on: &_container, forKey: .organization)
		try patient?.encode(on: &_container, forKey: .patient)
		try priority?.encode(on: &_container, forKey: .priority)
		try provider?.encode(on: &_container, forKey: .provider)
		if let _enum = serviced {
		switch _enum {
		case .date(let _value):
			try _value.encode(on: &_container, forKey: .servicedDate, auxiliaryKey: ._servicedDate)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .servicedPeriod)
		}
		}
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeServiced(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ServicedX? {
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		return _t_serviced
	}
}
