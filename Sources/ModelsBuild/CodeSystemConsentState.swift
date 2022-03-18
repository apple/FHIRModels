//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Indicates the state of the consent.
 
 URL: http://hl7.org/fhir/consent-state-codes
 ValueSet: http://hl7.org/fhir/ValueSet/consent-state-codes
 */
public enum ConsentState: String, FHIRPrimitiveType {
	
	/// The consent is to be followed and enforced.
	case active
	
	/// The consent is in development or awaiting use but is not yet intended to be acted upon.
	case draft
	
	/// The consent was created wrongly (e.g. wrong patient) and should be ignored.
	case enteredInError = "entered-in-error"
	
	/// The consent is terminated or replaced.
	case inactive
	
	/// The resource is in an indeterminate state.
	case unknown
}
