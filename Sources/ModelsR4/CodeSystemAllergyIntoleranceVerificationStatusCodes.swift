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
 Preferred value set for AllergyIntolerance Verification Status.
 
 URL: http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
 ValueSet: http://hl7.org/fhir/ValueSet/allergyintolerance-verification
 */
public enum AllergyIntoleranceVerificationStatusCodes: String, FHIRPrimitiveType {
	
	/// A low level of certainty about the propensity for a reaction to the identified substance.
	case unconfirmed = "unconfirmed"
	
	/// A high level of certainty about the propensity for a reaction to the identified substance, which may include
	/// clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// A propensity for a reaction to the identified substance has been disputed or disproven with a sufficient level
	/// of clinical certainty to justify invalidating the assertion. This might or might not include testing or
	/// rechallenge.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}
