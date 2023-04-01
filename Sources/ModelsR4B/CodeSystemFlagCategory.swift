//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 Example list of detail codes for flagged issues. (Not complete or necessarily appropriate.)
 
 URL: http://terminology.hl7.org/CodeSystem/flag-category
 ValueSet: http://hl7.org/fhir/ValueSet/flag-category
 */
public enum FlagCategory: String, FHIRPrimitiveType {
	
	/// Flags related to administrative and financial processes.
	case admin
	
	/// Flags related to subject's advance directives.
	case advanceDirective = "advance-directive"
	
	/// Flags related to behavior.
	case behavioral
	
	/// Flags related to the subject's clinical data.
	case clinical
	
	/// Flags related to coming into contact with the patient.
	case contact
	
	/// Flags related to the subject's dietary needs.
	case diet
	
	/// Flags related to the subject's medications.
	case drug
	
	/// Flags related to performing laboratory tests and related processes (e.g. phlebotomy).
	case lab
	
	/// Flags related to research.
	case research
	
	/// Flags related to safety precautions.
	case safety
}
