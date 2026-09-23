//
//  DosageDetails.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/DosageDetails)
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
 How the medication is/was taken or should be taken.
 
 Indicates how the medication is/was taken or should be taken by the patient.
 */
public struct DosageDetails: BackboneType {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Full representation of the dosage instructions
	public var renderedInstruction: FHIRPrimitive<FHIRString>
	
	/// Safety Information about the combined dose course
	public var safety: DosageSafety?
	
	/// One step in a sequence of steps that comprise the dosage course
	public var step: [DosageDetailsStep]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		renderedInstruction: FHIRPrimitive<FHIRString>,
		safety: DosageSafety? = nil,
		step: [DosageDetailsStep]? = nil
	) {
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.renderedInstruction = renderedInstruction
		self.safety = safety
		self.step = step
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case renderedInstruction; case _renderedInstruction
		case safety
		case step
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.renderedInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKey: .renderedInstruction, auxiliaryKey: ._renderedInstruction)
		self.safety = try DosageSafety(from: _container, forKeyIfPresent: .safety)
		self.step = try [DosageDetailsStep](from: _container, forKeyIfPresent: .step)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try renderedInstruction.encode(on: &_container, forKey: .renderedInstruction, auxiliaryKey: ._renderedInstruction)
		try safety?.encode(on: &_container, forKey: .safety)
		try step?.encode(on: &_container, forKey: .step)
	}
}

/**
 One step in a sequence of steps that comprise the dosage course.
 */
public struct DosageDetailsStep: Element {
	
	/// A dosage details that is part of this step
	public var component: [Dosage]
	
	/// How many times to do this step (if not 1)
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// When the step ends
	public var end: RelativeTime?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Safety Information about this step of the dose course
	public var safety: DosageSafety?
	
	/// When the step starts
	public var start: RelativeTime?
	
	/// Designated initializer
	public init(
		component: [Dosage],
		count: FHIRPrimitive<FHIRInteger>? = nil,
		end: RelativeTime? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		safety: DosageSafety? = nil,
		start: RelativeTime? = nil
	) {
		self.component = component
		self.count = count
		self.end = end
		self.`extension` = `extension`
		self.id = id
		self.safety = safety
		self.start = start
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case component
		case count; case _count
		case end
		case `extension` = "extension"
		case id; case _id
		case safety
		case start
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.component = try [Dosage](from: _container, forKey: .component)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.end = try RelativeTime(from: _container, forKeyIfPresent: .end)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.safety = try DosageSafety(from: _container, forKeyIfPresent: .safety)
		self.start = try RelativeTime(from: _container, forKeyIfPresent: .start)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try component.encode(on: &_container, forKey: .component)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try end?.encode(on: &_container, forKey: .end)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try safety?.encode(on: &_container, forKey: .safety)
		try start?.encode(on: &_container, forKey: .start)
	}
}
