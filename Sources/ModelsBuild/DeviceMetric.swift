//
//  DeviceMetric.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DeviceMetric)
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
 Measurement, calculation or setting capability of a medical device.
 
 Describes a measurement, calculation or setting capability of a device.
 */
open class DeviceMetric: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceMetric }
	
	/// Instance identifier
	public var identifier: [Identifier]?
	
	/// Indicates current state of the record.
	public var status: FHIRPrimitive<DeviceMetricStatus>
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>?
	
	/// The kind of metric represented
	public var category: CodeableConcept
	
	/// Identity of metric, for example Heart Rate or PEEP Setting
	public var type: CodeableConcept
	
	/// The device to which this DeviceMetric applies
	public var device: Reference
	
	/// Unit of Measure for the Metric
	public var unit: CodeableConcept?
	
	/// Color name (from CSS4) or #RRGGBB code
	public var color: FHIRPrimitive<FHIRString>?
	
	/// Indicates how often the metric is taken or recorded
	public var measurementFrequency: Quantity?
	
	/// The continuity of the metric (e.g., measurement)
	public var availability: CodeableConcept?
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibration: [DeviceMetricCalibration]?
	
	/// Designated initializer taking all required properties
	public init(category: CodeableConcept, device: Reference, status: FHIRPrimitive<DeviceMetricStatus>, type: CodeableConcept) {
		self.category = category
		self.device = device
		self.status = status
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(category: category, device: device, status: status, type: type)
		self.availability = availability
		self.calibration = calibration
		self.color = color
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.measurementFrequency = measurementFrequency
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operationalStatus = operationalStatus
		self.text = text
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case availability
		case calibration
		case category
		case color; case _color
		case device
		case identifier
		case measurementFrequency
		case operationalStatus; case _operationalStatus
		case status; case _status
		case type
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.availability = try CodeableConcept(from: _container, forKeyIfPresent: .availability)
		self.calibration = try [DeviceMetricCalibration](from: _container, forKeyIfPresent: .calibration)
		self.category = try CodeableConcept(from: _container, forKey: .category)
		self.color = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.device = try Reference(from: _container, forKey: .device)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.measurementFrequency = try Quantity(from: _container, forKeyIfPresent: .measurementFrequency)
		self.operationalStatus = try FHIRPrimitive<DeviceMetricOperationalStatus>(from: _container, forKeyIfPresent: .operationalStatus, auxiliaryKey: ._operationalStatus)
		self.status = try FHIRPrimitive<DeviceMetricStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try availability?.encode(on: &_container, forKey: .availability)
		try calibration?.encode(on: &_container, forKey: .calibration)
		try category.encode(on: &_container, forKey: .category)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try device.encode(on: &_container, forKey: .device)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try measurementFrequency?.encode(on: &_container, forKey: .measurementFrequency)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus, auxiliaryKey: ._operationalStatus)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try type.encode(on: &_container, forKey: .type)
		try unit?.encode(on: &_container, forKey: .unit)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceMetric else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return availability == _other.availability
		    && calibration == _other.calibration
		    && category == _other.category
		    && color == _other.color
		    && device == _other.device
		    && identifier == _other.identifier
		    && measurementFrequency == _other.measurementFrequency
		    && operationalStatus == _other.operationalStatus
		    && status == _other.status
		    && type == _other.type
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(availability)
		hasher.combine(calibration)
		hasher.combine(category)
		hasher.combine(color)
		hasher.combine(device)
		hasher.combine(identifier)
		hasher.combine(measurementFrequency)
		hasher.combine(operationalStatus)
		hasher.combine(status)
		hasher.combine(type)
		hasher.combine(unit)
	}
}

/**
 Describes the calibrations that have been performed or that are required to be performed.
 */
open class DeviceMetricCalibration: BackboneElement {
	
	/// The method of calibration
	public var type: CodeableConcept?
	
	/// Describes the state of the calibration.
	public var state: FHIRPrimitive<DeviceMetricCalibrationState>?
	
	/// Describes the time last calibration has been performed
	public var time: FHIRPrimitive<Instant>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		state: FHIRPrimitive<DeviceMetricCalibrationState>? = nil,
		time: FHIRPrimitive<Instant>? = nil,
		type: CodeableConcept? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.state = state
		self.time = time
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case state; case _state
		case time; case _time
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.state = try FHIRPrimitive<DeviceMetricCalibrationState>(from: _container, forKeyIfPresent: .state, auxiliaryKey: ._state)
		self.time = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try state?.encode(on: &_container, forKey: .state, auxiliaryKey: ._state)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceMetricCalibration else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return state == _other.state
		    && time == _other.time
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(state)
		hasher.combine(time)
		hasher.combine(type)
	}
}
