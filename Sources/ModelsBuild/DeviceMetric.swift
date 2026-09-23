//
//  DeviceMetric.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DeviceMetric)
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
 Measurement, calculation or setting capability of a medical device.
 
 Describes a measurement, calculation or setting capability of a device.
 */
public struct DeviceMetric: DomainResource {
	
	public static let resourceType: ResourceType = .deviceMetric
	
	/// The continuity of the metric (e.g., measurement)
	public var availability: CodeableConcept?
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibration: [DeviceMetricCalibration]?
	
	/// The kind of metric represented
	public var category: CodeableConcept
	
	/// Color name (from CSS4) or #RRGGBB code
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The device to which this DeviceMetric applies
	public var device: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Indicates how often the metric is taken or recorded
	public var measurementFrequency: Quantity?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>?
	
	/// Indicates current state of the record.
	public var status: FHIRPrimitive<DeviceMetricStatus>
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Identity of metric, for example Heart Rate or PEEP Setting
	public var type: CodeableConcept
	
	/// Unit of Measure for the Metric
	public var unit: CodeableConcept?
	
	/// Designated initializer
	public init(
		availability: CodeableConcept? = nil,
		calibration: [DeviceMetricCalibration]? = nil,
		category: CodeableConcept,
		color: FHIRPrimitive<FHIRString>? = nil,
		contained: [ResourceProxy]? = nil,
		device: Reference,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		measurementFrequency: Quantity? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>? = nil,
		status: FHIRPrimitive<DeviceMetricStatus>,
		text: Narrative? = nil,
		type: CodeableConcept,
		unit: CodeableConcept? = nil
	) {
		self.availability = availability
		self.calibration = calibration
		self.category = category
		self.color = color
		self.contained = contained
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.measurementFrequency = measurementFrequency
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operationalStatus = operationalStatus
		self.status = status
		self.text = text
		self.type = type
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case availability
		case calibration
		case category
		case color; case _color
		case contained
		case device
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case measurementFrequency
		case meta
		case modifierExtension
		case operationalStatus; case _operationalStatus
		case status; case _status
		case text
		case type
		case unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.availability = try CodeableConcept(from: _container, forKeyIfPresent: .availability)
		self.calibration = try [DeviceMetricCalibration](from: _container, forKeyIfPresent: .calibration)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.device = try Reference(from: _container, forKey: .device)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.measurementFrequency = try Quantity(from: _container, forKeyIfPresent: .measurementFrequency)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operationalStatus = try FHIRPrimitive<DeviceMetricOperationalStatus>(from: _container, forKeyIfPresent: .operationalStatus, auxiliaryKey: ._operationalStatus)
		self.status = try FHIRPrimitive<DeviceMetricStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try availability?.encode(on: &_container, forKey: .availability)
		try calibration?.encode(on: &_container, forKey: .calibration)
		try category.encode(on: &_container, forKey: .category)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try contained?.encode(on: &_container, forKey: .contained)
		try device.encode(on: &_container, forKey: .device)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try measurementFrequency?.encode(on: &_container, forKey: .measurementFrequency)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus, auxiliaryKey: ._operationalStatus)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}

/**
 Describes the calibrations that have been performed or that are required to be performed.
 */
public struct DeviceMetricCalibration: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Describes the state of the calibration.
	public var state: FHIRPrimitive<DeviceMetricCalibrationState>?
	
	/// Describes the time last calibration has been performed
	public var time: FHIRPrimitive<Instant>?
	
	/// The method of calibration
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		state: FHIRPrimitive<DeviceMetricCalibrationState>? = nil,
		time: FHIRPrimitive<Instant>? = nil,
		type: CodeableConcept? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.state = state
		self.time = time
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case state; case _state
		case time; case _time
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.state = try FHIRPrimitive<DeviceMetricCalibrationState>(from: _container, forKeyIfPresent: .state, auxiliaryKey: ._state)
		self.time = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try state?.encode(on: &_container, forKey: .state, auxiliaryKey: ._state)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type?.encode(on: &_container, forKey: .type)
	}
}
