//
//  DeviceAlert.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/DeviceAlert)
//  Copyright 2024 Apple Inc.
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
 Describes a noteworthy condition or occurrence determined to exist by a medical device.
 
 Describes a noteworthycondition or occurrence determined to exist by a device.
 */
open class DeviceAlert: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceAlert }
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// None
	public var status: FHIRPrimitive<DeviceAlertStatus>
	
	/// The condition, event, or state being reported
	public var condition: DeviceAlertCondition
	
	/// The alert priority is usually reported by the source. A priority of `info` may indicate that the alert is "for
	/// information only" and not urgent action is required. The element may be omitted if the priority is unknown.
	public var priority: FHIRPrimitive<DeviceAlertPriority>?
	
	/// None
	public var type: FHIRPrimitive<DeviceAlertType>?
	
	/// The who or what the alert is about
	public var subject: Reference
	
	/// The device (or DeviceMetric) that detected the alert condition
	public var source: Reference?
	
	/// The value causing the alert condition
	public var derivedFrom: [Reference]?
	
	/// Text to be displayed for the alert condition
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Annunciation or notification of the alert condition
	public var signal: [DeviceAlertSignal]?
	
	/// Designated initializer taking all required properties
	public init(condition: DeviceAlertCondition, status: FHIRPrimitive<DeviceAlertStatus>, subject: Reference) {
		self.condition = condition
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		condition: DeviceAlertCondition,
		contained: [ResourceProxy]? = nil,
		derivedFrom: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		priority: FHIRPrimitive<DeviceAlertPriority>? = nil,
		signal: [DeviceAlertSignal]? = nil,
		source: Reference? = nil,
		status: FHIRPrimitive<DeviceAlertStatus>,
		subject: Reference,
		text: Narrative? = nil,
		type: FHIRPrimitive<DeviceAlertType>? = nil
	) {
		self.init(condition: condition, status: status, subject: subject)
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.label = label
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.priority = priority
		self.signal = signal
		self.source = source
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case condition
		case derivedFrom
		case identifier
		case label; case _label
		case priority; case _priority
		case signal
		case source
		case status; case _status
		case subject
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.condition = try DeviceAlertCondition(from: _container, forKey: .condition)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.priority = try FHIRPrimitive<DeviceAlertPriority>(from: _container, forKeyIfPresent: .priority, auxiliaryKey: ._priority)
		self.signal = try [DeviceAlertSignal](from: _container, forKeyIfPresent: .signal)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.status = try FHIRPrimitive<DeviceAlertStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.type = try FHIRPrimitive<DeviceAlertType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try condition.encode(on: &_container, forKey: .condition)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try priority?.encode(on: &_container, forKey: .priority, auxiliaryKey: ._priority)
		try signal?.encode(on: &_container, forKey: .signal)
		try source?.encode(on: &_container, forKey: .source)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAlert else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return condition == _other.condition
		    && derivedFrom == _other.derivedFrom
		    && identifier == _other.identifier
		    && label == _other.label
		    && priority == _other.priority
		    && signal == _other.signal
		    && source == _other.source
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(condition)
		hasher.combine(derivedFrom)
		hasher.combine(identifier)
		hasher.combine(label)
		hasher.combine(priority)
		hasher.combine(signal)
		hasher.combine(source)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 The condition, event, or state being reported.
 */
open class DeviceAlertCondition: BackboneElement {
	
	/// The meaning of the alert
	public var code: CodeableConcept
	
	/// The alert condition is currently occuring
	public var presence: FHIRPrimitive<FHIRBool>
	
	/// The period during which the condition was active
	public var timing: Period?
	
	/// The boundaries outside of which a value was detected to cause the alert condition
	public var limit: Range?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, presence: FHIRPrimitive<FHIRBool>) {
		self.code = code
		self.presence = presence
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		code: CodeableConcept,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		limit: Range? = nil,
		modifierExtension: [Extension]? = nil,
		presence: FHIRPrimitive<FHIRBool>,
		timing: Period? = nil
	) {
		self.init(code: code, presence: presence)
		self.`extension` = `extension`
		self.id = id
		self.limit = limit
		self.modifierExtension = modifierExtension
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case code
		case limit
		case presence; case _presence
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.limit = try Range(from: _container, forKeyIfPresent: .limit)
		self.presence = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .presence, auxiliaryKey: ._presence)
		self.timing = try Period(from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try code.encode(on: &_container, forKey: .code)
		try limit?.encode(on: &_container, forKey: .limit)
		try presence.encode(on: &_container, forKey: .presence, auxiliaryKey: ._presence)
		try timing?.encode(on: &_container, forKey: .timing)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAlertCondition else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return code == _other.code
		    && limit == _other.limit
		    && presence == _other.presence
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(code)
		hasher.combine(limit)
		hasher.combine(presence)
		hasher.combine(timing)
	}
}

/**
 Annunciation or notification of the alert condition.
 */
open class DeviceAlertSignal: BackboneElement {
	
	/// Paused indicates that annunciation has temporarily been disabled ("snooze").
	public var activationState: FHIRPrimitive<DeviceAlertActivationState>
	
	/// Indicates whether the signal is currently being annunciated. An on signal is currently being annunciated; a
	/// latched signal is currently being being annunciated although the alert condition has ended; an off signal is not
	/// currently being annunciated; and an acknowledged signal is not currently being annuciated because the user has
	/// acknowledged the signal.
	public var presence: FHIRPrimitive<DeviceAlertPresence>?
	
	/// Where the signal is being annunciated
	public var annunciator: CodeableReference?
	
	/// How the signal is being annunciated
	public var manifestation: [CodeableConcept]?
	
	/// Characteristics of the signal manifestation
	public var type: [CodeableConcept]?
	
	/// When the signal was being annuciated
	public var indication: Period?
	
	/// Designated initializer taking all required properties
	public init(activationState: FHIRPrimitive<DeviceAlertActivationState>) {
		self.activationState = activationState
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		activationState: FHIRPrimitive<DeviceAlertActivationState>,
		annunciator: CodeableReference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		indication: Period? = nil,
		manifestation: [CodeableConcept]? = nil,
		modifierExtension: [Extension]? = nil,
		presence: FHIRPrimitive<DeviceAlertPresence>? = nil,
		type: [CodeableConcept]? = nil
	) {
		self.init(activationState: activationState)
		self.annunciator = annunciator
		self.`extension` = `extension`
		self.id = id
		self.indication = indication
		self.manifestation = manifestation
		self.modifierExtension = modifierExtension
		self.presence = presence
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case activationState; case _activationState
		case annunciator
		case indication
		case manifestation
		case presence; case _presence
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.activationState = try FHIRPrimitive<DeviceAlertActivationState>(from: _container, forKey: .activationState, auxiliaryKey: ._activationState)
		self.annunciator = try CodeableReference(from: _container, forKeyIfPresent: .annunciator)
		self.indication = try Period(from: _container, forKeyIfPresent: .indication)
		self.manifestation = try [CodeableConcept](from: _container, forKeyIfPresent: .manifestation)
		self.presence = try FHIRPrimitive<DeviceAlertPresence>(from: _container, forKeyIfPresent: .presence, auxiliaryKey: ._presence)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try activationState.encode(on: &_container, forKey: .activationState, auxiliaryKey: ._activationState)
		try annunciator?.encode(on: &_container, forKey: .annunciator)
		try indication?.encode(on: &_container, forKey: .indication)
		try manifestation?.encode(on: &_container, forKey: .manifestation)
		try presence?.encode(on: &_container, forKey: .presence, auxiliaryKey: ._presence)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceAlertSignal else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return activationState == _other.activationState
		    && annunciator == _other.annunciator
		    && indication == _other.indication
		    && manifestation == _other.manifestation
		    && presence == _other.presence
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(activationState)
		hasher.combine(annunciator)
		hasher.combine(indication)
		hasher.combine(manifestation)
		hasher.combine(presence)
		hasher.combine(type)
	}
}
