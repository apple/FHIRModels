//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
 
 URL: http://hl7.org/fhir/allergy-intolerance-criticality
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality
 */
public enum AllergyIntoleranceCriticality: String, FHIRPrimitiveType {
	
	/// Worst case result of a future exposure is not assessed to be life-threatening or having high potential for organ
	/// system failure.
	case low = "low"
	
	/// Worst case result of a future exposure is assessed to be life-threatening or having high potential for organ
	/// system failure.
	case high = "high"
	
	/// Unable to assess the worst case result of a future exposure.
	case unableToAssess = "unable-to-assess"
}
