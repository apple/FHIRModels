//
//  ProcessResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ProcessResponse)
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
	
	/// Request reference
	public var request: Reference?
	
	/// Processing outcome
	public var outcome: Coding?
	
	/// Disposition Message
	public var disposition: FHIRPrimitive<FHIRString>?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Creation date
	public var created: FHIRPrimitive<DateTime>?
	
	/// Authoring Organization
	public var organization: Reference?
	
	/// Responsible Practitioner
	public var requestProvider: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Notes
	public var notes: [ProcessResponseNotes]?
	
	/// Error code
	public var error: [Coding]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							created: FHIRPrimitive<DateTime>? = nil,
							disposition: FHIRPrimitive<FHIRString>? = nil,
							error: [Coding]? = nil,
							`extension`: [Extension]? = nil,
							form: Coding? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							notes: [ProcessResponseNotes]? = nil,
							organization: Reference? = nil,
							originalRuleset: Coding? = nil,
							outcome: Coding? = nil,
							request: Reference? = nil,
							requestOrganization: Reference? = nil,
							requestProvider: Reference? = nil,
							ruleset: Coding? = nil,
							text: Narrative? = nil)
	{
		self.init()
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
		self.notes = notes
		self.organization = organization
		self.originalRuleset = originalRuleset
		self.outcome = outcome
		self.request = request
		self.requestOrganization = requestOrganization
		self.requestProvider = requestProvider
		self.ruleset = ruleset
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case created; case _created
		case disposition; case _disposition
		case error
		case form
		case identifier
		case notes
		case organization
		case originalRuleset
		case outcome
		case request
		case requestOrganization
		case requestProvider
		case ruleset
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.created = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .created, auxiliaryKey: ._created)
		self.disposition = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .disposition, auxiliaryKey: ._disposition)
		self.error = try [Coding](from: _container, forKeyIfPresent: .error)
		self.form = try Coding(from: _container, forKeyIfPresent: .form)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.notes = try [ProcessResponseNotes](from: _container, forKeyIfPresent: .notes)
		self.organization = try Reference(from: _container, forKeyIfPresent: .organization)
		self.originalRuleset = try Coding(from: _container, forKeyIfPresent: .originalRuleset)
		self.outcome = try Coding(from: _container, forKeyIfPresent: .outcome)
		self.request = try Reference(from: _container, forKeyIfPresent: .request)
		self.requestOrganization = try Reference(from: _container, forKeyIfPresent: .requestOrganization)
		self.requestProvider = try Reference(from: _container, forKeyIfPresent: .requestProvider)
		self.ruleset = try Coding(from: _container, forKeyIfPresent: .ruleset)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try created?.encode(on: &_container, forKey: .created, auxiliaryKey: ._created)
		try disposition?.encode(on: &_container, forKey: .disposition, auxiliaryKey: ._disposition)
		try error?.encode(on: &_container, forKey: .error)
		try form?.encode(on: &_container, forKey: .form)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try notes?.encode(on: &_container, forKey: .notes)
		try organization?.encode(on: &_container, forKey: .organization)
		try originalRuleset?.encode(on: &_container, forKey: .originalRuleset)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try request?.encode(on: &_container, forKey: .request)
		try requestOrganization?.encode(on: &_container, forKey: .requestOrganization)
		try requestProvider?.encode(on: &_container, forKey: .requestProvider)
		try ruleset?.encode(on: &_container, forKey: .ruleset)
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
		return created == _other.created
		    && disposition == _other.disposition
		    && error == _other.error
		    && form == _other.form
		    && identifier == _other.identifier
		    && notes == _other.notes
		    && organization == _other.organization
		    && originalRuleset == _other.originalRuleset
		    && outcome == _other.outcome
		    && request == _other.request
		    && requestOrganization == _other.requestOrganization
		    && requestProvider == _other.requestProvider
		    && ruleset == _other.ruleset
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(created)
		hasher.combine(disposition)
		hasher.combine(error)
		hasher.combine(form)
		hasher.combine(identifier)
		hasher.combine(notes)
		hasher.combine(organization)
		hasher.combine(originalRuleset)
		hasher.combine(outcome)
		hasher.combine(request)
		hasher.combine(requestOrganization)
		hasher.combine(requestProvider)
		hasher.combine(ruleset)
	}
}

/**
 Notes.
 
 Suite of processing note or additional requirements is the processing has been held.
 */
open class ProcessResponseNotes: BackboneElement {
	
	/// display | print | printoper
	public var type: Coding?
	
	/// Notes text
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
							type: Coding? = nil)
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
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
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
		guard let _other = _other as? ProcessResponseNotes else {
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
