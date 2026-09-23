//
//  DeviceComponent.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/DeviceComponent)
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
 An instance of a medical-related component of a medical device.
 
 The characteristics, operational status and capabilities of a medical-related component of a medical device.
 */
public struct DeviceComponent: DomainResource {
	
	public static let resourceType: ResourceType = .deviceComponent
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Instance id assigned by the software stack
	public var identifier: Identifier
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Language code for the human-readable text strings produced by the device
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp
	public var lastSystemChange: FHIRPrimitive<Instant>?
	
	/// The physical principle of the measurement. For example: thermal, chemical, acoustical, etc.
	public var measurementPrinciple: FHIRPrimitive<MeasmntPrinciple>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Current operational status of the component, for example On, Off or Standby
	public var operationalStatus: [CodeableConcept]?
	
	/// Current supported parameter group
	public var parameterGroup: CodeableConcept?
	
	/// Parent resource link
	public var parent: Reference?
	
	/// Specification details such as Component Revisions, or Serial Numbers
	public var productionSpecification: [DeviceComponentProductionSpecification]?
	
	/// Top-level device resource link
	public var source: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What kind of component it is
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept
	) {
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
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
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case languageCode
		case lastSystemChange; case _lastSystemChange
		case measurementPrinciple; case _measurementPrinciple
		case meta
		case modifierExtension
		case operationalStatus
		case parameterGroup
		case parent
		case productionSpecification
		case source
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKey: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.languageCode = try CodeableConcept(from: _container, forKeyIfPresent: .languageCode)
		self.lastSystemChange = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .lastSystemChange, auxiliaryKey: ._lastSystemChange)
		self.measurementPrinciple = try FHIRPrimitive<MeasmntPrinciple>(from: _container, forKeyIfPresent: .measurementPrinciple, auxiliaryKey: ._measurementPrinciple)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.operationalStatus = try [CodeableConcept](from: _container, forKeyIfPresent: .operationalStatus)
		self.parameterGroup = try CodeableConcept(from: _container, forKeyIfPresent: .parameterGroup)
		self.parent = try Reference(from: _container, forKeyIfPresent: .parent)
		self.productionSpecification = try [DeviceComponentProductionSpecification](from: _container, forKeyIfPresent: .productionSpecification)
		self.source = try Reference(from: _container, forKeyIfPresent: .source)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try languageCode?.encode(on: &_container, forKey: .languageCode)
		try lastSystemChange?.encode(on: &_container, forKey: .lastSystemChange, auxiliaryKey: ._lastSystemChange)
		try measurementPrinciple?.encode(on: &_container, forKey: .measurementPrinciple, auxiliaryKey: ._measurementPrinciple)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try operationalStatus?.encode(on: &_container, forKey: .operationalStatus)
		try parameterGroup?.encode(on: &_container, forKey: .parameterGroup)
		try parent?.encode(on: &_container, forKey: .parent)
		try productionSpecification?.encode(on: &_container, forKey: .productionSpecification)
		try source?.encode(on: &_container, forKey: .source)
		try text?.encode(on: &_container, forKey: .text)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Specification details such as Component Revisions, or Serial Numbers.
 
 The production specification such as component revision, serial number, etc.
 */
public struct DeviceComponentProductionSpecification: BackboneElement {
	
	/// Internal component unique identification
	public var componentId: Identifier?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A printable string defining the component
	public var productionSpec: FHIRPrimitive<FHIRString>?
	
	/// Type or kind of production specification, for example serial number or software revision
	public var specType: CodeableConcept?
	
	/// Designated initializer
	public init(
		componentId: Identifier? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		productionSpec: FHIRPrimitive<FHIRString>? = nil,
		specType: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case productionSpec; case _productionSpec
		case specType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.componentId = try Identifier(from: _container, forKeyIfPresent: .componentId)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.productionSpec = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .productionSpec, auxiliaryKey: ._productionSpec)
		self.specType = try CodeableConcept(from: _container, forKeyIfPresent: .specType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try componentId?.encode(on: &_container, forKey: .componentId)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try productionSpec?.encode(on: &_container, forKey: .productionSpec, auxiliaryKey: ._productionSpec)
		try specType?.encode(on: &_container, forKey: .specType)
	}
}
