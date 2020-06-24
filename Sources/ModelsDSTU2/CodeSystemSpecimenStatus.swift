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
 Codes providing the status/availability of a specimen.
 
 URL: http://hl7.org/fhir/specimen-status
 ValueSet: http://hl7.org/fhir/ValueSet/specimen-status
 */
public enum SpecimenStatus: String, FHIRPrimitiveType {
	
	/// The physical specimen is present and in good condition.
	case available = "available"
	
	/// There is no physical specimen because it is either lost, destroyed or consumed.
	case unavailable = "unavailable"
	
	/// The specimen cannot be used because of a quality issue such as a broken container, contamination, or too old.
	case unsatisfactory = "unsatisfactory"
	
	/// The specimen was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
}
