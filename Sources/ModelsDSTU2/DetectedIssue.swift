//
//  DetectedIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DetectedIssue)
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
 Clinical issue with action.
 
 Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a
 patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public struct DetectedIssue: DomainResource {
	
	public static let resourceType: ResourceType = .detectedIssue
	
	/// The provider or device that identified the issue
	public var author: Reference?
	
	/// Issue Category, e.g. drug-drug, duplicate therapy, etc.
	public var category: CodeableConcept?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// When identified
	public var date: FHIRPrimitive<DateTime>?
	
	/// Description and context
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique id for the detected issue
	public var identifier: Identifier?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Step taken to address
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Associated patient
	public var patient: Reference?
	
	/// Authority for issue
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Indicates the degree of importance associated with the identified issue based on the potential impact on the
	/// patient.
	/// Restricted to: ['high', 'moderate', 'low']
	public var severity: FHIRPrimitive<DetectedIssueSeverity>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		author: Reference? = nil,
		category: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		detail: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicated: [Reference]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		mitigation: [DetectedIssueMitigation]? = nil,
		modifierExtension: [Extension]? = nil,
		patient: Reference? = nil,
		reference: FHIRPrimitive<FHIRURI>? = nil,
		severity: FHIRPrimitive<DetectedIssueSeverity>? = nil,
		text: Narrative? = nil
	) {
		self.author = author
		self.category = category
		self.contained = contained
		self.date = date
		self.detail = detail
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicated = implicated
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.mitigation = mitigation
		self.modifierExtension = modifierExtension
		self.patient = patient
		self.reference = reference
		self.severity = severity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case author
		case category
		case contained
		case date; case _date
		case detail; case _detail
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicated
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case mitigation
		case modifierExtension
		case patient
		case reference; case _reference
		case severity; case _severity
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicated = try [Reference](from: _container, forKeyIfPresent: .implicated)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.mitigation = try [DetectedIssueMitigation](from: _container, forKeyIfPresent: .mitigation)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.severity = try FHIRPrimitive<DetectedIssueSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try contained?.encode(on: &_container, forKey: .contained)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicated?.encode(on: &_container, forKey: .implicated)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try mitigation?.encode(on: &_container, forKey: .mitigation)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patient?.encode(on: &_container, forKey: .patient)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 Step taken to address.
 
 Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk identified
 by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
 reduce/eliminate the need for any action.
 */
public struct DetectedIssueMitigation: BackboneElement {
	
	/// What mitigation?
	public var action: CodeableConcept
	
	/// Who is committing?
	public var author: Reference?
	
	/// Date committed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		action: CodeableConcept,
		author: Reference? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.action = action
		self.author = author
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case author
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.action = try CodeableConcept(from: _container, forKey: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try action.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
