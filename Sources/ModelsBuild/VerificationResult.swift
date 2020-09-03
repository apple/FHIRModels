//
//  VerificationResult.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/VerificationResult)
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
 Describes validation requirements, source(s), status and dates for one or more elements.
 */
open class VerificationResult: DomainResource {
	
	override open class var resourceType: ResourceType { return .verificationResult }
	
	/// A resource that was validated
	public var target: [Reference]?
	
	/// The fhirpath location(s) within the resource that was validated
	public var targetLocation: [FHIRPrimitive<FHIRString>]?
	
	/// none | initial | periodic
	public var need: CodeableConcept?
	
	/// The validation status of the target (attested; validated; in process; requires revalidation; validation failed;
	/// revalidation failed).
	public var status: FHIRPrimitive<Status>
	
	/// When the validation status was updated
	public var statusDate: FHIRPrimitive<DateTime>?
	
	/// nothing | primary | multiple
	public var validationType: CodeableConcept?
	
	/// The primary process by which the target is validated (edit check; value set; primary source; multiple sources;
	/// standalone; in context)
	public var validationProcess: [CodeableConcept]?
	
	/// Frequency of revalidation
	public var frequency: Timing?
	
	/// The date/time validation was last completed (including failed validations)
	public var lastPerformed: FHIRPrimitive<DateTime>?
	
	/// The date when target is next validated, if appropriate
	public var nextScheduled: FHIRPrimitive<FHIRDate>?
	
	/// fatal | warn | rec-only | none
	public var failureAction: CodeableConcept?
	
	/// Information about the primary source(s) involved in validation
	public var primarySource: [VerificationResultPrimarySource]?
	
	/// Information about the entity attesting to information
	public var attestation: VerificationResultAttestation?
	
	/// Information about the entity validating information
	public var validator: [VerificationResultValidator]?
	
	/// Designated initializer taking all required properties
	public init(status: FHIRPrimitive<Status>) {
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							validator: [VerificationResultValidator]? = nil)
	{
		self.init(status: status)
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
		case attestation
		case failureAction
		case frequency
		case lastPerformed; case _lastPerformed
		case need
		case nextScheduled; case _nextScheduled
		case primarySource
		case status; case _status
		case statusDate; case _statusDate
		case target
		case targetLocation; case _targetLocation
		case validationProcess
		case validationType
		case validator
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attestation = try VerificationResultAttestation(from: _container, forKeyIfPresent: .attestation)
		self.failureAction = try CodeableConcept(from: _container, forKeyIfPresent: .failureAction)
		self.frequency = try Timing(from: _container, forKeyIfPresent: .frequency)
		self.lastPerformed = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .lastPerformed, auxiliaryKey: ._lastPerformed)
		self.need = try CodeableConcept(from: _container, forKeyIfPresent: .need)
		self.nextScheduled = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .nextScheduled, auxiliaryKey: ._nextScheduled)
		self.primarySource = try [VerificationResultPrimarySource](from: _container, forKeyIfPresent: .primarySource)
		self.status = try FHIRPrimitive<Status>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.statusDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .statusDate, auxiliaryKey: ._statusDate)
		self.target = try [Reference](from: _container, forKeyIfPresent: .target)
		self.targetLocation = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .targetLocation, auxiliaryKey: ._targetLocation)
		self.validationProcess = try [CodeableConcept](from: _container, forKeyIfPresent: .validationProcess)
		self.validationType = try CodeableConcept(from: _container, forKeyIfPresent: .validationType)
		self.validator = try [VerificationResultValidator](from: _container, forKeyIfPresent: .validator)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attestation?.encode(on: &_container, forKey: .attestation)
		try failureAction?.encode(on: &_container, forKey: .failureAction)
		try frequency?.encode(on: &_container, forKey: .frequency)
		try lastPerformed?.encode(on: &_container, forKey: .lastPerformed, auxiliaryKey: ._lastPerformed)
		try need?.encode(on: &_container, forKey: .need)
		try nextScheduled?.encode(on: &_container, forKey: .nextScheduled, auxiliaryKey: ._nextScheduled)
		try primarySource?.encode(on: &_container, forKey: .primarySource)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try statusDate?.encode(on: &_container, forKey: .statusDate, auxiliaryKey: ._statusDate)
		try target?.encode(on: &_container, forKey: .target)
		try targetLocation?.encode(on: &_container, forKey: .targetLocation, auxiliaryKey: ._targetLocation)
		try validationProcess?.encode(on: &_container, forKey: .validationProcess)
		try validationType?.encode(on: &_container, forKey: .validationType)
		try validator?.encode(on: &_container, forKey: .validator)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VerificationResult else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attestation == _other.attestation
		    && failureAction == _other.failureAction
		    && frequency == _other.frequency
		    && lastPerformed == _other.lastPerformed
		    && need == _other.need
		    && nextScheduled == _other.nextScheduled
		    && primarySource == _other.primarySource
		    && status == _other.status
		    && statusDate == _other.statusDate
		    && target == _other.target
		    && targetLocation == _other.targetLocation
		    && validationProcess == _other.validationProcess
		    && validationType == _other.validationType
		    && validator == _other.validator
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attestation)
		hasher.combine(failureAction)
		hasher.combine(frequency)
		hasher.combine(lastPerformed)
		hasher.combine(need)
		hasher.combine(nextScheduled)
		hasher.combine(primarySource)
		hasher.combine(status)
		hasher.combine(statusDate)
		hasher.combine(target)
		hasher.combine(targetLocation)
		hasher.combine(validationProcess)
		hasher.combine(validationType)
		hasher.combine(validator)
	}
}

/**
 Information about the entity attesting to information.
 */
open class VerificationResultAttestation: BackboneElement {
	
	/// The individual or organization attesting to information
	public var who: Reference?
	
	/// When the who is asserting on behalf of another (organization or individual)
	public var onBehalfOf: Reference?
	
	/// The method by which attested information was submitted/retrieved
	public var communicationMethod: CodeableConcept?
	
	/// The date the information was attested to
	public var date: FHIRPrimitive<FHIRDate>?
	
	/// A digital identity certificate associated with the attestation source
	public var sourceIdentityCertificate: FHIRPrimitive<FHIRString>?
	
	/// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the
	/// attestation source
	public var proxyIdentityCertificate: FHIRPrimitive<FHIRString>?
	
	/// Proxy signature
	public var proxySignature: Signature?
	
	/// Attester signature
	public var sourceSignature: Signature?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
							who: Reference? = nil)
	{
		self.init()
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
		case onBehalfOf
		case proxyIdentityCertificate; case _proxyIdentityCertificate
		case proxySignature
		case sourceIdentityCertificate; case _sourceIdentityCertificate
		case sourceSignature
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.communicationMethod = try CodeableConcept(from: _container, forKeyIfPresent: .communicationMethod)
		self.date = try FHIRPrimitive<FHIRDate>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.onBehalfOf = try Reference(from: _container, forKeyIfPresent: .onBehalfOf)
		self.proxyIdentityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .proxyIdentityCertificate, auxiliaryKey: ._proxyIdentityCertificate)
		self.proxySignature = try Signature(from: _container, forKeyIfPresent: .proxySignature)
		self.sourceIdentityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceIdentityCertificate, auxiliaryKey: ._sourceIdentityCertificate)
		self.sourceSignature = try Signature(from: _container, forKeyIfPresent: .sourceSignature)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try communicationMethod?.encode(on: &_container, forKey: .communicationMethod)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try onBehalfOf?.encode(on: &_container, forKey: .onBehalfOf)
		try proxyIdentityCertificate?.encode(on: &_container, forKey: .proxyIdentityCertificate, auxiliaryKey: ._proxyIdentityCertificate)
		try proxySignature?.encode(on: &_container, forKey: .proxySignature)
		try sourceIdentityCertificate?.encode(on: &_container, forKey: .sourceIdentityCertificate, auxiliaryKey: ._sourceIdentityCertificate)
		try sourceSignature?.encode(on: &_container, forKey: .sourceSignature)
		try who?.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VerificationResultAttestation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return communicationMethod == _other.communicationMethod
		    && date == _other.date
		    && onBehalfOf == _other.onBehalfOf
		    && proxyIdentityCertificate == _other.proxyIdentityCertificate
		    && proxySignature == _other.proxySignature
		    && sourceIdentityCertificate == _other.sourceIdentityCertificate
		    && sourceSignature == _other.sourceSignature
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(communicationMethod)
		hasher.combine(date)
		hasher.combine(onBehalfOf)
		hasher.combine(proxyIdentityCertificate)
		hasher.combine(proxySignature)
		hasher.combine(sourceIdentityCertificate)
		hasher.combine(sourceSignature)
		hasher.combine(who)
	}
}

/**
 Information about the primary source(s) involved in validation.
 */
open class VerificationResultPrimarySource: BackboneElement {
	
	/// Reference to the primary source
	public var who: Reference?
	
	/// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship
	/// owner; Registration Authority; legal source; issuing source; authoritative source)
	public var type: [CodeableConcept]?
	
	/// Method for exchanging information with the primary source
	public var communicationMethod: [CodeableConcept]?
	
	/// successful | failed | unknown
	public var validationStatus: CodeableConcept?
	
	/// When the target was validated against the primary source
	public var validationDate: FHIRPrimitive<DateTime>?
	
	/// yes | no | undetermined
	public var canPushUpdates: CodeableConcept?
	
	/// specific | any | source
	public var pushTypeAvailable: [CodeableConcept]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							canPushUpdates: CodeableConcept? = nil,
							communicationMethod: [CodeableConcept]? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							pushTypeAvailable: [CodeableConcept]? = nil,
							type: [CodeableConcept]? = nil,
							validationDate: FHIRPrimitive<DateTime>? = nil,
							validationStatus: CodeableConcept? = nil,
							who: Reference? = nil)
	{
		self.init()
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
		case pushTypeAvailable
		case type
		case validationDate; case _validationDate
		case validationStatus
		case who
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.canPushUpdates = try CodeableConcept(from: _container, forKeyIfPresent: .canPushUpdates)
		self.communicationMethod = try [CodeableConcept](from: _container, forKeyIfPresent: .communicationMethod)
		self.pushTypeAvailable = try [CodeableConcept](from: _container, forKeyIfPresent: .pushTypeAvailable)
		self.type = try [CodeableConcept](from: _container, forKeyIfPresent: .type)
		self.validationDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .validationDate, auxiliaryKey: ._validationDate)
		self.validationStatus = try CodeableConcept(from: _container, forKeyIfPresent: .validationStatus)
		self.who = try Reference(from: _container, forKeyIfPresent: .who)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try canPushUpdates?.encode(on: &_container, forKey: .canPushUpdates)
		try communicationMethod?.encode(on: &_container, forKey: .communicationMethod)
		try pushTypeAvailable?.encode(on: &_container, forKey: .pushTypeAvailable)
		try type?.encode(on: &_container, forKey: .type)
		try validationDate?.encode(on: &_container, forKey: .validationDate, auxiliaryKey: ._validationDate)
		try validationStatus?.encode(on: &_container, forKey: .validationStatus)
		try who?.encode(on: &_container, forKey: .who)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VerificationResultPrimarySource else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return canPushUpdates == _other.canPushUpdates
		    && communicationMethod == _other.communicationMethod
		    && pushTypeAvailable == _other.pushTypeAvailable
		    && type == _other.type
		    && validationDate == _other.validationDate
		    && validationStatus == _other.validationStatus
		    && who == _other.who
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(canPushUpdates)
		hasher.combine(communicationMethod)
		hasher.combine(pushTypeAvailable)
		hasher.combine(type)
		hasher.combine(validationDate)
		hasher.combine(validationStatus)
		hasher.combine(who)
	}
}

/**
 Information about the entity validating information.
 */
open class VerificationResultValidator: BackboneElement {
	
	/// Reference to the organization validating information
	public var organization: Reference
	
	/// A digital identity certificate associated with the validator
	public var identityCertificate: FHIRPrimitive<FHIRString>?
	
	/// Validator signature
	public var attestationSignature: Signature?
	
	/// Designated initializer taking all required properties
	public init(organization: Reference) {
		self.organization = organization
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							attestationSignature: Signature? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							identityCertificate: FHIRPrimitive<FHIRString>? = nil,
							modifierExtension: [Extension]? = nil,
							organization: Reference)
	{
		self.init(organization: organization)
		self.attestationSignature = attestationSignature
		self.`extension` = `extension`
		self.id = id
		self.identityCertificate = identityCertificate
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case attestationSignature
		case identityCertificate; case _identityCertificate
		case organization
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.attestationSignature = try Signature(from: _container, forKeyIfPresent: .attestationSignature)
		self.identityCertificate = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .identityCertificate, auxiliaryKey: ._identityCertificate)
		self.organization = try Reference(from: _container, forKey: .organization)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try attestationSignature?.encode(on: &_container, forKey: .attestationSignature)
		try identityCertificate?.encode(on: &_container, forKey: .identityCertificate, auxiliaryKey: ._identityCertificate)
		try organization.encode(on: &_container, forKey: .organization)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? VerificationResultValidator else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return attestationSignature == _other.attestationSignature
		    && identityCertificate == _other.identityCertificate
		    && organization == _other.organization
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(attestationSignature)
		hasher.combine(identityCertificate)
		hasher.combine(organization)
	}
}
