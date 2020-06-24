//
//  DetectedIssue.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/DetectedIssue)
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
 Clinical issue with action.
 
 Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a
 patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
open class DetectedIssue: DomainResource {
	
	override open class var resourceType: ResourceType { return .detectedIssue }
	
	/// Associated patient
	public var patient: Reference?
	
	/// Issue Category, e.g. drug-drug, duplicate therapy, etc.
	public var category: CodeableConcept?
	
	/// Indicates the degree of importance associated with the identified issue based on the potential impact on the
	/// patient.
	/// Restricted to: ['high', 'moderate', 'low']
	public var severity: FHIRPrimitive<DetectedIssueSeverity>?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// Description and context
	public var detail: FHIRPrimitive<FHIRString>?
	
	/// When identified
	public var date: FHIRPrimitive<DateTime>?
	
	/// The provider or device that identified the issue
	public var author: Reference?
	
	/// Unique id for the detected issue
	public var identifier: Identifier?
	
	/// Authority for issue
	public var reference: FHIRPrimitive<FHIRURI>?
	
	/// Step taken to address
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init()
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
		case author
		case category
		case date; case _date
		case detail; case _detail
		case identifier
		case implicated
		case mitigation
		case patient
		case reference; case _reference
		case severity; case _severity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.detail = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .detail, auxiliaryKey: ._detail)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicated = try [Reference](from: _container, forKeyIfPresent: .implicated)
		self.mitigation = try [DetectedIssueMitigation](from: _container, forKeyIfPresent: .mitigation)
		self.patient = try Reference(from: _container, forKeyIfPresent: .patient)
		self.reference = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .reference, auxiliaryKey: ._reference)
		self.severity = try FHIRPrimitive<DetectedIssueSeverity>(from: _container, forKeyIfPresent: .severity, auxiliaryKey: ._severity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try author?.encode(on: &_container, forKey: .author)
		try category?.encode(on: &_container, forKey: .category)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try detail?.encode(on: &_container, forKey: .detail, auxiliaryKey: ._detail)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicated?.encode(on: &_container, forKey: .implicated)
		try mitigation?.encode(on: &_container, forKey: .mitigation)
		try patient?.encode(on: &_container, forKey: .patient)
		try reference?.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try severity?.encode(on: &_container, forKey: .severity, auxiliaryKey: ._severity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DetectedIssue else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return author == _other.author
		    && category == _other.category
		    && date == _other.date
		    && detail == _other.detail
		    && identifier == _other.identifier
		    && implicated == _other.implicated
		    && mitigation == _other.mitigation
		    && patient == _other.patient
		    && reference == _other.reference
		    && severity == _other.severity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(author)
		hasher.combine(category)
		hasher.combine(date)
		hasher.combine(detail)
		hasher.combine(identifier)
		hasher.combine(implicated)
		hasher.combine(mitigation)
		hasher.combine(patient)
		hasher.combine(reference)
		hasher.combine(severity)
	}
}

/**
 Step taken to address.
 
 Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk identified
 by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
 reduce/eliminate the need for any action.
 */
open class DetectedIssueMitigation: BackboneElement {
	
	/// What mitigation?
	public var action: CodeableConcept
	
	/// Date committed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Who is committing?
	public var author: Reference?
	
	/// Designated initializer taking all required properties
	public init(action: CodeableConcept) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							action: CodeableConcept,
							author: Reference? = nil,
							date: FHIRPrimitive<DateTime>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init(action: action)
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try CodeableConcept(from: _container, forKey: .action)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try author?.encode(on: &_container, forKey: .author)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DetectedIssueMitigation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && author == _other.author
		    && date == _other.date
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(author)
		hasher.combine(date)
	}
}
