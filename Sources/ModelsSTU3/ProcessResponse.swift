//
//  ProcessResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/ProcessResponse)
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
 ProcessResponse resource.
 
 This resource provides processing status, errors and notes from the processing of a resource.
 */
open class ProcessResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .processResponse }
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// active | cancelled | draft | entered-in-error
	public var status: FHIRPrimitive<FHIRString>?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Authoring Organization
	public var organization: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Processing outcome
	public var outcome: CodeableConcept?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Responsible Practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Printed Form Identifier
	public var form: CodeableConcept?
	
	/// Processing comments or additional requirements
	public var processNote: [ProcessResponseProcessNote]?
	
	/// Error code
	public var error: [CodeableConcept]?
	
	/// Request for additional information
	public var communicationRequest: [Reference]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							communicationRequest: [Reference]? = nil,
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							error: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							form: CodeableConcept? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference? = nil,
							outcome: CodeableConcept? = nil,
							processNote: [ProcessResponseProcessNote]? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							status: FHIRPrimitive<FHIRString>? = nil,
							text: Narrative? = nil)
	{
		self.init()
		self.communicationRequest = communicationRequest
		self.contained = contained
		self.created = created
		self.disposition = disposition
		self.error = error
		self.`extension` = `extension`
		self.form = form
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.organization = organization
		self.outcome = outcome
		self.processNote = processNote
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.status = status
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case communicationRequest
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case organization
		case outcome
		case processNote
		case request
		case requestOrganization
		case requestProvider
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.communicationRequest = try [Reference](from: _container, forKeyIfPresent: .communicationRequest)
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [CodeableConcept](from: _container, forKeyIfPresent: .error)
		self.form = try CodeableConcept(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.outcome = try CodeableConcept(from: _container, forKeyIfPresent: .outcome)
		self.processNote = try [ProcessResponseProcessNote](from: _container, forKeyIfPresent: .processNote)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try communicationRequest?.encode(on: &_container, forKey: .communicationRequest)
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try organization?.encode(on: &_container, forKey: .organization)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try processNote?.encode(on: &_container, forKey: .processNote)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcessResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return communicationRequest == _other.communicationRequest
		    && created == _other.created
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && identifier == _other.identifier
		    && organization == _other.organization
		    && outcome == _other.outcome
		    && processNote == _other.processNote
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(communicationRequest)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(organization)
		hasher.combine(outcome)
		hasher.combine(processNote)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(status)
	}
}

/**
 Processing comments or additional requirements.
 
 Suite of processing notes or additional requirements if the processing has been held.
 */
open class ProcessResponseProcessNote: BackboneElement {
	
	/// display | print | printoper
	public var type: CodeableConcept?
	
	/// Comment on the processing
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							text: FHIRPrimitive<FHIRString>? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case text; case _text
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ProcessResponseProcessNote else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return text == _other.text
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(text)
		hasher.combine(type)
	}
}
