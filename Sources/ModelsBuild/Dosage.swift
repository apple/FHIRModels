//
//  Dosage.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/Dosage)
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
 How the medication is/was taken or should be taken.
 
 Indicates how the medication is/was taken or should be taken by the patient.
 */
open class Dosage: BackboneType {
	
	/// All possible types for "asNeeded[x]"
	public enum AsNeededX: Hashable {
		case boolean(FHIRPrimitive<FHIRBool>)
		case codeableConcept(CodeableConcept)
	}
	
	/// The order of the dosage instructions
	public var sequence: FHIRPrimitive<FHIRInteger>?
	
	/// Free text dosage instructions e.g. SIG
	public var text: FHIRPrimitive<FHIRString>?
	
	/// Supplemental instruction or warnings to the patient - e.g. "with meals", "may cause drowsiness"
	public var additionalInstruction: [CodeableConcept]?
	
	/// Patient or consumer oriented instructions
	public var patientInstruction: FHIRPrimitive<FHIRString>?
	
	/// When medication should be administered
	public var timing: Timing?
	
	/// Take "as needed" (for x)
	/// One of `asNeeded[x]`
	public var asNeeded: AsNeededX?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication administered
	public var doseAndRate: [DosageDoseAndRate]?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Upper limit on medication per administration
	public var maxDosePerAdministration: Quantity?
	
	/// Upper limit on medication per lifetime of the patient
	public var maxDosePerLifetime: Quantity?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							timing: Timing? = nil)
	{
		self.init()
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
		case maxDosePerAdministration
		case maxDosePerLifetime
		case maxDosePerPeriod
		case method
		case patientInstruction; case _patientInstruction
		case route
		case sequence; case _sequence
		case site
		case text; case _text
		case timing
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additionalInstruction = try [CodeableConcept](from: _container, forKeyIfPresent: .additionalInstruction)
		var _t_asNeeded: AsNeededX? = nil
		if let asNeededBoolean = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .asNeededBoolean, auxiliaryKey: ._asNeededBoolean) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededBoolean, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .boolean(asNeededBoolean)
		}
		if let asNeededCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .asNeededCodeableConcept) {
			if _t_asNeeded != nil {
				throw DecodingError.dataCorruptedError(forKey: .asNeededCodeableConcept, in: _container, debugDescription: "More than one value provided for \"asNeeded\"")
			}
			_t_asNeeded = .codeableConcept(asNeededCodeableConcept)
		}
		self.asNeeded = _t_asNeeded
		self.doseAndRate = try [DosageDoseAndRate](from: _container, forKeyIfPresent: .doseAndRate)
		self.maxDosePerAdministration = try Quantity(from: _container, forKeyIfPresent: .maxDosePerAdministration)
		self.maxDosePerLifetime = try Quantity(from: _container, forKeyIfPresent: .maxDosePerLifetime)
		self.maxDosePerPeriod = try Ratio(from: _container, forKeyIfPresent: .maxDosePerPeriod)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.patientInstruction = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .patientInstruction, auxiliaryKey: ._patientInstruction)
		self.route = try CodeableConcept(from: _container, forKeyIfPresent: .route)
		self.sequence = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .sequence, auxiliaryKey: ._sequence)
		self.site = try CodeableConcept(from: _container, forKeyIfPresent: .site)
		self.text = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .text, auxiliaryKey: ._text)
		self.timing = try Timing(from: _container, forKeyIfPresent: .timing)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
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
		try maxDosePerAdministration?.encode(on: &_container, forKey: .maxDosePerAdministration)
		try maxDosePerLifetime?.encode(on: &_container, forKey: .maxDosePerLifetime)
		try maxDosePerPeriod?.encode(on: &_container, forKey: .maxDosePerPeriod)
		try method?.encode(on: &_container, forKey: .method)
		try patientInstruction?.encode(on: &_container, forKey: .patientInstruction, auxiliaryKey: ._patientInstruction)
		try route?.encode(on: &_container, forKey: .route)
		try sequence?.encode(on: &_container, forKey: .sequence, auxiliaryKey: ._sequence)
		try site?.encode(on: &_container, forKey: .site)
		try text?.encode(on: &_container, forKey: .text, auxiliaryKey: ._text)
		try timing?.encode(on: &_container, forKey: .timing)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Dosage else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additionalInstruction == _other.additionalInstruction
		    && asNeeded == _other.asNeeded
		    && doseAndRate == _other.doseAndRate
		    && maxDosePerAdministration == _other.maxDosePerAdministration
		    && maxDosePerLifetime == _other.maxDosePerLifetime
		    && maxDosePerPeriod == _other.maxDosePerPeriod
		    && method == _other.method
		    && patientInstruction == _other.patientInstruction
		    && route == _other.route
		    && sequence == _other.sequence
		    && site == _other.site
		    && text == _other.text
		    && timing == _other.timing
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additionalInstruction)
		hasher.combine(asNeeded)
		hasher.combine(doseAndRate)
		hasher.combine(maxDosePerAdministration)
		hasher.combine(maxDosePerLifetime)
		hasher.combine(maxDosePerPeriod)
		hasher.combine(method)
		hasher.combine(patientInstruction)
		hasher.combine(route)
		hasher.combine(sequence)
		hasher.combine(site)
		hasher.combine(text)
		hasher.combine(timing)
	}
}

/**
 Amount of medication administered.
 
 The amount of medication administered.
 */
open class DosageDoseAndRate: Element {
	
	/// All possible types for "dose[x]"
	public enum DoseX: Hashable {
		case quantity(Quantity)
		case range(Range)
	}
	
	/// All possible types for "rate[x]"
	public enum RateX: Hashable {
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
	}
	
	/// The kind of dose or rate specified
	public var type: CodeableConcept?
	
	/// Amount of medication per dose
	/// One of `dose[x]`
	public var dose: DoseX?
	
	/// Amount of medication per unit of time
	/// One of `rate[x]`
	public var rate: RateX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							dose: DoseX? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							rate: RateX? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
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
		case rateQuantity
		case rateRange
		case rateRatio
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_dose: DoseX? = nil
		if let doseRange = try Range(from: _container, forKeyIfPresent: .doseRange) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseRange, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .range(doseRange)
		}
		if let doseQuantity = try Quantity(from: _container, forKeyIfPresent: .doseQuantity) {
			if _t_dose != nil {
				throw DecodingError.dataCorruptedError(forKey: .doseQuantity, in: _container, debugDescription: "More than one value provided for \"dose\"")
			}
			_t_dose = .quantity(doseQuantity)
		}
		self.dose = _t_dose
		var _t_rate: RateX? = nil
		if let rateRatio = try Ratio(from: _container, forKeyIfPresent: .rateRatio) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRatio, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .ratio(rateRatio)
		}
		if let rateRange = try Range(from: _container, forKeyIfPresent: .rateRange) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateRange, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .range(rateRange)
		}
		if let rateQuantity = try Quantity(from: _container, forKeyIfPresent: .rateQuantity) {
			if _t_rate != nil {
				throw DecodingError.dataCorruptedError(forKey: .rateQuantity, in: _container, debugDescription: "More than one value provided for \"rate\"")
			}
			_t_rate = .quantity(rateQuantity)
		}
		self.rate = _t_rate
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = dose {
			switch _enum {
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .doseRange)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .doseQuantity)
			}
		}
		if let _enum = rate {
			switch _enum {
			case .ratio(let _value):
				try _value.encode(on: &_container, forKey: .rateRatio)
			case .range(let _value):
				try _value.encode(on: &_container, forKey: .rateRange)
			case .quantity(let _value):
				try _value.encode(on: &_container, forKey: .rateQuantity)
			}
		}
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? DosageDoseAndRate else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return dose == _other.dose
		    && rate == _other.rate
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dose)
		hasher.combine(rate)
		hasher.combine(type)
	}
}
