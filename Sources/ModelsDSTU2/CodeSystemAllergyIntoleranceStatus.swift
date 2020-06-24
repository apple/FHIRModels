//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Assertion about certainty associated with a propensity, or potential risk, of a reaction to the identified Substance.
 
 URL: http://hl7.org/fhir/allergy-intolerance-status
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-status
 */
public enum AllergyIntoleranceStatus: String, FHIRPrimitiveType {
	
	/// An active record of a reaction to the identified Substance.
	case active = "active"
	
	/// A low level of certainty about the propensity for a reaction to the identified Substance.
	case unconfirmed = "unconfirmed"
	
	/// A high level of certainty about the propensity for a reaction to the identified Substance, which may include
	/// clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// An inactive record of a reaction to the identified Substance.
	case inactive = "inactive"
	
	/// A reaction to the identified Substance has been clinically reassessed by testing or rechallenge and considered
	/// to be resolved.
	case resolved = "resolved"
	
	/// A propensity for a reaction to the identified Substance has been disproven with a high level of clinical
	/// certainty, which may include testing or rechallenge, and is refuted.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}
