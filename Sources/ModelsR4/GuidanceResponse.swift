//
//  GuidanceResponse.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse)
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
	
	/// All possible types for "module[x]"
	public enum ModuleX: Hashable {
		case canonical(FHIRPrimitive<Canonical>)
		case codeableConcept(CodeableConcept)
		case uri(FHIRPrimitive<FHIRURI>)
	}
	
	/// The identifier of the request associated with this response, if any
	public var requestIdentifier: Identifier?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// What guidance was requested
	/// One of `module[x]`
	public var module: ModuleX
	
	/// The status of the response. If the evaluation is completed successfully, the status will indicate success.
	/// However, in order to complete the evaluation, the engine may require more information. In this case, the status
	/// will be data-required, and the response will contain a description of the additional required information. If
	/// the evaluation completed successfully, but the engine determines that a potentially more accurate response could
	/// be provided if more data was available, the status will be data-requested, and the response will contain a
	/// description of the additional requested information.
	public var status: FHIRPrimitive<GuidanceResponseStatus>
	
	/// Patient the request was performed for
	public var subject: Reference?
	
	/// Encounter during which the response was returned
	public var encounter: Reference?
	
	/// When the guidance response was processed
	public var occurrenceDateTime: FHIRPrimitive<DateTime>?
	
	/// Device returning the guidance
	public var performer: Reference?
	
	/// Why guidance is needed
	public var reasonCode: [CodeableConcept]?
	
	/// Why guidance is needed
	public var reasonReference: [Reference]?
	
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
	public init(module: ModuleX, status: FHIRPrimitive<GuidanceResponseStatus>) {
		self.module = module
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							text: Narrative? = nil)
	{
		self.init(module: module, status: status)
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
		self.note = note
		self.occurrenceDateTime = occurrenceDateTime
		self.outputParameters = outputParameters
		self.performer = performer
		self.reasonCode = reasonCode
		self.reasonReference = reasonReference
		self.requestIdentifier = requestIdentifier
		self.result = result
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case dataRequirement
		case encounter
		case evaluationMessage
		case identifier
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
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Validate that we have at least one of the mandatory properties for expanded properties
		guard _container.contains(CodingKeys.moduleCanonical) || _container.contains(CodingKeys.moduleCodeableConcept) || _container.contains(CodingKeys.moduleUri) else {
			throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: [CodingKeys.moduleCanonical, CodingKeys.moduleCodeableConcept, CodingKeys.moduleUri], debugDescription: "Must have at least one value for \"module\" but have none"))
		}
		
		// Decode all our properties
		self.dataRequirement = try [DataRequirement](from: _container, forKeyIfPresent: .dataRequirement)
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.evaluationMessage = try [Reference](from: _container, forKeyIfPresent: .evaluationMessage)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		var _t_module: ModuleX? = nil
		if let moduleUri = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .moduleUri, auxiliaryKey: ._moduleUri) {
			if _t_module != nil {
				throw DecodingError.dataCorruptedError(forKey: .moduleUri, in: _container, debugDescription: "More than one value provided for \"module\"")
			}
			_t_module = .uri(moduleUri)
		}
		if let moduleCanonical = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .moduleCanonical, auxiliaryKey: ._moduleCanonical) {
			if _t_module != nil {
				throw DecodingError.dataCorruptedError(forKey: .moduleCanonical, in: _container, debugDescription: "More than one value provided for \"module\"")
			}
			_t_module = .canonical(moduleCanonical)
		}
		if let moduleCodeableConcept = try CodeableConcept(from: _container, forKeyIfPresent: .moduleCodeableConcept) {
			if _t_module != nil {
				throw DecodingError.dataCorruptedError(forKey: .moduleCodeableConcept, in: _container, debugDescription: "More than one value provided for \"module\"")
			}
			_t_module = .codeableConcept(moduleCodeableConcept)
		}
		self.module = _t_module!
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
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try dataRequirement?.encode(on: &_container, forKey: .dataRequirement)
		try encounter?.encode(on: &_container, forKey: .encounter)
		try evaluationMessage?.encode(on: &_container, forKey: .evaluationMessage)
		try identifier?.encode(on: &_container, forKey: .identifier)
		
			switch module {
			case .uri(let _value):
				try _value.encode(on: &_container, forKey: .moduleUri, auxiliaryKey: ._moduleUri)
			case .canonical(let _value):
				try _value.encode(on: &_container, forKey: .moduleCanonical, auxiliaryKey: ._moduleCanonical)
			case .codeableConcept(let _value):
				try _value.encode(on: &_container, forKey: .moduleCodeableConcept)
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
		return dataRequirement == _other.dataRequirement
		    && encounter == _other.encounter
		    && evaluationMessage == _other.evaluationMessage
		    && identifier == _other.identifier
		    && module == _other.module
		    && note == _other.note
		    && occurrenceDateTime == _other.occurrenceDateTime
		    && outputParameters == _other.outputParameters
		    && performer == _other.performer
		    && reasonCode == _other.reasonCode
		    && reasonReference == _other.reasonReference
		    && requestIdentifier == _other.requestIdentifier
		    && result == _other.result
		    && status == _other.status
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(dataRequirement)
		hasher.combine(encounter)
		hasher.combine(evaluationMessage)
		hasher.combine(identifier)
		hasher.combine(module)
		hasher.combine(note)
		hasher.combine(occurrenceDateTime)
		hasher.combine(outputParameters)
		hasher.combine(performer)
		hasher.combine(reasonCode)
		hasher.combine(reasonReference)
		hasher.combine(requestIdentifier)
		hasher.combine(result)
		hasher.combine(status)
		hasher.combine(subject)
	}
}
