//
//  Specimen.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/Specimen)
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
 Sample for analysis.
 
 A sample to be used for analysis.
 */
open class Specimen: DomainResource {
	
	override open class var resourceType: ResourceType { return .specimen }
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// Identifier assigned by the lab
	public var accessionIdentifier: Identifier?
	
	/// The availability of the specimen.
	public var status: FHIRPrimitive<SpecimenStatus>?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device
	public var subject: Reference
	
	/// The time when specimen was received for processing
	public var receivedTime: FHIRPrimitive<DateTime>?
	
	/// Specimen from which this specimen originated
	public var parent: [Reference]?
	
	/// Why the specimen was collected
	public var request: [Reference]?
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// Processing and processing step details
	public var processing: [SpecimenProcessing]?
	
	/// Direct container of specimen (tube/slide, etc.)
	public var container: [SpecimenContainer]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(subject: Reference) {
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							accessionIdentifier: Identifier? = nil,
							collection: SpecimenCollection? = nil,
							contained: [ResourceProxy]? = nil,
							container: [SpecimenContainer]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							implicitRules: FHIRPrimitive<FHIRURI>? = nil,
							language: FHIRPrimitive<FHIRString>? = nil,
							meta: Meta? = nil,
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							parent: [Reference]? = nil,
							processing: [SpecimenProcessing]? = nil,
							receivedTime: FHIRPrimitive<DateTime>? = nil,
							request: [Reference]? = nil,
							status: FHIRPrimitive<SpecimenStatus>? = nil,
							subject: Reference,
							text: Narrative? = nil,
							type: CodeableConcept? = nil)
	{
		self.init(subject: subject)
		self.accessionIdentifier = accessionIdentifier
		self.collection = collection
		self.contained = contained
		self.container = container
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.parent = parent
		self.processing = processing
		self.receivedTime = receivedTime
		self.request = request
		self.status = status
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accessionIdentifier
		case collection
		case container
		case identifier
		case note
		case parent
		case processing
		case receivedTime; case _receivedTime
		case request
		case status; case _status
		case subject
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accessionIdentifier = try Identifier(from: _container, forKeyIfPresent: .accessionIdentifier)
		self.collection = try SpecimenCollection(from: _container, forKeyIfPresent: .collection)
		self.container = try [SpecimenContainer](from: _container, forKeyIfPresent: .container)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processing = try [SpecimenProcessing](from: _container, forKeyIfPresent: .processing)
		self.receivedTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .receivedTime, auxiliaryKey: ._receivedTime)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<SpecimenStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accessionIdentifier?.encode(on: &_container, forKey: .accessionIdentifier)
		try collection?.encode(on: &_container, forKey: .collection)
		try container?.encode(on: &_container, forKey: .container)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try note?.encode(on: &_container, forKey: .note)
		try parent?.encode(on: &_container, forKey: .parent)
		try processing?.encode(on: &_container, forKey: .processing)
		try receivedTime?.encode(on: &_container, forKey: .receivedTime, auxiliaryKey: ._receivedTime)
		try request?.encode(on: &_container, forKey: .request)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? Specimen else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accessionIdentifier == _other.accessionIdentifier
		    && collection == _other.collection
		    && container == _other.container
		    && identifier == _other.identifier
		    && note == _other.note
		    && parent == _other.parent
		    && processing == _other.processing
		    && receivedTime == _other.receivedTime
		    && request == _other.request
		    && status == _other.status
		    && subject == _other.subject
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accessionIdentifier)
		hasher.combine(collection)
		hasher.combine(container)
		hasher.combine(identifier)
		hasher.combine(note)
		hasher.combine(parent)
		hasher.combine(processing)
		hasher.combine(receivedTime)
		hasher.combine(request)
		hasher.combine(status)
		hasher.combine(subject)
		hasher.combine(type)
	}
}

/**
 Collection details.
 
 Details concerning the specimen collection.
 */
open class SpecimenCollection: BackboneElement {
	
	/// All possible types for "collected[x]"
	public enum CollectedX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Collection time
	/// One of `collected[x]`
	public var collected: CollectedX?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// Anatomical collection site
	public var bodySite: CodeableConcept?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bodySite: CodeableConcept? = nil,
							collected: CollectedX? = nil,
							collector: Reference? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							method: CodeableConcept? = nil,
							modifierExtension: [Extension]? = nil,
							quantity: Quantity? = nil)
	{
		self.init()
		self.bodySite = bodySite
		self.collected = collected
		self.collector = collector
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case collectedDateTime; case _collectedDateTime
		case collectedPeriod
		case collector
		case method
		case quantity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		var _t_collected: CollectedX? = nil
		if let collectedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .collectedDateTime, auxiliaryKey: ._collectedDateTime) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedDateTime, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .dateTime(collectedDateTime)
		}
		if let collectedPeriod = try Period(from: _container, forKeyIfPresent: .collectedPeriod) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedPeriod, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .period(collectedPeriod)
		}
		self.collected = _t_collected
		self.collector = try Reference(from: _container, forKeyIfPresent: .collector)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		if let _enum = collected {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .collectedDateTime, auxiliaryKey: ._collectedDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .collectedPeriod)
			}
		}
		try collector?.encode(on: &_container, forKey: .collector)
		try method?.encode(on: &_container, forKey: .method)
		try quantity?.encode(on: &_container, forKey: .quantity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenCollection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bodySite == _other.bodySite
		    && collected == _other.collected
		    && collector == _other.collector
		    && method == _other.method
		    && quantity == _other.quantity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bodySite)
		hasher.combine(collected)
		hasher.combine(collector)
		hasher.combine(method)
		hasher.combine(quantity)
	}
}

/**
 Direct container of specimen (tube/slide, etc.).
 
 The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 addressed here.
 */
open class SpecimenContainer: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// Id for the container
	public var identifier: [Identifier]?
	
	/// Textual description of the container
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Kind of container directly associated with specimen
	public var type: CodeableConcept?
	
	/// Container volume or size
	public var capacity: Quantity?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additive: AdditiveX? = nil,
							capacity: Quantity? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identifier: [Identifier]? = nil,
							modifierExtension: [Extension]? = nil,
							specimenQuantity: Quantity? = nil,
							type: CodeableConcept? = nil)
	{
		self.init()
		self.additive = additive
		self.capacity = capacity
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.modifierExtension = modifierExtension
		self.specimenQuantity = specimenQuantity
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additiveCodeableConcept
		case additiveReference
		case capacity
		case description_fhir = "description"; case _description_fhir = "_description"
		case identifier
		case specimenQuantity
		case type
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveCodeableConcept, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		self.additive = _t_additive
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.specimenQuantity = try Quantity(from: _container, forKeyIfPresent: .specimenQuantity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		if let _enum = additive {
			switch _enum {
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .additiveCodeableConcept)
			case .reference(let _value):
				try _value.encode(on: &_container, forKey: .additiveReference)
			}
		}
		try capacity?.encode(on: &_container, forKey: .capacity)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try specimenQuantity?.encode(on: &_container, forKey: .specimenQuantity)
		try type?.encode(on: &_container, forKey: .type)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenContainer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && capacity == _other.capacity
		    && description_fhir == _other.description_fhir
		    && identifier == _other.identifier
		    && specimenQuantity == _other.specimenQuantity
		    && type == _other.type
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(capacity)
		hasher.combine(description_fhir)
		hasher.combine(identifier)
		hasher.combine(specimenQuantity)
		hasher.combine(type)
	}
}

/**
 Processing and processing step details.
 
 Details concerning processing and processing steps for the specimen.
 */
open class SpecimenProcessing: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Textual description of procedure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Indicates the treatment step  applied to the specimen
	public var procedure: CodeableConcept?
	
	/// Material used in the processing step
	public var additive: [Reference]?
	
	/// Date and time of specimen processing
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							additive: [Reference]? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							procedure: CodeableConcept? = nil,
							time: TimeX? = nil)
	{
		self.init()
		self.additive = additive
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case description_fhir = "description"; case _description_fhir = "_description"
		case procedure
		case timeDateTime; case _timeDateTime
		case timePeriod
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.additive = try [Reference](from: _container, forKeyIfPresent: .additive)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.procedure = try CodeableConcept(from: _container, forKeyIfPresent: .procedure)
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timeDateTime, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		self.time = _t_time
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try additive?.encode(on: &_container, forKey: .additive)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try procedure?.encode(on: &_container, forKey: .procedure)
		if let _enum = time {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .timePeriod)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? SpecimenProcessing else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return additive == _other.additive
		    && description_fhir == _other.description_fhir
		    && procedure == _other.procedure
		    && time == _other.time
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(additive)
		hasher.combine(description_fhir)
		hasher.combine(procedure)
		hasher.combine(time)
	}
}
