//
//  Specimen.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/Specimen)
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
 Sample for analysis.
 
 A sample to be used for analysis.
 */
public struct Specimen: DomainResource {
	
	public static let resourceType: ResourceType = .specimen
	
	/// Identifier assigned by the lab
	public var accessionIdentifier: Identifier?
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Direct container of specimen (tube/slide, etc.)
	public var container: [SpecimenContainer]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Comments
	public var note: [Annotation]?
	
	/// Specimen from which this specimen originated
	public var parent: [Reference]?
	
	/// Processing and processing step details
	public var processing: [SpecimenProcessing]?
	
	/// The time when specimen was received for processing
	public var receivedTime: FHIRPrimitive<DateTime>?
	
	/// Why the specimen was collected
	public var request: [Reference]?
	
	/// The availability of the specimen.
	public var status: FHIRPrimitive<SpecimenStatus>?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device
	public var subject: Reference
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
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
		type: CodeableConcept? = nil
	) {
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
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case accessionIdentifier
		case collection
		case contained
		case container
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case note
		case parent
		case processing
		case receivedTime; case _receivedTime
		case request
		case status; case _status
		case subject
		case text
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.accessionIdentifier = try Identifier(from: _container, forKeyIfPresent: .accessionIdentifier)
		self.collection = try SpecimenCollection(from: _container, forKeyIfPresent: .collection)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.container = try [SpecimenContainer](from: _container, forKeyIfPresent: .container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.parent = try [Reference](from: _container, forKeyIfPresent: .parent)
		self.processing = try [SpecimenProcessing](from: _container, forKeyIfPresent: .processing)
		self.receivedTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .receivedTime, auxiliaryKey: ._receivedTime)
		self.request = try [Reference](from: _container, forKeyIfPresent: .request)
		self.status = try FHIRPrimitive<SpecimenStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try accessionIdentifier?.encode(on: &_container, forKey: .accessionIdentifier)
		try collection?.encode(on: &_container, forKey: .collection)
		try contained?.encode(on: &_container, forKey: .contained)
		try container?.encode(on: &_container, forKey: .container)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try note?.encode(on: &_container, forKey: .note)
		try parent?.encode(on: &_container, forKey: .parent)
		try processing?.encode(on: &_container, forKey: .processing)
		try receivedTime?.encode(on: &_container, forKey: .receivedTime, auxiliaryKey: ._receivedTime)
		try request?.encode(on: &_container, forKey: .request)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
		try type?.encode(on: &_container, forKey: .type)
	}
}

/**
 Collection details.
 
 Details concerning the specimen collection.
 */
public struct SpecimenCollection: BackboneElement {
	
	/// All possible types for "collected[x]"
	public enum CollectedX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Anatomical collection site
	public var bodySite: CodeableConcept?
	
	/// Collection time
	/// One of `collected[x]`
	public var collected: CollectedX?
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	/// Designated initializer
	public init(
		bodySite: CodeableConcept? = nil,
		collected: CollectedX? = nil,
		collector: Reference? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case quantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try CodeableConcept(from: _container, forKeyIfPresent: .bodySite)
		self.collected = try Self._decodeCollected(from: _container)
		self.collector = try Reference(from: _container, forKeyIfPresent: .collector)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.quantity = try Quantity(from: _container, forKeyIfPresent: .quantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try quantity?.encode(on: &_container, forKey: .quantity)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeCollected(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> CollectedX? {
		var _t_collected: CollectedX? = nil
		if let collectedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .collectedDateTime, auxiliaryKey: ._collectedDateTime) {
			_t_collected = .dateTime(collectedDateTime)
		}
		if let collectedPeriod = try Period(from: _container, forKeyIfPresent: .collectedPeriod) {
			if _t_collected != nil {
				throw DecodingError.dataCorruptedError(forKey: .collectedPeriod, in: _container, debugDescription: "More than one value provided for \"collected\"")
			}
			_t_collected = .period(collectedPeriod)
		}
		return _t_collected
	}
}

/**
 Direct container of specimen (tube/slide, etc.).
 
 The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 addressed here.
 */
public struct SpecimenContainer: BackboneElement {
	
	/// All possible types for "additive[x]"
	public enum AdditiveX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Additive associated with container
	/// One of `additive[x]`
	public var additive: AdditiveX?
	
	/// Container volume or size
	public var capacity: Quantity?
	
	/// Textual description of the container
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Id for the container
	public var identifier: [Identifier]?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		additive: AdditiveX? = nil,
		capacity: Quantity? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		modifierExtension: [Extension]? = nil,
		specimenQuantity: Quantity? = nil,
		type: CodeableConcept? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case identifier
		case modifierExtension
		case specimenQuantity
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try Self._decodeAdditive(from: _container)
		self.capacity = try Quantity(from: _container, forKeyIfPresent: .capacity)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.specimenQuantity = try Quantity(from: _container, forKeyIfPresent: .specimenQuantity)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
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
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try specimenQuantity?.encode(on: &_container, forKey: .specimenQuantity)
		try type?.encode(on: &_container, forKey: .type)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeAdditive(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> AdditiveX? {
		var _t_additive: AdditiveX? = nil
		if let additiveCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .additiveCodeableConcept) {
			_t_additive = .codeableConcept(additiveCodeableConcept)
		}
		if let additiveReference = try Reference(from: _container, forKeyIfPresent: .additiveReference) {
			if _t_additive != nil {
				throw DecodingError.dataCorruptedError(forKey: .additiveReference, in: _container, debugDescription: "More than one value provided for \"additive\"")
			}
			_t_additive = .reference(additiveReference)
		}
		return _t_additive
	}
}

/**
 Processing and processing step details.
 
 Details concerning processing and processing steps for the specimen.
 */
public struct SpecimenProcessing: BackboneElement {
	
	/// All possible types for "time[x]"
	public enum TimeX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case period(Period)
	}
	
	/// Material used in the processing step
	public var additive: [Reference]?
	
	/// Textual description of procedure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// xml:id (or equivalent in JSON)
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Indicates the treatment step  applied to the specimen
	public var procedure: CodeableConcept?
	
	/// Date and time of specimen processing
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer
	public init(
		additive: [Reference]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: CodeableConcept? = nil,
		time: TimeX? = nil
	) {
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
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case procedure
		case timeDateTime; case _timeDateTime
		case timePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [Reference](from: _container, forKeyIfPresent: .additive)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try CodeableConcept(from: _container, forKeyIfPresent: .procedure)
		self.time = try Self._decodeTime(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try procedure?.encode(on: &_container, forKey: .procedure)
		if let _enum = time {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timePeriod)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeTime(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimeX? {
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			_t_time = .dateTime(timeDateTime)
		}
		if let timePeriod = try Period(from: _container, forKeyIfPresent: .timePeriod) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timePeriod, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .period(timePeriod)
		}
		return _t_time
	}
}
