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
 Codes indicating the results of a subsumption check between codes
 
 URL: http://hl7.org/fhir/concept-subsumption-outcome
 */
public enum ConceptSubsumptionOutcome: String, FHIRPrimitiveType {
	
	/// The two concepts are equivalent (have the same properties).
	case equivalent
	
	/// Coding/code "A" and Coding/code "B" are disjoint (e.g. each has propeties that the other doesn't have).
	case notSubsumed = "not-subsumed"
	
	/// Coding/code "A" is subsumed by Coding/code "B" (e.g. A has all the properties B has, and some of it's own).
	case subsumedBy = "subsumed-by"
	
	/// Coding/code "A" subsumes Coding/code "B" (e.g. B has all the properties A has, and some of it's own).
	case subsumes
}
