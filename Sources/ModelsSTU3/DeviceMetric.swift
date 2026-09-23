//
//  DeviceMetric.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/DeviceMetric)
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
 
 Describes a measurement, calculation or setting capability of a medical device.
 */
public struct DeviceMetric: DomainResource {
	
	public static let resourceType: ResourceType = .deviceMetric
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibration: [DeviceMetricCalibration]?
	
	/// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting,
	/// measurement, or calculation.
	public var category: FHIRPrimitive<DeviceMetricCategory>
	
	/// Describes the color representation for the metric. This is often used to aid clinicians to track and identify
	/// parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the
	/// parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2-
	/// magenta.
	public var color: FHIRPrimitive<DeviceMetricColor>?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Unique identifier of this DeviceMetric
	public var identifier: Identifier
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Describes the measurement repetition time
	public var measurementPeriod: Timing?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: FHIRPrimitive<DeviceMetricOperationalStatus>?
	
	/// Describes the link to the parent DeviceComponent
	public var parent: Reference?
	
	/// Describes the link to the source Device
	public var source: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Identity of metric, for example Heart Rate or PEEP Setting
	public var type: CodeableConcept
	
	/// Unit of Measure for the Metric
	public var unit: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		unit: CodeableConcept? = nil
	) {
		self.calibration = calibration
		self.category = category
		self.color = color
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.measurementPeriod = measurementPeriod
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operationalStatus = operationalStatus
		self.parent = parent
		self.source = source
		self.text = text
		self.type = type
		self.unit = unit
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case calibration
		case category; case _category
		case color; case _color
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case measurementPeriod
		case meta
		case modifierExtension
		case operationalStatus; case _operationalStatus
		case parent
		case source
		case text
		case type
		case unit
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.calibration = try [DeviceMetricCalibration](from: _container, forKeyIfPresent: .calibration)
		self.category = try FHIRPrimitive<DeviceMetricCategory>(from: _container, forKey: .category, auxiliaryKey: ._category)
		self.color = try FHIRPrimitive<DeviceMetricColor>(from: _container, forKeyIfPresent: .color, auxiliaryKey: ._color)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.measurementPeriod = try Timing(from: _container, forKeyIfPresent: .measurementPeriod)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operationalStatus = try FHIRPrimitive<DeviceMetricOperationalStatus>(from: _container, forKeyIfPresent: .operationalStatus, auxiliaryKey: ._operationalStatus)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
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
		try calibration?.encode(on: &_container, forKey: .calibration)
		try category.encode(on: &_container, forKey: .category, auxiliaryKey: ._category)
		try color?.encode(on: &_container, forKey: .color, auxiliaryKey: ._color)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try measurementPeriod?.encode(on: &_container, forKey: .measurementPeriod)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus, auxiliaryKey: ._operationalStatus)
		try parent?.encode(on: &_container, forKey: .parent)
		try source?.encode(on: &_container, forKey: .source)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
		try unit?.encode(on: &_container, forKey: .unit)
	}
}

/**
 Describes the calibrations that have been performed or that are required to be performed.
 */
public struct DeviceMetricCalibration: BackboneElement {
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Describes the state of the calibration.
	public var state: FHIRPrimitive<DeviceMetricCalibrationState>?
	
	/// Describes the time last calibration has been performed
	public var time: FHIRPrimitive<Instant>?
	
	/// Describes the type of the calibration method.
	public var type: FHIRPrimitive<DeviceMetricCalibrationType>?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		state: FHIRPrimitive<DeviceMetricCalibrationState>? = nil,
		time: FHIRPrimitive<Instant>? = nil,
		type: FHIRPrimitive<DeviceMetricCalibrationType>? = nil
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
		case type; case _type
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
		self.type = try FHIRPrimitive<DeviceMetricCalibrationType>(from: _container, forKeyIfPresent: .type, auxiliaryKey: ._type)
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
		try type?.encode(on: &_container, forKey: .type, auxiliaryKey: ._type)
	}
}
