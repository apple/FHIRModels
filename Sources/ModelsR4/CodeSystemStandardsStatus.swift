//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 HL7 Ballot/Standards status of artifact.
 
 URL: http://terminology.hl7.org/CodeSystem/standards-status
 ValueSet: http://hl7.org/fhir/ValueSet/standards-status
 */
public enum StandardsStatus: String, FHIRPrimitiveType {
	
	/// This portion of the specification is not considered to be complete enough or sufficiently reviewed to be safe
	/// for implementation. It may have known issues or still be in the "in development" stage. It is included in the
	/// publication as a place-holder, to solicit feedback from the implementation community and/or to give implementers
	/// some insight as to functionality likely to be included in future versions of the specification. Content at this
	/// level should only be implemented by the brave or desperate and is very much "use at your own risk". The content
	/// that is Draft that will usually be elevated to Trial Use once review and correction is complete after it has
	/// been subjected to ballot.
	case draft = "draft"
	
	/// This content has been subject to review and production implementation in a wide variety of environments. The
	/// content is considered to be stable and has been 'locked', subjecting it to FHIR Inter-version Compatibility
	/// Rules. While changes are possible, they are expected to be infrequent and are tightly constrained. Compatibility
	/// Rules.
	case normative = "normative"
	
	/// This content has been well reviewed and is considered by the authors to be ready for use in production systems.
	/// It has been subjected to ballot and approved as an official standard. However, it has not yet seen widespread
	/// use in production across the full spectrum of environments it is intended to be used in. In some cases, there
	/// may be documented known issues that require implementation experience to determine appropriate resolutions for.
	/// 
	/// Future versions of FHIR may make significant changes to Trial Use content that are not compatible with
	/// previously published content.
	case trialUse = "trial-use"
	
	/// This portion of the specification is provided for implementer assistance, and does not make rules that
	/// implementers are required to follow. Typical examples of this content in the FHIR specification are tables of
	/// contents, registries, examples, and implementer advice.
	case informative = "informative"
	
	/// This portion of the specification is provided for implementer assistance, and does not make rules that
	/// implementers are required to follow. Typical examples of this content in the FHIR specification are tables of
	/// contents, registries, examples, and implementer advice.
	case deprecated = "deprecated"
	
	/// This is content that is managed outside the FHIR Specification, but included for implementer convenience.
	case external = "external"
}
