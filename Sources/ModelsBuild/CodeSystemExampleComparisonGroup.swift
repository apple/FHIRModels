//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Indicates the progression of a study subject through a study.
 
 URL: http://hl7.org/fhir/example-comparison-group
 ValueSet: http://hl7.org/fhir/ValueSet/example-comparison-group
 */
public enum ExampleComparisonGroup: String, FHIRPrimitiveType {
	
	/// Not receiving the exposure or intervention.
	case absenceOfExposure = "absence-of-exposure"
	
	/// A sham version of the intervention.
	case placebo
	
	/// The typical care without the intervention under investigation.
	case usualCare = "usual-care"
}
