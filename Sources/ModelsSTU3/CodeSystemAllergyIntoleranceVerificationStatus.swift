//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Assertion about certainty associated with a propensity, or potential risk, of a reaction to the identified substance.
 
 URL: http://hl7.org/fhir/allergy-verification-status
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-verification-status
 */
public enum AllergyIntoleranceVerificationStatus: String, FHIRPrimitiveType {
	
	/// A low level of certainty about the propensity for a reaction to the identified substance.
	case unconfirmed = "unconfirmed"
	
	/// A high level of certainty about the propensity for a reaction to the identified substance, which may include
	/// clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// A propensity for a reaction to the identified substance has been disproven with a high level of clinical
	/// certainty, which may include testing or rechallenge, and is refuted.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}
