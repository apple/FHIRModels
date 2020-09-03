//
//  Permission.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Permission)
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
 Permission.
 */
open class Permission: DomainResource {
	
	override open class var resourceType: ResourceType { return .permission }
	
	/// Status.
	public var status: FHIRPrimitive<PermissionStatus>
	
	/// grant|refuse
	public var intent: CodeableConcept?
	
	/// The person or entity that asserts the permission
	public var asserter: Reference?
	
	/// The date that permission was asserted
	public var assertionDate: [FHIRPrimitive<DateTime>]?
	
	/// The period in which the permission is active
	public var validity: Period?
	
	/// The purpose for which the permission is given
	public var purpose: [CodeableConcept]?
	
	/// This can be 1) the definition of data elements, or 2) a category or label) e.g. “sensitive”. It could also be a
	/// c) graph-like definition of a set of data elements
	public var dataScope: [Expression]?
	
	/// A description or definition of which activities are allowed to be done on the data
	public var processingActivity: [PermissionProcessingActivity]?
	
	/// The asserted justification for using the data
	public var justification: PermissionJustification?
	
	/// What limits apply to the use of the data
	public var usageLimitations: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<PermissionStatus>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							asserter: Reference? = nil,
							assertionDate: [FHIRPrimitive<DateTime>]? = nil,
							contained: [ResourceProxy]? = nil,
							dataScope: [Expression]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							intent: CodeableConcept? = nil,
							justification: PermissionJustification? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							processingActivity: [PermissionProcessingActivity]? = nil,
							purpose: [CodeableConcept]? = nil,
							status: FHIRPrimitive<PermissionStatus>,
							text: Narrative? = nil,
							usageLimitations: [CodeableConcept]? = nil,
							validity: Period? = nil)
	{
		self.init(status: status)
		self.asserter = asserter
		self.assertionDate = assertionDate
		self.contained = contained
		self.dataScope = dataScope
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.intent = intent
		self.justification = justification
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.processingActivity = processingActivity
		self.purpose = purpose
		self.text = text
		self.usageLimitations = usageLimitations
		self.validity = validity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case asserter
		case assertionDate; case _assertionDate
		case dataScope
		case intent
		case justification
		case processingActivity
		case purpose
		case status; case _status
		case usageLimitations
		case validity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.asserter = try Reference(from: _container, forKeyIfPresent: .asserter)
		self.assertionDate = try [FHIRPrimitive<DateTime>](from: _container, forKeyIfPresent: .assertionDate, auxiliaryKey: ._assertionDate)
		self.dataScope = try [Expression](from: _container, forKeyIfPresent: .dataScope)
		self.intent = try CodeableConcept(from: _container, forKeyIfPresent: .intent)
		self.justification = try PermissionJustification(from: _container, forKeyIfPresent: .justification)
		self.processingActivity = try [PermissionProcessingActivity](from: _container, forKeyIfPresent: .processingActivity)
		self.purpose = try [CodeableConcept](from: _container, forKeyIfPresent: .purpose)
		self.status = try FHIRPrimitive<PermissionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.usageLimitations = try [CodeableConcept](from: _container, forKeyIfPresent: .usageLimitations)
		self.validity = try Period(from: _container, forKeyIfPresent: .validity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try asserter?.encode(on: &_container, forKey: .asserter)
		try assertionDate?.encode(on: &_container, forKey: .assertionDate, auxiliaryKey: ._assertionDate)
		try dataScope?.encode(on: &_container, forKey: .dataScope)
		try intent?.encode(on: &_container, forKey: .intent)
		try justification?.encode(on: &_container, forKey: .justification)
		try processingActivity?.encode(on: &_container, forKey: .processingActivity)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try usageLimitations?.encode(on: &_container, forKey: .usageLimitations)
		try validity?.encode(on: &_container, forKey: .validity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Permission else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return asserter == _other.asserter
		    && assertionDate == _other.assertionDate
		    && dataScope == _other.dataScope
		    && intent == _other.intent
		    && justification == _other.justification
		    && processingActivity == _other.processingActivity
		    && purpose == _other.purpose
		    && status == _other.status
		    && usageLimitations == _other.usageLimitations
		    && validity == _other.validity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(asserter)
		hasher.combine(assertionDate)
		hasher.combine(dataScope)
		hasher.combine(intent)
		hasher.combine(justification)
		hasher.combine(processingActivity)
		hasher.combine(purpose)
		hasher.combine(status)
		hasher.combine(usageLimitations)
		hasher.combine(validity)
	}
}

/**
 The asserted justification for using the data.
 */
open class PermissionJustification: BackboneElement {
	
	/// Evidence – reference to consent, or a contract, or a policy, or a regulation, or an attachment that contains a
	/// screenshot
	public var evidence: [Reference]?
	
	/// This would be a codeableconcept, or a coding, which can be constrained to , for example, the 6 grounds for
	/// processing in GDPR
	public var grounds: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							evidence: [Reference]? = nil,
							`extension`: [Extension]? = nil,
							grounds: [CodeableConcept]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil)
	{
		self.init()
		self.evidence = evidence
		self.`extension` = `extension`
		self.grounds = grounds
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case evidence
		case grounds
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.evidence = try [Reference](from: _container, forKeyIfPresent: .evidence)
		self.grounds = try [CodeableConcept](from: _container, forKeyIfPresent: .grounds)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try evidence?.encode(on: &_container, forKey: .evidence)
		try grounds?.encode(on: &_container, forKey: .grounds)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionJustification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return evidence == _other.evidence
		    && grounds == _other.grounds
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(evidence)
		hasher.combine(grounds)
	}
}

/**
 A description or definition of which activities are allowed to be done on the data.
 */
open class PermissionProcessingActivity: BackboneElement {
	
	/// If the processing is a transfer, we must capture where it the data allowed or expected to be shared - with a
	/// party or person
	public var partyReference: [Reference]?
	
	/// If the processing is a transfer, or involves another party, we must capture where it the data allowed or
	/// expected to be shared - with a party or person. This can be a party instance or party type
	/// § Purpose – a specific purpose of the data
	public var partyCodeableConcept: [CodeableConcept]?
	
	/// The purpose for which the permission is given
	public var purpose: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							partyCodeableConcept: [CodeableConcept]? = nil,
							partyReference: [Reference]? = nil,
							purpose: [CodeableConcept]? = nil)
	{
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.partyCodeableConcept = partyCodeableConcept
		self.partyReference = partyReference
		self.purpose = purpose
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case partyCodeableConcept
		case partyReference
		case purpose
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.partyCodeableConcept = try [CodeableConcept](from: _container, forKeyIfPresent: .partyCodeableConcept)
		self.partyReference = try [Reference](from: _container, forKeyIfPresent: .partyReference)
		self.purpose = try [CodeableConcept](from: _container, forKeyIfPresent: .purpose)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try partyCodeableConcept?.encode(on: &_container, forKey: .partyCodeableConcept)
		try partyReference?.encode(on: &_container, forKey: .partyReference)
		try purpose?.encode(on: &_container, forKey: .purpose)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? PermissionProcessingActivity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return partyCodeableConcept == _other.partyCodeableConcept
		    && partyReference == _other.partyReference
		    && purpose == _other.purpose
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(partyCodeableConcept)
		hasher.combine(partyReference)
		hasher.combine(purpose)
	}
}
