//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The risk of an adverse reaction (allergy or intolerance) for this patient upon exposure to the substance (including
 pharmaceutical products).
 
 URL: http://hl7.org/fhir/allerg-intol-substance-exp-risk
 ValueSet: http://hl7.org/fhir/ValueSet/allerg-intol-substance-exp-risk
 */
public enum AllergyIntoleranceSubstanceExposureRisk: String, FHIRPrimitiveType {
	
	/// Known risk of allergy or intolerance reaction upon exposure to the specified substance.
	case knownReactionRisk = "known-reaction-risk"
	
	/// No known risk of allergy or intolerance reaction upon exposure to the specified substance.
	case noKnownReactionRisk = "no-known-reaction-risk"
}
