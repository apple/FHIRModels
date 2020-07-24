//
//  GuidanceResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 3.0.1.11917 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse)
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
 The formal response to a guidance request.
 
 A guidance response is the formal response to a guidance request, including any output parameters returned by the
 evaluation, as well as the description of any proposed actions to be taken.
 */
open class GuidanceResponse: DomainResource {
	
	override open class var resourceType: ResourceType { return .guidanceResponse }
	
	/// All possible types for "reason[x]"
	public enum ReasonX: Hashable {
		case codeableConcept(CodeableConcept)
		case reference(Reference)
	}
	
	/// The id of the request associated with this response, if any
	public var requestId: FHIRPrimitive<FHIRString>?
	
	/// Business identifier
	public var identifier: Identifier?
	
	/// A reference to a knowledge module
	public var module: Reference
	
	/// The status of the response. If the evaluation is completed successfully, the status will indicate success.
	/// However, in order to complete the evaluation, the engine may require more information. In this case, the status
	/// will be data-required, and the response will contain a description of the additional required information. If
	/// the evaluation completed successfully, but the engine determines that a potentially more accurate response could
	/// be provided if more data was available, the status will be data-requested, and the response will contain a
	/// description of the additional requested information.
	public var status: FHIRPrimitive<GuidanceResponseStatus>
	
	/// Patient the request was performed for
	public var subject: Reference?
	
	/// Encounter or Episode during which the response was returned
	public var context: Reference?
	
	/// When the guidance response was processed
	public var occurrenceDateTime: FHIRPrimitive<DateTime>?
	
	/// Device returning the guidance
	public var performer: Reference?
	
	/// Reason for the response
	/// One of `reason[x]`
	public var reason: ReasonX?
	
	/// Additional notes about the response
	public var note: [Annotation]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts
	public var evaluationMessage: [Reference]?
	
	/// The output parameters of the evaluation, if any
	public var outputParameters: Reference?
	
	/// Proposed actions, if any
	public var result: Reference?
	
	/// Additional required data
	public var dataRequirement: [DataRequirement]?
	
	/// Designated initializer taking all required properties
	public init(module: Reference, status: FHIRPrimitive<GuidanceResponseStatus>) {
		self.module = module
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(module: module, status: status)
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
		self.note = note
		self.occurrenceDateTime = occurrenceDateTime
		self.outputParameters = outputParameters
		self.performer = performer
		self.reason = reason
		self.requestId = requestId
		self.result = result
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case context
		case dataRequirement
		case evaluationMessage
		case identifier
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.context = try Reference(from: _container, forKeyIfPresent: .context)
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.evaluationMessage = try [Reference](from: _container, forKeyIfPresent: .evaluationMessage)
		self.identifier = try Identifier(from: _container, forKeyIfPresent: .identifier)
		self.module = try Reference(from: _container, forKey: .module)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.occurrenceDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .occurrenceDateTime, auxiliaryKey: ._occurrenceDateTime)
		self.outputParameters = try Reference(from: _container, forKeyIfPresent: .outputParameters)
		self.performer = try Reference(from: _container, forKeyIfPresent: .performer)
		var _t_reason: ReasonX? = nil
		if let reasonCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .reasonCodeableConcept) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonCodeableConcept, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .codeableConcept(reasonCodeableConcept)
		}
		if let reasonReference = try Reference(from: _container, forKeyIfPresent: .reasonReference) {
			if _t_reason != nil {
				throw DecodingError.dataCorruptedError(forKey: .reasonReference, in: _container, debugDescription: "More than one value provided for \"reason\"")
			}
			_t_reason = .reference(reasonReference)
		}
		self.reason = _t_reason
		self.requestId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestId, auxiliaryKey: ._requestId)
		self.result = try Reference(from: _container, forKeyIfPresent: .result)
		self.status = try FHIRPrimitive<GuidanceResponseStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try context?.encode(on: &_container, forKey: .context)
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try evaluationMessage?.encode(on: &_container, forKey: .evaluationMessage)
		try identifier?.encode(on: &_container, forKey: .identifier)
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
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? GuidanceResponse else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return context == _other.context
		    && dataRequirement == _other.dataRequirement
		    && evaluationMessage == _other.evaluationMessage
		    && identifier == _other.identifier
		    && module == _other.module
		    && note == _other.note
		    && occurrenceDateTime == _other.occurrenceDateTime
		    && outputParameters == _other.outputParameters
		    && performer == _other.performer
		    && reason == _other.reason
		    && requestId == _other.requestId
		    && result == _other.result
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(context)
		hasher.combine(dataRequirement)
		hasher.combine(evaluationMessage)
		hasher.combine(identifier)
		hasher.combine(module)
		hasher.combine(note)
		hasher.combine(occurrenceDateTime)
		hasher.combine(outputParameters)
		hasher.combine(performer)
		hasher.combine(reason)
		hasher.combine(requestId)
		hasher.combine(result)
		hasher.combine(status)
		hasher.combine(subject)
	}
}
