//
//  DeviceMetric.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DeviceMetric)
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
 Measurement, calculation or setting capability of a medical device.
 
 Describes a measurement, calculation or setting capability of a medical device.
 */
open class DeviceMetric: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceMetric }
	
	/// Unique identifier of this DeviceMetric
	public var identifier: Identifier
	
	/// Identity of metric, for example Heart Rate or PEEP Setting
	public var type: CodeableConcept
	
	/// Unit of Measure for the Metric
	public var unit: CodeableConcept?
	
	/// Describes the link to the source Device
	public var source: Reference?
	
	/// Describes the link to the parent DeviceComponent
	public var parent: Reference?
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>?
	
	/// Describes the color representation for the metric. This is often used to aid clinicians to track and identify
	/// parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the
	/// parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2-
	/// magenta.
	public var color: FHIRPrimitive<DeviceMetricColor>?
	
	/// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting,
	/// measurement, or calculation.
	public var category: FHIRPrimitive<DeviceMetricCategory>
	
	/// Describes the measurement repetition time
	public var measurementPeriod: Timing?
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibration: [DeviceMetricCalibration]?
	
	/// Designated initializer taking all required properties
	public init(category: FHIRPrimitive<DeviceMetricCategory>, identifier: Identifier, type: CodeableConcept) {
		self.category = category
		self.identifier = identifier
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							calibration: [DeviceMetricCalibration]? = nil,
							category: FHIRPrimitive<DeviceMetricCategory>,
							color: FHIRPrimitive<DeviceMetricColor>? = nil,
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							measurementPeriod: Timing? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>? = nil,
							parent: Reference? = nil,
							source: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept,
							unit: CodeableConcept? = nil)
	{
		self.init(category: category, identifier: identifier, type: type)
		self.calibration = calibration
		self.color = color
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.measurementPeriod = measurementPeriod
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operationalStatus = operationalStatus
		self.parent = parent
		self.source = source
		self.text = text
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case calibration
		case category; case _category
		case color; case _color
		case identifier
		case measurementPeriod
		case operationalStatus; case _operationalStatus
		case parent
		case source
		case type
		case unit
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.calibration = try [DeviceMetricCalibration](from: _container, forKeyIfPresent: .calibration)
		self.category = try FHIRPrimitive<DeviceMetricCategory>(from: _container, forKey: .category, auxiliaryKey: ._category)
		self.color = try FHIRPrimitive<DeviceMetricColor>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.measurementPeriod = try Timing(from: _container, forKeyIfPresent: .measurementPeriod)
		self.operationalStatus = try FHIRPrimitive<DeviceMetricOperationalStatus>(from: _container, forKeyIfPresent: .operationalStatus, auxiliaryKey: ._operationalStatus)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		self.unit = try CodeableConcept(from: _container, forKeyIfPresent: .unit)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try calibration?.encode(on: &_container, forKey: .calibration)
		try category.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try identifier.encode(on: &_container, forKey: .identifier)
		try measurementPeriod?.encode(on: &_container, forKey: .measurementPeriod)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus, auxiliaryKey: ._operationalStatus)
		try parent?.encode(on: &_container, forKey: .parent)
		try source?.encode(on: &_container, forKey: .source)
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
		return calibration == _other.calibration
		    && category == _other.category
		    && color == _other.color
		    && identifier == _other.identifier
		    && measurementPeriod == _other.measurementPeriod
		    && operationalStatus == _other.operationalStatus
		    && parent == _other.parent
		    && source == _other.source
		    && type == _other.type
		    && unit == _other.unit
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(calibration)
		hasher.combine(category)
		hasher.combine(color)
		hasher.combine(identifier)
		hasher.combine(measurementPeriod)
		hasher.combine(operationalStatus)
		hasher.combine(parent)
		hasher.combine(source)
		hasher.combine(type)
		hasher.combine(unit)
	}
}

/**
 Describes the calibrations that have been performed or that are required to be performed.
 */
open class DeviceMetricCalibration: BackboneElement {
	
	/// Describes the type of the calibration method.
	public var type: FHIRPrimitive<DeviceMetricCalibrationType>?
	
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
							type: FHIRPrimitive<DeviceMetricCalibrationType>? = nil)
	{
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
		case type; case _type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.state = try FHIRPrimitive<DeviceMetricCalibrationState>(from: _container, forKeyIfPresent: .state, auxiliaryKey: ._state)
		self.time = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .time, auxiliaryKey: ._time)
		self.type = try FHIRPrimitive<DeviceMetricCalibrationType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try state?.encode(on: &_container, forKey: .state, auxiliaryKey: ._state)
		try time?.encode(on: &_container, forKey: .time, auxiliaryKey: ._time)
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
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
