//
//  VirtualServiceDetail.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/VirtualServiceDetail)
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
 Virtual Service Contact Details.
 
 The set of values required to describe a virtual service's connection details, including some limitations of the
 service.
 */
open class VirtualServiceDetail: DataType {
	
	/// All possible types for "address[x]"
	public enum AddressX: Hashable {
		case contactPoint(ContactPoint)
		case extendedContactDetail(ExtendedContactDetail)
		case string(FHIRPrimitive<FHIRString>)
		case url(FHIRPrimitive<FHIRURI>)
	}
	
	/// Channel Type
	public var channelType: Coding?
	
	/// Contact address/number
	/// One of `address[x]`
	public var address: AddressX?
	
	/// Web address to see alternative connection details
	public var additionalInfo: [FHIRPrimitive<FHIRURI>]?
	
	/// Maximum number of participants supported by the virtual service
	public var maxParticipants: FHIRPrimitive<FHIRPositiveInteger>?
	
	/// Session Key required by the virtual service
	public var sessionKey: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		additionalInfo: [FHIRPrimitive<FHIRURI>]? = nil,
		address: AddressX? = nil,
		channelType: Coding? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxParticipants: FHIRPrimitive<FHIRPositiveInteger>? = nil,
		sessionKey: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
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
		case maxParticipants; case _maxParticipants
		case sessionKey; case _sessionKey
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalInfo = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .additionalInfo, auxiliaryKey: ._additionalInfo)
		var _t_address: AddressX? = nil
		if let addressUrl = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .addressUrl, auxiliaryKey: ._addressUrl) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressUrl, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .url(addressUrl)
		}
		if let addressString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .addressString, auxiliaryKey: ._addressString) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressString, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .string(addressString)
		}
		if let addressContactPoint = try ContactPoint(from: _container, forKeyIfPresent: .addressContactPoint) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressContactPoint, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .contactPoint(addressContactPoint)
		}
		if let addressExtendedContactDetail = try ExtendedContactDetail(from: _container, forKeyIfPresent: .addressExtendedContactDetail) {
			if _t_address != nil {
				throw DecodingError.dataCorruptedError(forKey: .addressExtendedContactDetail, in: _container, debugDescription: "More than one value provided for \"address\"")
			}
			_t_address = .extendedContactDetail(addressExtendedContactDetail)
		}
		self.address = _t_address
		self.channelType = try Coding(from: _container, forKeyIfPresent: .channelType)
		self.maxParticipants = try FHIRPrimitive<FHIRPositiveInteger>(from: _container, forKeyIfPresent: .maxParticipants, auxiliaryKey: ._maxParticipants)
		self.sessionKey = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sessionKey, auxiliaryKey: ._sessionKey)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additionalInfo?.encode(on: &_container, forKey: .additionalInfo, auxiliaryKey: ._additionalInfo)
		if let _enum = address {
			switch _enum {
			case .url(let _value):
				try _value.encode(on: &_container, forKey: .addressUrl, auxiliaryKey: ._addressUrl)
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .addressString, auxiliaryKey: ._addressString)
			case .contactPoint(let _value):
				try _value.encode(on: &_container, forKey: .addressContactPoint)
			case .extendedContactDetail(let _value):
				try _value.encode(on: &_container, forKey: .addressExtendedContactDetail)
			}
		}
		try channelType?.encode(on: &_container, forKey: .channelType)
		try maxParticipants?.encode(on: &_container, forKey: .maxParticipants, auxiliaryKey: ._maxParticipants)
		try sessionKey?.encode(on: &_container, forKey: .sessionKey, auxiliaryKey: ._sessionKey)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VirtualServiceDetail else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalInfo == _other.additionalInfo
		    && address == _other.address
		    && channelType == _other.channelType
		    && maxParticipants == _other.maxParticipants
		    && sessionKey == _other.sessionKey
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalInfo)
		hasher.combine(address)
		hasher.combine(channelType)
		hasher.combine(maxParticipants)
		hasher.combine(sessionKey)
	}
}
