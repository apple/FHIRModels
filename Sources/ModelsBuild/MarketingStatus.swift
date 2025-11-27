//
//  MarketingStatus.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/MarketingStatus)
//  Copyright 2025 Apple Inc.
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
 The marketing status describes the date when an item is actually put on the market or the date as of which it is no
 longer available.
 */
open class MarketingStatus: BackboneType {
	
	/// The country in which the marketing status applies
	public var country: CodeableConcept?
	
	/// The jurisdiction in which the marketing status applies
	public var jurisdiction: CodeableConcept?
	
	/// This attribute provides information on the status of the marketing of the item
	public var status: CodeableConcept
	
	/// The dates that the item is made available on the market by the owner (or where applicable, the
	/// manufacturer/distributor) in a country and/or jurisdiction. Note that “on the market” refers to the release of
	/// the item into the distribution chain
	public var dateRange: Period?
	
	/// The date when the item is due to be placed back on the market by the owner, manufacturer or distributor, after a
	/// suspension
	public var restoreDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	public init(status: CodeableConcept) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		country: CodeableConcept? = nil,
		dateRange: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		restoreDate: FHIRPrimitive<DateTime>? = nil,
		status: CodeableConcept
	) {
		self.init(status: status)
		self.country = country
		self.dateRange = dateRange
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
		self.restoreDate = restoreDate
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case dateRange
		case jurisdiction
		case restoreDate; case _restoreDate
		case status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.country = try CodeableConcept(from: _container, forKeyIfPresent: .country)
		self.dateRange = try Period(from: _container, forKeyIfPresent: .dateRange)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		self.restoreDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .restoreDate, auxiliaryKey: ._restoreDate)
		self.status = try CodeableConcept(from: _container, forKey: .status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try country?.encode(on: &_container, forKey: .country)
		try dateRange?.encode(on: &_container, forKey: .dateRange)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try restoreDate?.encode(on: &_container, forKey: .restoreDate, auxiliaryKey: ._restoreDate)
		try status.encode(on: &_container, forKey: .status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? MarketingStatus else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return country == _other.country
		    && dateRange == _other.dateRange
		    && jurisdiction == _other.jurisdiction
		    && restoreDate == _other.restoreDate
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(country)
		hasher.combine(dateRange)
		hasher.combine(jurisdiction)
		hasher.combine(restoreDate)
		hasher.combine(status)
	}
}
