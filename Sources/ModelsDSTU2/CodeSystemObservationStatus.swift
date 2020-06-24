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
 Codes providing the status of an observation.
 
 URL: http://hl7.org/fhir/observation-status
 ValueSet: http://hl7.org/fhir/ValueSet/observation-status
 */
public enum ObservationStatus: String, FHIRPrimitiveType {
	
	/// The existence of the observation is registered, but there is no result yet available.
	case registered = "registered"
	
	/// This is an initial or interim observation: data may be incomplete or unverified.
	case preliminary = "preliminary"
	
	/// The observation is complete and verified by an authorized person.
	case final = "final"
	
	/// The observation has been modified subsequent to being Final, and is complete and verified by an authorized
	/// person.
	case amended = "amended"
	
	/// The observation is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled = "cancelled"
	
	/// The observation has been withdrawn following previous final release.
	case enteredInError = "entered-in-error"
	
	/// The observation status is unknown.  Note that "unknown" is a value of last resort and every attempt should be
	/// made to provide a meaningful value other than "unknown".
	case unknown = "unknown"
}
