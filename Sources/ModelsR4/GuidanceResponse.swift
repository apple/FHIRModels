//
//  GuidanceResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse)
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
 The formal response to a guidance request.
 
 A guidance response is the formal response to a guidance request, including any output parameters returned by the
 evaluation, as well as the description of any proposed actions to be taken.
 */
public struct GuidanceResponse: DomainResource {
	
	public static let resourceType: ResourceType = .guidanceResponse
	
	/// All possible types for "module[x]"
	public enum ModuleX: Equatable, Hashable, Sendable {
		case canonical(FHIRPrimitive<Canonical>)
		indirect case codeableConcept(CodeableConcept)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional required data
	public var dataRequirement: [DataRequirement]?
	
	/// Encounter during which the response was returned
	public var encounter: Reference?
	
	/// Messages resulting from the evaluation of the artifact or artifacts
	public var evaluationMessage: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// What guidance was requested
	/// One of `module[x]`
	public var module: ModuleX
	
	/// Additional notes about the response
	public var note: [Annotation]?
	
	/// When the guidance response was processed
	public var occurrenceDateTime: FHIRPrimitive<DateTime>?
	
	/// The output parameters of the evaluation, if any
	public var outputParameters: Reference?
	
	/// Device returning the guidance
	public var performer: Reference?
	
	/// Why guidance is needed
	public var reasonCode: [CodeableConcept]?
	
	/// Why guidance is needed
	public var reasonReference: [Reference]?
	
	/// The identifier of the request associated with this response, if any
	public var requestIdentifier: Identifier?
	
	/// Proposed actions, if any
	public var result: Reference?
	
	/// The status of the response. If the evaluation is completed successfully, the status will indicate success.
	/// However, in order to complete the evaluation, the engine may require more information. In this case, the status
	/// will be data-required, and the response will contain a description of the additional required information. If
	/// the evaluation completed successfully, but the engine determines that a potentially more accurate response could
	/// be provided if more data was available, the status will be data-requested, and the response will contain a
	/// description of the additional requested information.
	public var status: FHIRPrimitive<GuidanceResponseStatus>
	
	/// Patient the request was performed for
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		contained: [ResourceProxy]? = nil,
		dataRequirement: [DataRequirement]? = nil,
		encounter: Reference? = nil,
		evaluationMessage: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		module: ModuleX,
		note: [Annotation]? = nil,
		occurrenceDateTime: FHIRPrimitive<DateTime>? = nil,
		outputParameters: Reference? = nil,
		performer: Reference? = nil,
		reasonCode: [CodeableConcept]? = nil,
		reasonReference: [Reference]? = nil,
		requestIdentifier: Identifier? = nil,
		result: Reference? = nil,
		status: FHIRPrimitive<GuidanceResponseStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.dataRequirement = dataRequirement
		self.encounter = encounter
		self.evaluationMessage = evaluationMessage
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.module = module
		self.note = note
		self.occurrenceDateTime = occurrenceDateTime
		self.outputParameters = outputParameters
		self.performer = performer
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.requestIdentifier = requestIdentifier
		self.result = result
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case dataRequirement
		case encounter
		case evaluationMessage
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case moduleCanonical; case _moduleCanonical
		case moduleCodeableConcept
		case moduleUri; case _moduleUri
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case outputParameters
		case performer
		case reasonCode
		case reasonReference
		case requestIdentifier
		case result
		case status; case _status
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evaluationMessage = try [Reference](from: _container, forKeyIfPresent: .evaluationMessage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.module = try Self._decodeModule(from: _container)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		self.outputParameters = try Reference(from: _container, forKeyIfPresent: .outputParameters)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.reasonCode = try [CodeableConcept](from: _container, forKeyIfPresent: .reasonCode)
		self.reasonReference = try [Reference](from: _container, forKeyIfPresent: .reasonReference)
		self.requestIdentifier = try Identifier(from: _container, forKeyIfPresent: .requestIdentifier)
		self.result = try Reference(from: _container, forKeyIfPresent: .result)
		self.status = try FHIRPrimitive<GuidanceResponseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try contained?.encode(on: &_container, forKey: .contained)
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evaluationMessage?.encode(on: &_container, forKey: .evaluationMessage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		
		switch module {
		case .canonical(let _value):
			try _value.encode(on: &_container, forKey: .moduleCanonical, auxiliaryKey: ._moduleCanonical)
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .moduleCodeableConcept)
		case .uri(let _value):
			try _value.encode(on: &_container, forKey: .moduleUri, auxiliaryKey: ._moduleUri)
		}
		
		try note?.encode(on: &_container, forKey: .note)
		try occurrenceDateTime?.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		try outputParameters?.encode(on: &_container, forKey: .outputParameters)
		try performer?.encode(on: &_container, forKey: .performer)
		try reasonCode?.encode(on: &_container, forKey: .reasonCode)
		try reasonReference?.encode(on: &_container, forKey: .reasonReference)
		try requestIdentifier?.encode(on: &_container, forKey: .requestIdentifier)
		try result?.encode(on: &_container, forKey: .result)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeModule(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ModuleX {
		var _t_module: ModuleX? = nil
		if let moduleCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .moduleCanonical, auxiliaryKey: ._moduleCanonical) {
			_t_module = .canonical(moduleCanonical)
		}
		if let moduleCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .moduleCodeableConcept) {
			if _t_module != nil {
				throw DecodingError.dataCorruptedError(forKey: .moduleCodeableConcept, in: _container, debugDescription: "More than one value provided for \"module\"")
			}
			_t_module = .codeableConcept(moduleCodeableConcept)
		}
		if let moduleUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .moduleUri, auxiliaryKey: ._moduleUri) {
			if _t_module != nil {
				throw DecodingError.dataCorruptedError(forKey: .moduleUri, in: _container, debugDescription: "More than one value provided for \"module\"")
			}
			_t_module = .uri(moduleUri)
		}
		guard let _t_module else {
			var _codingPath = _container.codingPath
            _codingPath.append(CodingKeys.moduleUri)
			throw DecodingError.valueNotFound(ModuleX.self, DecodingError.Context(codingPath: _codingPath, debugDescription: "Must have at least one value for \"module\" but have none"))
		}
		return _t_module
	}
}
