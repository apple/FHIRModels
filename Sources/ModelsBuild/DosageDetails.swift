//
//  DosageDetails.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/DosageDetails)
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
 How the medication is/was taken or should be taken.
 
 Indicates how the medication is/was taken or should be taken by the patient.
 */
open class DosageDetails: BackboneType {
	
	/// Full representation of the dosage instructions
	public var renderedInstruction: FHIRPrimitive<FHIRString>?
	
	/// Dosage details if it is a simple dose
	public var simple: Dosage?
	
	/// One step in a sequence of steps that comprise the dosage course
	public var step: [DosageDetailsStep]?
	
	/// Safety Information about the combined dose course
	public var safety: DosageSafety?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		renderedInstruction: FHIRPrimitive<FHIRString>? = nil,
		safety: DosageSafety? = nil,
		simple: Dosage? = nil,
		step: [DosageDetailsStep]? = nil
	) {
		self.init()
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.renderedInstruction = renderedInstruction
		self.safety = safety
		self.simple = simple
		self.step = step
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case renderedInstruction; case _renderedInstruction
		case safety
		case simple
		case step
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.renderedInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .renderedInstruction, auxiliaryKey: ._renderedInstruction)
		self.safety = try DosageSafety(from: _container, forKeyIfPresent: .safety)
		self.simple = try Dosage(from: _container, forKeyIfPresent: .simple)
		self.step = try [DosageDetailsStep](from: _container, forKeyIfPresent: .step)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try renderedInstruction?.encode(on: &_container, forKey: .renderedInstruction, auxiliaryKey: ._renderedInstruction)
		try safety?.encode(on: &_container, forKey: .safety)
		try simple?.encode(on: &_container, forKey: .simple)
		try step?.encode(on: &_container, forKey: .step)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DosageDetails else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return renderedInstruction == _other.renderedInstruction
		    && safety == _other.safety
		    && simple == _other.simple
		    && step == _other.step
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(renderedInstruction)
		hasher.combine(safety)
		hasher.combine(simple)
		hasher.combine(step)
	}
}

/**
 One step in a sequence of steps that comprise the dosage course.
 */
open class DosageDetailsStep: Element {
	
	/// When the step starts
	public var start: RelativeTime?
	
	/// When the step ends
	public var end: RelativeTime?
	
	/// How many times to do this step (if not 1)
	public var count: FHIRPrimitive<FHIRInteger>?
	
	/// A dosage details that is part of this step
	public var component: [Dosage]
	
	/// Safety Information about this step of the dose course
	public var safety: DosageSafety?
	
	/// Designated initializer taking all required properties
	public init(component: [Dosage]) {
		self.component = component
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		component: [Dosage],
		count: FHIRPrimitive<FHIRInteger>? = nil,
		end: RelativeTime? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		safety: DosageSafety? = nil,
		start: RelativeTime? = nil
	) {
		self.init(component: component)
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
		case safety
		case start
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.component = try [Dosage](from: _container, forKey: .component)
		self.count = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .count, auxiliaryKey: ._count)
		self.end = try RelativeTime(from: _container, forKeyIfPresent: .end)
		self.safety = try DosageSafety(from: _container, forKeyIfPresent: .safety)
		self.start = try RelativeTime(from: _container, forKeyIfPresent: .start)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try component.encode(on: &_container, forKey: .component)
		try count?.encode(on: &_container, forKey: .count, auxiliaryKey: ._count)
		try end?.encode(on: &_container, forKey: .end)
		try safety?.encode(on: &_container, forKey: .safety)
		try start?.encode(on: &_container, forKey: .start)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DosageDetailsStep else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return component == _other.component
		    && count == _other.count
		    && end == _other.end
		    && safety == _other.safety
		    && start == _other.start
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(component)
		hasher.combine(count)
		hasher.combine(end)
		hasher.combine(safety)
		hasher.combine(start)
	}
}
