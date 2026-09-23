//
//  Specimen.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/Specimen)
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
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// This element signifies if the specimen is part of a group or pooled.
	public var combined: FHIRPrimitive<SpecimenCombined>?
	
	/// State of the specimen
	public var condition: [CodeableConcept]?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Direct container of specimen (tube/slide, etc.)
	public var container: [SpecimenContainer]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// The physical feature of a specimen
	public var feature: [SpecimenFeature]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Primary specimen identifier
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
	
	/// The time when specimen is received by the testing laboratory
	public var receivedTime: FHIRPrimitive<DateTime>?
	
	/// Why the specimen was collected
	public var request: [Reference]?
	
	/// The role the specimen serves
	public var role: [CodeableConcept]?
	
	/// The availability of the specimen.
	public var status: FHIRPrimitive<SpecimenStatus>?
	
	/// Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental
	/// sample), or a sampling of a substance, a biologically-derived product, or a device
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	/// Designated initializer
	public init(
		collection: SpecimenCollection? = nil,
		combined: FHIRPrimitive<SpecimenCombined>? = nil,
		condition: [CodeableConcept]? = nil,
		contained: [ResourceProxy]? = nil,
		container: [SpecimenContainer]? = nil,
		`extension`: [Extension]? = nil,
		feature: [SpecimenFeature]? = nil,
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
		role: [CodeableConcept]? = nil,
		status: FHIRPrimitive<SpecimenStatus>? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil,
		type: CodeableConcept? = nil
	) {
		self.collection = collection
		self.combined = combined
		self.condition = condition
		self.contained = contained
		self.container = container
		self.`extension` = `extension`
		self.feature = feature
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
		self.role = role
		self.status = status
		self.subject = subject
		self.text = text
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case collection
		case combined; case _combined
		case condition
		case contained
		case container
		case `extension` = "extension"
		case feature
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
		case role
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
		self.collection = try SpecimenCollection(from: _container, forKeyIfPresent: .collection)
		self.combined = try FHIRPrimitive<SpecimenCombined>(from: _container, forKeyIfPresent: .combined, auxiliaryKey: ._combined)
		self.condition = try [CodeableConcept](from: _container, forKeyIfPresent: .condition)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.container = try [SpecimenContainer](from: _container, forKeyIfPresent: .container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.feature = try [SpecimenFeature](from: _container, forKeyIfPresent: .feature)
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
		self.role = try [CodeableConcept](from: _container, forKeyIfPresent: .role)
		self.status = try FHIRPrimitive<SpecimenStatus>(from: _container, forKeyIfPresent: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.type = try CodeableConcept(from: _container, forKeyIfPresent: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try collection?.encode(on: &_container, forKey: .collection)
		try combined?.encode(on: &_container, forKey: .combined, auxiliaryKey: ._combined)
		try condition?.encode(on: &_container, forKey: .condition)
		try contained?.encode(on: &_container, forKey: .contained)
		try container?.encode(on: &_container, forKey: .container)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try feature?.encode(on: &_container, forKey: .feature)
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
		try role?.encode(on: &_container, forKey: .role)
		try status?.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
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
	
	/// All possible types for "device[x]"
	public enum DeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "fastingStatus[x]"
	public enum FastingStatusX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case duration(Duration)
	}
	
	/// Anatomical collection site
	public var bodySite: CodeableReference?
	
	/// Collection time
	/// One of `collected[x]`
	public var collected: CollectedX?
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Device used to perform collection
	/// One of `device[x]`
	public var device: DeviceX?
	
	/// How long it took to collect specimen
	public var duration: Duration?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Whether or how long patient abstained from food and/or drink
	/// One of `fastingStatus[x]`
	public var fastingStatus: FastingStatusX?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The procedure that collects the specimen
	public var procedure: Reference?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	/// Designated initializer
	public init(
		bodySite: CodeableReference? = nil,
		collected: CollectedX? = nil,
		collector: Reference? = nil,
		device: DeviceX? = nil,
		duration: Duration? = nil,
		`extension`: [Extension]? = nil,
		fastingStatus: FastingStatusX? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		procedure: Reference? = nil,
		quantity: Quantity? = nil
	) {
		self.bodySite = bodySite
		self.collected = collected
		self.collector = collector
		self.device = device
		self.duration = duration
		self.`extension` = `extension`
		self.fastingStatus = fastingStatus
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.procedure = procedure
		self.quantity = quantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bodySite
		case collectedDateTime; case _collectedDateTime
		case collectedPeriod
		case collector
		case deviceCanonical; case _deviceCanonical
		case deviceCodeableConcept
		case deviceReference
		case duration
		case `extension` = "extension"
		case fastingStatusCodeableConcept
		case fastingStatusDuration
		case id; case _id
		case method
		case modifierExtension
		case procedure
		case quantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.bodySite = try CodeableReference(from: _container, forKeyIfPresent: .bodySite)
		self.collected = try Self._decodeCollected(from: _container)
		self.collector = try Reference(from: _container, forKeyIfPresent: .collector)
		self.device = try Self._decodeDevice(from: _container)
		self.duration = try Duration(from: _container, forKeyIfPresent: .duration)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.fastingStatus = try Self._decodeFastingStatus(from: _container)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.procedure = try Reference(from: _container, forKeyIfPresent: .procedure)
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
		if let _enum = device {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .deviceCanonical, auxiliaryKey: ._deviceCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .deviceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .deviceReference)
		}
		}
		try duration?.encode(on: &_container, forKey: .duration)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		if let _enum = fastingStatus {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .fastingStatusCodeableConcept)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .fastingStatusDuration)
		}
		}
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try procedure?.encode(on: &_container, forKey: .procedure)
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
	
	private static func _decodeDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeviceX? {
		var _t_device: DeviceX? = nil
		if let deviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .deviceCanonical, auxiliaryKey: ._deviceCanonical) {
			_t_device = .canonical(deviceCanonical)
		}
		if let deviceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .deviceCodeableConcept) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .codeableConcept(deviceCodeableConcept)
		}
		if let deviceReference = try Reference(from: _container, forKeyIfPresent: .deviceReference) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceReference, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .reference(deviceReference)
		}
		return _t_device
	}
	
	private static func _decodeFastingStatus(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> FastingStatusX? {
		var _t_fastingStatus: FastingStatusX? = nil
		if let fastingStatusCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .fastingStatusCodeableConcept) {
			_t_fastingStatus = .codeableConcept(fastingStatusCodeableConcept)
		}
		if let fastingStatusDuration = try Duration(from: _container, forKeyIfPresent: .fastingStatusDuration) {
			if _t_fastingStatus != nil {
				throw DecodingError.dataCorruptedError(forKey: .fastingStatusDuration, in: _container, debugDescription: "More than one value provided for \"fastingStatus\"")
			}
			_t_fastingStatus = .duration(fastingStatusDuration)
		}
		return _t_fastingStatus
	}
}

/**
 Direct container of specimen (tube/slide, etc.).
 
 The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 addressed here.
 */
public struct SpecimenContainer: BackboneElement {
	
	/// All possible types for "device[x]"
	public enum DeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Device resource for the container
	/// One of `device[x]`
	public var device: DeviceX
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Designated initializer
	public init(
		device: DeviceX,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		specimenQuantity: Quantity? = nil
	) {
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.specimenQuantity = specimenQuantity
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case deviceCanonical; case _deviceCanonical
		case deviceCodeableConcept
		case deviceReference
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case specimenQuantity
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.device = try Self._decodeDevice(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.specimenQuantity = try Quantity(from: _container, forKeyIfPresent: .specimenQuantity)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		
		switch device {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .deviceCanonical, auxiliaryKey: ._deviceCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .deviceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .deviceReference)
		}
		
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try specimenQuantity?.encode(on: &_container, forKey: .specimenQuantity)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeviceX {
		var _t_device: DeviceX? = nil
		if let deviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .deviceCanonical, auxiliaryKey: ._deviceCanonical) {
			_t_device = .canonical(deviceCanonical)
		}
		if let deviceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .deviceCodeableConcept) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .codeableConcept(deviceCodeableConcept)
		}
		if let deviceReference = try Reference(from: _container, forKeyIfPresent: .deviceReference) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceReference, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .reference(deviceReference)
		}
		guard let _t_device else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.deviceReference)
			throw DecodingError.valueNotFound(DeviceX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"device\" but have none"))
		}
		return _t_device
	}
}

/**
 The physical feature of a specimen.
 
 A physical feature or landmark on a specimen, highlighted for context by the collector of the specimen (e.g. surgeon),
 that identifies the type of feature as well as its meaning (e.g. the red ink indicating the resection margin of the
 right lobe of the excised prostate tissue or wire loop at radiologically suspected tumor location).
 */
public struct SpecimenFeature: BackboneElement {
	
	/// Information about the feature
	public var description_fhir: FHIRPrimitive<FHIRString>
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Highlighted feature
	public var type: CodeableConcept
	
	/// Designated initializer
	public init(
		description_fhir: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		type: CodeableConcept
	) {
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.type = type
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case type
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.type = try CodeableConcept(from: _container, forKey: .type)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try description_fhir.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try type.encode(on: &_container, forKey: .type)
	}
}

/**
 Processing and processing step details.
 
 Details concerning processing and processing steps for the specimen.
 */
public struct SpecimenProcessing: BackboneElement {
	
	/// All possible types for "device[x]"
	public enum DeviceX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// All possible types for "time[x]"
	public enum TimeX: Equatable, Hashable, Sendable {
		case dateTime(FHIRPrimitive<DateTime>)
		indirect case duration(Duration)
		indirect case period(Period)
	}
	
	/// Material used in the processing step
	public var additive: [CodeableReference]?
	
	/// Textual description of procedure
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Device used to process the specimen
	/// One of `device[x]`
	public var device: DeviceX?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Indicates the treatment step  applied to the specimen
	public var method: CodeableConcept?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Entity processing specimen
	public var performer: Reference?
	
	/// Date and time of specimen processing
	/// One of `time[x]`
	public var time: TimeX?
	
	/// Designated initializer
	public init(
		additive: [CodeableReference]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		device: DeviceX? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		method: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		performer: Reference? = nil,
		time: TimeX? = nil
	) {
		self.additive = additive
		self.description_fhir = description_fhir
		self.device = device
		self.`extension` = `extension`
		self.id = id
		self.method = method
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.time = time
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case additive
		case description_fhir = "description"; case _description_fhir = "_description"
		case deviceCanonical; case _deviceCanonical
		case deviceCodeableConcept
		case deviceReference
		case `extension` = "extension"
		case id; case _id
		case method
		case modifierExtension
		case performer
		case timeDateTime; case _timeDateTime
		case timeDuration
		case timePeriod
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.additive = try [CodeableReference](from: _container, forKeyIfPresent: .additive)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.device = try Self._decodeDevice(from: _container)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.method = try CodeableConcept(from: _container, forKeyIfPresent: .method)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.time = try Self._decodeTime(from: _container)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try additive?.encode(on: &_container, forKey: .additive)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		if let _enum = device {
		switch _enum {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .deviceCanonical, auxiliaryKey: ._deviceCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .deviceCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .deviceReference)
		}
		}
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try method?.encode(on: &_container, forKey: .method)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performer?.encode(on: &_container, forKey: .performer)
		if let _enum = time {
		switch _enum {
		case .dateTime(let _value):
			try _value.encode(on: &_container, forKey: .timeDateTime, auxiliaryKey: ._timeDateTime)
		case .duration(let _value):
			try _value.encode(on: &_container, forKey: .timeDuration)
		case .period(let _value):
			try _value.encode(on: &_container, forKey: .timePeriod)
		}
		}
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeDevice(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> DeviceX? {
		var _t_device: DeviceX? = nil
		if let deviceCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .deviceCanonical, auxiliaryKey: ._deviceCanonical) {
			_t_device = .canonical(deviceCanonical)
		}
		if let deviceCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .deviceCodeableConcept) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceCodeableConcept, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .codeableConcept(deviceCodeableConcept)
		}
		if let deviceReference = try Reference(from: _container, forKeyIfPresent: .deviceReference) {
			if _t_device != nil {
				throw DecodingError.dataCorruptedError(forKey: .deviceReference, in: _container, debugDescription: "More than one value provided for \"device\"")
			}
			_t_device = .reference(deviceReference)
		}
		return _t_device
	}
	
	private static func _decodeTime(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> TimeX? {
		var _t_time: TimeX? = nil
		if let timeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .timeDateTime, auxiliaryKey: ._timeDateTime) {
			_t_time = .dateTime(timeDateTime)
		}
		if let timeDuration = try Duration(from: _container, forKeyIfPresent: .timeDuration) {
			if _t_time != nil {
				throw DecodingError.dataCorruptedError(forKey: .timeDuration, in: _container, debugDescription: "More than one value provided for \"time\"")
			}
			_t_time = .duration(timeDuration)
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
