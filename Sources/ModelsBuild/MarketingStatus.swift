//
//  MarketingStatus.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/MarketingStatus)
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
 The marketing status describes the date when an item is actually put on the market or the date as of which it is no
 longer available.
 */
public struct MarketingStatus: BackboneType {
	
	/// The country in which the marketing status applies
	public var country: CodeableConcept?
	
	/// The dates that the item is made available on the market by the owner (or where applicable, the
	/// manufacturer/distributor) in a country and/or jurisdiction. Note that “on the market” refers to the release of
	/// the item into the distribution chain
	public var dateRange: Period?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// The jurisdiction in which the marketing status applies
	public var jurisdiction: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The date when the item is due to be placed back on the market by the owner, manufacturer or distributor, after a
	/// suspension
	public var restoreDate: FHIRPrimitive<DateTime>?
	
	/// This attribute provides information on the status of the marketing of the item
	public var status: CodeableConcept
	
	/// Designated initializer
	public init(
		country: CodeableConcept? = nil,
		dateRange: Period? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		jurisdiction: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		restoreDate: FHIRPrimitive<DateTime>? = nil,
		status: CodeableConcept
	) {
		self.country = country
		self.dateRange = dateRange
		self.`extension` = `extension`
		self.id = id
		self.jurisdiction = jurisdiction
		self.modifierExtension = modifierExtension
		self.restoreDate = restoreDate
		self.status = status
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case country
		case dateRange
		case `extension` = "extension"
		case id; case _id
		case jurisdiction
		case modifierExtension
		case restoreDate; case _restoreDate
		case status
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.country = try CodeableConcept(from: _container, forKeyIfPresent: .country)
		self.dateRange = try Period(from: _container, forKeyIfPresent: .dateRange)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.jurisdiction = try CodeableConcept(from: _container, forKeyIfPresent: .jurisdiction)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.restoreDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .restoreDate, auxiliaryKey: ._restoreDate)
		self.status = try CodeableConcept(from: _container, forKey: .status)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try country?.encode(on: &_container, forKey: .country)
		try dateRange?.encode(on: &_container, forKey: .dateRange)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try restoreDate?.encode(on: &_container, forKey: .restoreDate, auxiliaryKey: ._restoreDate)
		try status.encode(on: &_container, forKey: .status)
	}
}
