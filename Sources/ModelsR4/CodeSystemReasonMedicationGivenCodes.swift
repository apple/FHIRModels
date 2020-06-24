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
 This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust
 terminology code system that consists of or contains concepts to support the medication process.
 
 URL: http://terminology.hl7.org/CodeSystem/reason-medication-given
 ValueSet: http://hl7.org/fhir/ValueSet/reason-medication-given-codes
 */
public enum ReasonMedicationGivenCodes: String, FHIRPrimitiveType {
	
	/// No reason known.
	case A = "a"
	
	/// The administration was following an ordered protocol.
	case B = "b"
	
	/// The administration was needed to treat an emergency.
	case C = "c"
}
