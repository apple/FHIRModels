//
//  DeviceComponent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/DeviceComponent)
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
 An instance of a medical-related component of a medical device.
 
 The characteristics, operational status and capabilities of a medical-related component of a medical device.
 */
open class DeviceComponent: DomainResource {
	
	override open class var resourceType: ResourceType { return .deviceComponent }
	
	/// Instance id assigned by the software stack
	public var identifier: Identifier
	
	/// What kind of component it is
	public var type: CodeableConcept
	
	/// Recent system change timestamp
	public var lastSystemChange: FHIRPrimitive<Instant>?
	
	/// Top-level device resource link
	public var source: Reference?
	
	/// Parent resource link
	public var parent: Reference?
	
	/// Current operational status of the component, for example On, Off or Standby
	public var operationalStatus: [CodeableConcept]?
	
	/// Current supported parameter group
	public var parameterGroup: CodeableConcept?
	
	/// The physical principle of the measurement. For example: thermal, chemical, acoustical, etc.
	public var measurementPrinciple: FHIRPrimitive<MeasmntPrinciple>?
	
	/// Specification details such as Component Revisions, or Serial Numbers
	public var productionSpecification: [DeviceComponentProductionSpecification]?
	
	/// Language code for the human-readable text strings produced by the device
	public var languageCode: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(identifier: Identifier, type: CodeableConcept) {
		self.identifier = identifier
		self.type = type
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							contained: [ResourceProxy]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: Identifier,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							languageCode: CodeableConcept? = nil,
							lastSystemChange: FHIRPrimitive<Instant>? = nil,
							measurementPrinciple: FHIRPrimitive<MeasmntPrinciple>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							operationalStatus: [CodeableConcept]? = nil,
							parameterGroup: CodeableConcept? = nil,
							parent: Reference? = nil,
							productionSpecification: [DeviceComponentProductionSpecification]? = nil,
							source: Reference? = nil,
							text: Narrative? = nil,
							type: CodeableConcept)
	{
		self.init(identifier: identifier, type: type)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.languageCode = languageCode
		self.lastSystemChange = lastSystemChange
		self.measurementPrinciple = measurementPrinciple
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.operationalStatus = operationalStatus
		self.parameterGroup = parameterGroup
		self.parent = parent
		self.productionSpecification = productionSpecification
		self.source = source
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case identifier
		case languageCode
		case lastSystemChange; case _lastSystemChange
		case measurementPrinciple; case _measurementPrinciple
		case operationalStatus
		case parameterGroup
		case parent
		case productionSpecification
		case source
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.languageCode = try CodeableConcept(from: _container, forKeyIfPresent: .languageCode)
		self.lastSystemChange = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastSystemChange, auxiliaryKey: ._lastSystemChange)
		self.measurementPrinciple = try FHIRPrimitive<MeasmntPrinciple>(from: _container, forKeyIfPresent: .measurementPrinciple, auxiliaryKey: ._measurementPrinciple)
		self.operationalStatus = try [CodeableConcept](from: _container, forKeyIfPresent: .operationalStatus)
		self.parameterGroup = try CodeableConcept(from: _container, forKeyIfPresent: .parameterGroup)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.productionSpecification = try [DeviceComponentProductionSpecification](from: _container, forKeyIfPresent: .productionSpecification)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.type = try CodeableConcept(from: _container, forKey: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try identifier.encode(on: &_container, forKey: .identifier)
		try languageCode?.encode(on: &_container, forKey: .languageCode)
		try lastSystemChange?.encode(on: &_container, forKey: .lastSystemChange, auxiliaryKey: ._lastSystemChange)
		try measurementPrinciple?.encode(on: &_container, forKey: .measurementPrinciple, auxiliaryKey: ._measurementPrinciple)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try parameterGroup?.encode(on: &_container, forKey: .parameterGroup)
		try parent?.encode(on: &_container, forKey: .parent)
		try productionSpecification?.encode(on: &_container, forKey: .productionSpecification)
		try source?.encode(on: &_container, forKey: .source)
		try type.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceComponent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return identifier == _other.identifier
		    && languageCode == _other.languageCode
		    && lastSystemChange == _other.lastSystemChange
		    && measurementPrinciple == _other.measurementPrinciple
		    && operationalStatus == _other.operationalStatus
		    && parameterGroup == _other.parameterGroup
		    && parent == _other.parent
		    && productionSpecification == _other.productionSpecification
		    && source == _other.source
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(identifier)
		hasher.combine(languageCode)
		hasher.combine(lastSystemChange)
		hasher.combine(measurementPrinciple)
		hasher.combine(operationalStatus)
		hasher.combine(parameterGroup)
		hasher.combine(parent)
		hasher.combine(productionSpecification)
		hasher.combine(source)
		hasher.combine(type)
	}
}

/**
 Specification details such as Component Revisions, or Serial Numbers.
 
 The production specification such as component revision, serial number, etc.
 */
open class DeviceComponentProductionSpecification: BackboneElement {
	
	/// Type or kind of production specification, for example serial number or software revision
	public var specType: CodeableConcept?
	
	/// Internal component unique identification
	public var componentId: Identifier?
	
	/// A printable string defining the component
	public var productionSpec: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							componentId: Identifier? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							productionSpec: FHIRPrimitive<FHIRString>? = nil,
							specType: CodeableConcept? = nil)
	{
		self.init()
		self.componentId = componentId
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.productionSpec = productionSpec
		self.specType = specType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case componentId
		case productionSpec; case _productionSpec
		case specType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.componentId = try Identifier(from: _container, forKeyIfPresent: .componentId)
		self.productionSpec = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productionSpec, auxiliaryKey: ._productionSpec)
		self.specType = try CodeableConcept(from: _container, forKeyIfPresent: .specType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try componentId?.encode(on: &_container, forKey: .componentId)
		try productionSpec?.encode(on: &_container, forKey: .productionSpec, auxiliaryKey: ._productionSpec)
		try specType?.encode(on: &_container, forKey: .specType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DeviceComponentProductionSpecification else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return componentId == _other.componentId
		    && productionSpec == _other.productionSpec
		    && specType == _other.specType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(componentId)
		hasher.combine(productionSpec)
		hasher.combine(specType)
	}
}
