//
//  VerificationResult.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45 (http://hl7.org/fhir/StructureDefinition/VerificationResult)
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
 Describes validation requirements, source(s), status and dates for one or more elements.
 */
public struct VerificationResult: DomainResource {
	
	public static let resourceType: ResourceType = .verificationResult
	
	/// Information about the entity attesting to information
	public var attestation: VerificationResultAttestation?
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// fatal | warn | rec-only | none
	public var failureAction: CodeableConcept?
	
	/// Frequency of revalidation
	public var frequency: Timing?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// The date/time validation was last completed (including failed validations)
	public var lastPerformed: FHIRPrimitive<DateTime>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// none | initial | periodic
	public var need: CodeableConcept?
	
	/// The date when target is next validated, if appropriate
	public var nextScheduled: FHIRPrimitive<FHIRDate>?
	
	/// Information about the primary source(s) involved in validation
	public var primarySource: [VerificationResultPrimarySource]?
	
	/// The validation status of the target (attested; validated; in process; requires revalidation; validation failed;
	/// revalidation failed).
	public var status: FHIRPrimitive<Status>
	
	/// When the validation status was updated
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// A resource that was validated
	public var target: [Reference]?
	
	/// The fhirpath location(s) within the resource that was validated
	public var targetLocation: [FHIRPrimitive<FHIRString>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// The primary process by which the target is validated (edit check; value set; primary source; multiple sources;
	/// standalone; in context)
	public var validationProcess: [CodeableConcept]?
	
	/// nothing | primary | multiple
	public var validationType: CodeableConcept?
	
	/// Information about the entity validating information
	public var validator: [VerificationResultValidator]?
	
	/// Designated initializer
	public init(
		attestation: VerificationResultAttestation? = nil,
		contained: [ResourceProxy]? = nil,
		`extension`: [Extension]? = nil,
		failureAction: CodeableConcept? = nil,
		frequency: Timing? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		lastPerformed: FHIRPrimitive<DateTime>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		need: CodeableConcept? = nil,
		nextScheduled: FHIRPrimitive<FHIRDate>? = nil,
		primarySource: [VerificationResultPrimarySource]? = nil,
		status: FHIRPrimitive<Status>,
		statusDate: FHIRPrimitive<DateTime>? = nil,
		target: [Reference]? = nil,
		targetLocation: [FHIRPrimitive<FHIRString>]? = nil,
		text: Narrative? = nil,
		validationProcess: [CodeableConcept]? = nil,
		validationType: CodeableConcept? = nil,
		validator: [VerificationResultValidator]? = nil
	) {
		self.attestation = attestation
		self.contained = contained
		self.`extension` = `extension`
		self.failureAction = failureAction
		self.frequency = frequency
		self.id = id
		self.implicitRules = implicitRules
		self.language = language
		self.lastPerformed = lastPerformed
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.need = need
		self.nextScheduled = nextScheduled
		self.primarySource = primarySource
		self.status = status
		self.statusDate = statusDate
		self.target = target
		self.targetLocation = targetLocation
		self.text = text
		self.validationProcess = validationProcess
		self.validationType = validationType
		self.validator = validator
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case attestation
		case contained
		case `extension` = "extension"
		case failureAction
		case frequency
		case id; case _id
		case implicitRules; case _implicitRules
		case language; case _language
		case lastPerformed; case _lastPerformed
		case meta
		case modifierExtension
		case need
		case nextScheduled; case _nextScheduled
		case primarySource
		case status; case _status
		case statusDate; case _statusDate
		case target
		case targetLocation; case _targetLocation
		case text
		case validationProcess
		case validationType
		case validator
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attestation = try VerificationResultAttestation(from: _container, forKeyIfPresent: .attestation)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.failureAction = try CodeableConcept(from: _container, forKeyIfPresent: .failureAction)
		self.frequency = try Timing(from: _container, forKeyIfPresent: .frequency)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.lastPerformed = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastPerformed, auxiliaryKey: ._lastPerformed)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.need = try CodeableConcept(from: _container, forKeyIfPresent: .need)
		self.nextScheduled = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .nextScheduled, auxiliaryKey: ._nextScheduled)
		self.primarySource = try [VerificationResultPrimarySource](from: _container, forKeyIfPresent: .primarySource)
		self.status = try FHIRPrimitive<Status>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.target = try [Reference](from: _container, forKeyIfPresent: .target)
		self.targetLocation = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .targetLocation, auxiliaryKey: ._targetLocation)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
		self.validationProcess = try [CodeableConcept](from: _container, forKeyIfPresent: .validationProcess)
		self.validationType = try CodeableConcept(from: _container, forKeyIfPresent: .validationType)
		self.validator = try [VerificationResultValidator](from: _container, forKeyIfPresent: .validator)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try attestation?.encode(on: &_container, forKey: .attestation)
		try contained?.encode(on: &_container, forKey: .contained)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try failureAction?.encode(on: &_container, forKey: .failureAction)
		try frequency?.encode(on: &_container, forKey: .frequency)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try lastPerformed?.encode(on: &_container, forKey: .lastPerformed, auxiliaryKey: ._lastPerformed)
		try meta?.encode(on: &_container, forKey: .meta)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try need?.encode(on: &_container, forKey: .need)
		try nextScheduled?.encode(on: &_container, forKey: .nextScheduled, auxiliaryKey: ._nextScheduled)
		try primarySource?.encode(on: &_container, forKey: .primarySource)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try target?.encode(on: &_container, forKey: .target)
		try targetLocation?.encode(on: &_container, forKey: .targetLocation, auxiliaryKey: ._targetLocation)
		try text?.encode(on: &_container, forKey: .text)
		try validationProcess?.encode(on: &_container, forKey: .validationProcess)
		try validationType?.encode(on: &_container, forKey: .validationType)
		try validator?.encode(on: &_container, forKey: .validator)
	}
}

/**
 Information about the entity attesting to information.
 */
public struct VerificationResultAttestation: BackboneElement {
	
	/// The method by which attested information was submitted/retrieved
	public var communicationMethod: CodeableConcept?
	
	/// The date the information was attested to
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// When the who is asserting on behalf of another (organization or individual)
	public var onBehalfOf: Reference?
	
	/// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the
	/// attestation source
	public var proxyIdentityCertificate: FHIRPrimitive<FHIRString>?
	
	/// Proxy signature
	public var proxySignature: Signature?
	
	/// A digital identity certificate associated with the attestation source
	public var sourceIdentityCertificate: FHIRPrimitive<FHIRString>?
	
	/// Attester signature
	public var sourceSignature: Signature?
	
	/// The individual or organization attesting to information
	public var who: Reference?
	
	/// Designated initializer
	public init(
		communicationMethod: CodeableConcept? = nil,
		date: FHIRPrimitive<FHIRDate>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		onBehalfOf: Reference? = nil,
		proxyIdentityCertificate: FHIRPrimitive<FHIRString>? = nil,
		proxySignature: Signature? = nil,
		sourceIdentityCertificate: FHIRPrimitive<FHIRString>? = nil,
		sourceSignature: Signature? = nil,
		who: Reference? = nil
	) {
		self.communicationMethod = communicationMethod
		self.date = date
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.onBehalfOf = onBehalfOf
		self.proxyIdentityCertificate = proxyIdentityCertificate
		self.proxySignature = proxySignature
		self.sourceIdentityCertificate = sourceIdentityCertificate
		self.sourceSignature = sourceSignature
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case communicationMethod
		case date; case _date
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case onBehalfOf
		case proxyIdentityCertificate; case _proxyIdentityCertificate
		case proxySignature
		case sourceIdentityCertificate; case _sourceIdentityCertificate
		case sourceSignature
		case who
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.communicationMethod = try CodeableConcept(from: _container, forKeyIfPresent: .communicationMethod)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.proxyIdentityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .proxyIdentityCertificate, auxiliaryKey: ._proxyIdentityCertificate)
		self.proxySignature = try Signature(from: _container, forKeyIfPresent: .proxySignature)
		self.sourceIdentityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceIdentityCertificate, auxiliaryKey: ._sourceIdentityCertificate)
		self.sourceSignature = try Signature(from: _container, forKeyIfPresent: .sourceSignature)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try communicationMethod?.encode(on: &_container, forKey: .communicationMethod)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try proxyIdentityCertificate?.encode(on: &_container, forKey: .proxyIdentityCertificate, auxiliaryKey: ._proxyIdentityCertificate)
		try proxySignature?.encode(on: &_container, forKey: .proxySignature)
		try sourceIdentityCertificate?.encode(on: &_container, forKey: .sourceIdentityCertificate, auxiliaryKey: ._sourceIdentityCertificate)
		try sourceSignature?.encode(on: &_container, forKey: .sourceSignature)
		try who?.encode(on: &_container, forKey: .who)
	}
}

/**
 Information about the primary source(s) involved in validation.
 */
public struct VerificationResultPrimarySource: BackboneElement {
	
	/// yes | no | undetermined
	public var canPushUpdates: CodeableConcept?
	
	/// Method for exchanging information with the primary source
	public var communicationMethod: [CodeableConcept]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// specific | any | source
	public var pushTypeAvailable: [CodeableConcept]?
	
	/// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship
	/// owner; Registration Authority; legal source; issuing source; authoritative source)
	public var type: [CodeableConcept]?
	
	/// When the target was validated against the primary source
	public var validationDate: FHIRPrimitive<DateTime>?
	
	/// successful | failed | unknown
	public var validationStatus: CodeableConcept?
	
	/// Reference to the primary source
	public var who: Reference?
	
	/// Designated initializer
	public init(
		canPushUpdates: CodeableConcept? = nil,
		communicationMethod: [CodeableConcept]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		pushTypeAvailable: [CodeableConcept]? = nil,
		type: [CodeableConcept]? = nil,
		validationDate: FHIRPrimitive<DateTime>? = nil,
		validationStatus: CodeableConcept? = nil,
		who: Reference? = nil
	) {
		self.canPushUpdates = canPushUpdates
		self.communicationMethod = communicationMethod
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.pushTypeAvailable = pushTypeAvailable
		self.type = type
		self.validationDate = validationDate
		self.validationStatus = validationStatus
		self.who = who
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case canPushUpdates
		case communicationMethod
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case pushTypeAvailable
		case type
		case validationDate; case _validationDate
		case validationStatus
		case who
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.canPushUpdates = try CodeableConcept(from: _container, forKeyIfPresent: .canPushUpdates)
		self.communicationMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .communicationMethod)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.pushTypeAvailable = try [CodeableConcept](from: _container, forKeyIfPresent: .pushTypeAvailable)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.validationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .validationDate, auxiliaryKey: ._validationDate)
		self.validationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .validationStatus)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try canPushUpdates?.encode(on: &_container, forKey: .canPushUpdates)
		try communicationMethod?.encode(on: &_container, forKey: .communicationMethod)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try pushTypeAvailable?.encode(on: &_container, forKey: .pushTypeAvailable)
		try type?.encode(on: &_container, forKey: .type)
		try validationDate?.encode(on: &_container, forKey: .validationDate, auxiliaryKey: ._validationDate)
		try validationStatus?.encode(on: &_container, forKey: .validationStatus)
		try who?.encode(on: &_container, forKey: .who)
	}
}

/**
 Information about the entity validating information.
 */
public struct VerificationResultValidator: BackboneElement {
	
	/// Validator signature
	public var attestationSignature: Signature?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A digital identity certificate associated with the validator
	public var identityCertificate: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Reference to the organization validating information
	public var organization: Reference
	
	/// Designated initializer
	public init(
		attestationSignature: Signature? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identityCertificate: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		organization: Reference
	) {
		self.attestationSignature = attestationSignature
		self.`extension` = `extension`
		self.id = id
		self.identityCertificate = identityCertificate
		self.modifierExtension = modifierExtension
		self.organization = organization
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attestationSignature
		case `extension` = "extension"
		case id; case _id
		case identityCertificate; case _identityCertificate
		case modifierExtension
		case organization
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.attestationSignature = try Signature(from: _container, forKeyIfPresent: .attestationSignature)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .identityCertificate, auxiliaryKey: ._identityCertificate)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.organization = try Reference(from: _container, forKey: .organization)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try attestationSignature?.encode(on: &_container, forKey: .attestationSignature)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identityCertificate?.encode(on: &_container, forKey: .identityCertificate, auxiliaryKey: ._identityCertificate)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try organization.encode(on: &_container, forKey: .organization)
	}
}
