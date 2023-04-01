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
 The assessment of quality, confidence, or certainty.
 
 URL: http://terminology.hl7.org/CodeSystem/certainty-rating
 ValueSet: http://hl7.org/fhir/ValueSet/certainty-rating
 */
public enum EvidenceCertaintyRating: String, FHIRPrimitiveType {
	
	/// possible reason for increasing quality rating was checked and found to be absent.
	case absent
	
	/// reduce quality rating by 1.
	case downcode1
	
	/// reduce quality rating by 2.
	case downcode2
	
	/// reduce quality rating by 3.
	case downcode3
	
	/// extremely serious concern.
	case extremelySeriousConcern = "extremely-serious-concern"
	
	/// High quality evidence.
	case high
	
	/// Low quality evidence.
	case low
	
	/// Moderate quality evidence.
	case moderate
	
	/// no change to quality rating.
	case noChange = "no-change"
	
	/// no serious concern.
	case noConcern = "no-concern"
	
	/// possible reason for increasing quality rating was checked and found to be present.
	case present
	
	/// serious concern.
	case seriousConcern = "serious-concern"
	
	/// increase quality rating by 1.
	case upcode1
	
	/// increase quality rating by 2.
	case upcode2
	
	/// Very low quality evidence.
	case veryLow = "very-low"
	
	/// very serious concern.
	case verySeriousConcern = "very-serious-concern"
}
