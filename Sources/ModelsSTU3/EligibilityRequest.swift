//
//  EligibilityRequest.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest)
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
 Determine insurance validity and scope of coverage.
 
 The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the
 form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force and
 optionally to provide the insurance details of the policy.
 */
open class EligibilityRequest: DomainResource {
	
	override open class var resourceType: ResourceType { return .eligibilityRequest }
	
	/// All possible types for "serviced[x]"
	public enum ServicedX: Hashable {
		case date(FHIRPrimitive<FHIRDate>)
		case period(Period)
	}
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Desired processing priority
	public var priority: CodeableConcept?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Estimated date or dates of Service
	/// One of `serviced[x]`
	public var serviced: ServicedX?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Author
	public var enterer: Reference?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Target
	public var insurer: Reference?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Insurance or medical plan
	public var coverage: Reference?
	
	/// Business agreement
	public var businessArrangement: FHIRPrimitive<FHIRString>?
	
	/// Type of services covered
	public var benefitCategory: CodeableConcept?
	
	/// Detailed services covered within the type
	public var benefitSubCategory: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case benefitCategory
		case benefitSubCategory
		case businessArrangement; case _businessArrangement
		case coverage
		case created; case _created
		case enterer
		case facility
		case identifier
		case insurer
		case organization
		case patient
		case priority
		case provider
		case servicedDate; case _servicedDate
		case servicedPeriod
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.benefitCategory = try CodeableConcept(from: _container, forKeyIfPresent: .benefitCategory)
		self.benefitSubCategory = try CodeableConcept(from: _container, forKeyIfPresent: .benefitSubCategory)
		self.businessArrangement = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .businessArrangement, auxiliaryKey: ._businessArrangement)
		self.coverage = try Reference(from: _container, forKeyIfPresent: .coverage)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.enterer = try Reference(from: _container, forKeyIfPresent: .enterer)
		self.facility = try Reference(from: _container, forKeyIfPresent: .facility)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.insurer = try Reference(from: _container, forKeyIfPresent: .insurer)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.priority = try CodeableConcept(from: _container, forKeyIfPresent: .priority)
		self.provider = try Reference(from: _container, forKeyIfPresent: .provider)
		var _t_serviced: ServicedX? = nil
		if let servicedDate = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .servicedDate, auxiliaryKey: ._servicedDate) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedDate, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .date(servicedDate)
		}
		if let servicedPeriod = try Period(from: _container, forKeyIfPresent: .servicedPeriod) {
			if _t_serviced != nil {
				throw DecodingError.dataCorruptedError(forKey: .servicedPeriod, in: _container, debugDescription: "More than one value provided for \"serviced\"")
			}
			_t_serviced = .period(servicedPeriod)
		}
		self.serviced = _t_serviced
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try benefitCategory?.encode(on: &_container, forKey: .benefitCategory)
		try benefitSubCategory?.encode(on: &_container, forKey: .benefitSubCategory)
		try businessArrangement?.encode(on: &_container, forKey: .businessArrangement, auxiliaryKey: ._businessArrangement)
		try coverage?.encode(on: &_container, forKey: .coverage)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try enterer?.encode(on: &_container, forKey: .enterer)
		try facility?.encode(on: &_container, forKey: .facility)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try insurer?.encode(on: &_container, forKey: .insurer)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? EligibilityRequest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return benefitCategory == _other.benefitCategory
		    && benefitSubCategory == _other.benefitSubCategory
		    && businessArrangement == _other.businessArrangement
		    && coverage == _other.coverage
		    && created == _other.created
		    && enterer == _other.enterer
		    && facility == _other.facility
		    && identifier == _other.identifier
		    && insurer == _other.insurer
		    && organization == _other.organization
		    && patient == _other.patient
		    && priority == _other.priority
		    && provider == _other.provider
		    && serviced == _other.serviced
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(benefitCategory)
		hasher.combine(benefitSubCategory)
		hasher.combine(businessArrangement)
		hasher.combine(coverage)
		hasher.combine(created)
		hasher.combine(enterer)
		hasher.combine(facility)
		hasher.combine(identifier)
		hasher.combine(insurer)
		hasher.combine(organization)
		hasher.combine(patient)
		hasher.combine(priority)
		hasher.combine(provider)
		hasher.combine(serviced)
		hasher.combine(status)
	}
}
