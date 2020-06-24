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
 The quality rating of the subcomponent of a quality of evidence rating.
 
 URL: http://terminology.hl7.org/CodeSystem/certainty-subcomponent-rating
 ValueSet: http://hl7.org/fhir/ValueSet/certainty-subcomponent-rating
 */
public enum CertaintySubcomponentRating: String, FHIRPrimitiveType {
	
	/// no change to quality rating.
	case noChange = "no-change"
	
	/// reduce quality rating by 1.
	case downcode1 = "downcode1"
	
	/// reduce quality rating by 2.
	case downcode2 = "downcode2"
	
	/// reduce quality rating by 3.
	case downcode3 = "downcode3"
	
	/// increase quality rating by 1.
	case upcode1 = "upcode1"
	
	/// increase quality rating by 2.
	case upcode2 = "upcode2"
	
	/// no serious concern.
	case noConcern = "no-concern"
	
	/// serious concern.
	case seriousConcern = "serious-concern"
	
	/// critical concern.
	case criticalConcern = "critical-concern"
	
	/// possible reason for increasing quality rating was checked and found to bepresent.
	case present = "present"
	
	/// possible reason for increasing quality rating was checked and found to be absent.
	case absent = "absent"
}
