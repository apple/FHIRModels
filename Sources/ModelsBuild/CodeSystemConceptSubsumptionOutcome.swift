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
 Codes indicating the results of a subsumption check between codes. In the context of this CodeSystem, subsumption is
 defined in the FHIR specification under Resource Types - CodeSystem.
 
 URL: http://hl7.org/fhir/concept-subsumption-outcome
 */
public enum ConceptSubsumptionOutcome: String, FHIRPrimitiveType {
	
	/// A equivalent to B if A subsumes B and B subsumes A
	case equivalent
	
	/// Neither A subsumes B nor B subsumes A
	case notSubsumed = "not-subsumed"
	
	/// A subsumed by B if B subsumes A
	case subsumedBy = "subsumed-by"
	
	/// A subsumes B if there is a subsumption relationship between A and B
	case subsumes
}
