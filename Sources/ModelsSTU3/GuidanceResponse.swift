//
//  GuidanceResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.2.11917 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse)
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
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Equatable, Hashable, Sendable {
		indirect case codeableConcept(CodeableConcept)
		indirect case reference(Reference)
	}
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Encounter or Episode during which the response was returned
	public var context: Reference?
	
	/// Additional required data
	public var dataRequirement: [DataRequirement]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts
	public var evaluationMessage: [Reference]?
	
	/// Additional Content defined by implementations
	public var `extension`: [Extension]?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: Identifier?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// A reference to a knowledge module
	public var module: Reference
	
	/// Additional notes about the response
	public var note: [Annotation]?
	
	/// When the guidance response was processed
	public var occurrenceDateTime: FHIRPrimitive<DateTime>?
	
	/// The output parameters of the evaluation, if any
	public var outputParameters: Reference?
	
	/// Device returning the guidance
	public var performer: Reference?
	
	/// Reason for the response
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// The id of the request associated with this response, if any
	public var requestId: FHIRPrimitive<FHIRString>?
	
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
		context: Reference? = nil,
		dataRequirement: [DataRequirement]? = nil,
		evaluationMessage: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: Identifier? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		module: Reference,
		note: [Annotation]? = nil,
		occurrenceDateTime: FHIRPrimitive<DateTime>? = nil,
		outputParameters: Reference? = nil,
		performer: Reference? = nil,
		reason: ReasonX? = nil,
		requestId: FHIRPrimitive<FHIRString>? = nil,
		result: Reference? = nil,
		status: FHIRPrimitive<GuidanceResponseStatus>,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.contained = contained
		self.context = context
		self.dataRequirement = dataRequirement
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
		self.reason = reason
		self.requestId = requestId
		self.result = result
		self.status = status
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case contained
		case context
		case dataRequirement
		case evaluationMessage
		case `extension` = "extension"
		case id; case _id
		case identifier
		case implicitRules; case _implicitRules
		case language; case _language
		case meta
		case modifierExtension
		case module
		case note
		case occurrenceDateTime; case _occurrenceDateTime
		case outputParameters
		case performer
		case reasonCodeableConcept
		case reasonReference
		case requestId; case _requestId
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
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.evaluationMessage = try [Reference](from: _container, forKeyIfPresent: .evaluationMessage)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.module = try Reference(from: _container, forKey: .module)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		self.outputParameters = try Reference(from: _container, forKeyIfPresent: .outputParameters)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		self.reason = try Self._decodeReason(from: _container)
		self.requestId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestId, auxiliaryKey: ._requestId)
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
		try context?.encode(on: &_container, forKey: .context)
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try evaluationMessage?.encode(on: &_container, forKey: .evaluationMessage)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try module.encode(on: &_container, forKey: .module)
		try note?.encode(on: &_container, forKey: .note)
		try occurrenceDateTime?.encode(on: &_container, forKey: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		try outputParameters?.encode(on: &_container, forKey: .outputParameters)
		try performer?.encode(on: &_container, forKey: .performer)
		if let _enum = reason {
		switch _enum {
		case .codeableConcept(let _value):
			try _value.encode(on: &_container, forKey: .reasonCodeableConcept)
		case .reference(let _value):
			try _value.encode(on: &_container, forKey: .reasonReference)
		}
		}
		try requestId?.encode(on: &_container, forKey: .requestId, auxiliaryKey: ._requestId)
		try result?.encode(on: &_container, forKey: .result)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
	
	// MARK: ValueX Decoders
	
	private static func _decodeReason(
		from _container: KeyedDecodingContainer<CodingKeys>
	) throws -> ReasonX? {
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		return _t_reason
	}
}
