//
//  VirtualServiceDetail.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/VirtualServiceDetail)
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
 Virtual Service Contact Details.
 */
public struct VirtualServiceDetail: DataType {
	
	/// All possible types for "address[x]"
	public enum AddressX: Equatable, Hashable, Sendable {
		indirect case contactPoint(ContactPoint)
		indirect case extendedContactDetail(ExtendedContactDetail)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// Address to see alternative connection details
	public var additionalInfo: [FHIRPrimitive<FHIRURI>]?
	
	/// Contact address/number
	/// One of `address[x]`
	public var address: AddressX?
	
	/// Channel Type
	public var channelType: Coding?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Maximum number of participants supported by the virtual service
	public var maxParticipants: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Session Key required by the virtual service
	public var sessionKey: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer
	public init(
		additionalInfo: [FHIRPrimitive<FHIRURI>]? = nil,
		address: AddressX? = nil,
		channelType: Coding? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxParticipants: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		sessionKey: FHIRPrimitive<FHIRString>? = nil
	) {
		self.additionalInfo = additionalInfo
		self.address = address
		self.channelType = channelType
		self.`extension` = `extension`
		self.id = id
		self.maxParticipants = maxParticipants
		self.sessionKey = sessionKey
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalInfo; case _additionalInfo
		case addressContactPoint
		case addressExtendedContactDetail
		case addressString; case _addressString
		case addressUrl; case _addressUrl
		case channelType
		case `extension` = "extension"
		case id; case _id
		case maxParticipants; case _maxParticipants
		case sessionKey; case _sessionKey
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalInfo = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .additionalInfo, auxiliaryKey: ._additionalInfo)
		self.address = try Self._decodeAddress(from: _container)
		self.channelType = try Coding(from: _container, forKeyIfPresent: .channelType)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxParticipants = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxParticipants, auxiliaryKey: ._maxParticipants)
		self.sessionKey = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sessionKey, auxiliaryKey: ._sessionKey)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalInfo?.encode(on: &_container, forKey: .additionalInfo, auxiliaryKey: ._additionalInfo)
		if let _enum = address {
		switch _enum {
		case .contactPoint(let _value):
			try _value.encode(on: &_container, forKey: .addressContactPoint)
		case .extendedContactDetail(let _value):
			try _value.encode(on: &_container, forKey: .addressExtendedContactDetail)
		case .string(let _value):
			try _value.encode(on: &_container, forKey: .addressString, auxiliaryKey: ._addressString)
		case .url(let _value):
			try _value.encode(on: &_container, forKey: .addressUrl, auxiliaryKey: ._addressUrl)
		}
		}
		try channelType?.encode(on: &_container, forKey: .channelType)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxParticipants?.encode(on: &_container, forKey: .maxParticipants, auxiliaryKey: ._maxParticipants)
		try sessionKey?.encode(on: &_container, forKey: .sessionKey, auxiliaryKey: ._sessionKey)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAddress(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AddressX? {
		var _t_address: AddressX? = nil
		if let addressContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .addressContactPoint) {
			_t_address = .contactPoint(addressContactPoint)
		}
		if let addressExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .addressExtendedContactDetail) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .extendedContactDetail(addressExtendedContactDetail)
		}
		if let addressString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .addressString, auxiliaryKey: ._addressString) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressString, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .string(addressString)
		}
		if let addressUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .addressUrl, auxiliaryKey: ._addressUrl) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressUrl, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .url(addressUrl)
		}
		return _t_address
	}
}
