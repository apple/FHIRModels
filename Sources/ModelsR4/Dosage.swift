//
//  Dosage.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/Dosage)
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
public struct Dosage: BackboneElement {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Equatable, Hashable, Sendable {
		case boolean(FHIRPrimitive<FHIRBool>)
		indirect case codeableConcept(CodeableConcept)
	}
	
	/// Supplemental instruction or warnings to the patient - e.g. "with meals", "may cause drowsiness"
	public var additionalInstruction: [CodeableConcept]?
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Amount of medication administered
	public var doseAndRate: [DosageDoseAndRate]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Upper limit on medication per administration
	public var maxDosePerAdministration: Quantity?
	
	/// Upper limit on medication per lifetime of the patient
	public var maxDosePerLifetime: Quantity?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Patient or consumer oriented instructions
	public var patientInstruction: FHIRPrimitive<FHIRString>?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// The order of the dosage instructions
	public var sequence: FHIRPrimitive<FHIRInteger>?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// Free text dosage instructions e.g. SIG
	public var text: FHIRPrimitive<FHIRString>?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Designated initializer
	public init(
		additionalInstruction: [CodeableConcept]? = nil,
		asNeeded: AsNeededX? = nil,
		doseAndRate: [DosageDoseAndRate]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		maxDosePerAdministration: Quantity? = nil,
		maxDosePerLifetime: Quantity? = nil,
		maxDosePerPeriod: Ratio? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		patientInstruction: FHIRPrimitive<FHIRString>? = nil,
		route: CodeableConcept? = nil,
		sequence: FHIRPrimitive<FHIRInteger>? = nil,
		site: CodeableConcept? = nil,
		text: FHIRPrimitive<FHIRString>? = nil,
		timing: Timing? = nil
	) {
		self.additionalInstruction = additionalInstruction
		self.asNeeded = asNeeded
		self.doseAndRate = doseAndRate
		self.`extension` = `extension`
		self.id = id
		self.maxDosePerAdministration = maxDosePerAdministration
		self.maxDosePerLifetime = maxDosePerLifetime
		self.maxDosePerPeriod = maxDosePerPeriod
		self.method = method
		self.modifierExtension = modifierExtension
		self.patientInstruction = patientInstruction
		self.route = route
		self.sequence = sequence
		self.site = site
		self.text = text
		self.timing = timing
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additionalInstruction
		case asNeededBoolean; case _asNeededBoolean
		case asNeededCodeableConcept
		case doseAndRate
		case `extension` = "extension"
		case id; case _id
		case maxDosePerAdministration
		case maxDosePerLifetime
		case maxDosePerPeriod
		case method
		case modifierExtension
		case patientInstruction; case _patientInstruction
		case route
		case sequence; case _sequence
		case site
		case text; case _text
		case timing
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additionalInstruction = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalInstruction)
		self.asNeeded = try Self._decodeAsNeeded(from: _container)
		self.doseAndRate = try [DosageDoseAndRate](from: _container, forKeyIfPresent: .doseAndRate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.maxDosePerAdministration = try Quantity(from: _container, forKeyIfPresent: .maxDosePerAdministration)
		self.maxDosePerLifetime = try Quantity(from: _container, forKeyIfPresent: .maxDosePerLifetime)
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.patientInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patientInstruction, auxiliaryKey: ._patientInstruction)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.sequence = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.timing = try Timing(from: _container, forKeyIfPresent: .timing)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additionalInstruction?.encode(on: &_container, forKey: .additionalInstruction)
		if let _enum = asNeeded {
		switch _enum {
		case .boolean(let _value):
			try _value.encode(on: &_container, forKey: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .asNeededCodeableConcept)
		}
		}
		try doseAndRate?.encode(on: &_container, forKey: .doseAndRate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try maxDosePerAdministration?.encode(on: &_container, forKey: .maxDosePerAdministration)
		try maxDosePerLifetime?.encode(on: &_container, forKey: .maxDosePerLifetime)
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction, auxiliaryKey: ._patientInstruction)
		try route?.encode(on: &_container, forKey: .route)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try site?.encode(on: &_container, forKey: .site)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try timing?.encode(on: &_container, forKey: .timing)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAsNeeded(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AsNeededX? {
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		return _t_asNeeded
	}
}

/**
 Amount of medication administered.
 
 The amount of medication administered.
 */
public struct DosageDoseAndRate: Element {
	
	/// All possible types for "dose[x]"
	public enum DoseX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
	}
	
	/// All possible types for "rate[x]"
	public enum RateX: Equatable, Hashable, Sendable {
		indirect case quantity(Quantity)
		indirect case range(Range)
		indirect case ratio(Ratio)
	}
	
	/// Amount of medication per dose
	/// One of `dose[x]`
	public var dose: DoseX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Amount of medication per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// The kind of dose or rate specified
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		dose: DoseX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		rate: RateX? = nil,
		type: CodeableConcept? = nil
	) {
		self.dose = dose
		self.`extension` = `extension`
		self.id = id
		self.rate = rate
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case doseQuantity
		case doseRange
		case `extension` = "extension"
		case id; case _id
		case rateQuantity
		case rateRange
		case rateRatio
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.dose = try Self._decodeDose(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.rate = try Self._decodeRate(from: _container)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		if let _enum = dose {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .doseQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .doseRange)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		if let _enum = rate {
		switch _enum {
		case .quantity(let _value):
			try _value.encode(on: &_container, forKey: .rateQuantity)
		case .range(let _value):
			try _value.encode(on: &_container, forKey: .rateRange)
		case .ratio(let _value):
			try _value.encode(on: &_container, forKey: .rateRatio)
		}
		}
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDose(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DoseX? {
		var _t_dose: DoseX? = nil
		if let doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity) {
			_t_dose = .quantity(doseQuantity)
		}
		if let doseRange = try Range(from: _container, forKeyIfPresent: .doseRange) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseRange, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .range(doseRange)
		}
		return _t_dose
	}
	
	private static func _decodeRate(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> RateX? {
		var _t_rate: RateX? = nil
		if let rateQuantity = try Quantity(from: _container, forKeyIfPresent: .rateQuantity) {
			_t_rate = .quantity(rateQuantity)
		}
		if let rateRange = try Range(from: _container, forKeyIfPresent: .rateRange) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRange, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .range(rateRange)
		}
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		return _t_rate
	}
}
