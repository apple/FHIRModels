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
 A rating system that describes the strength of the recommendation, such as the GRADE, DynaMed, or HGPS systems
 
 URL: http://hl7.org/fhir/recommendation-strength
 ValueSet: http://hl7.org/fhir/ValueSet/cqif-recommendation-strength
 */
public enum StrengthOfRecommendationRating: String, FHIRPrimitiveType {
	
	/// Strong recommendation
	case strong = "strong"
	
	/// Weak recommendation
	case weak = "weak"
}
