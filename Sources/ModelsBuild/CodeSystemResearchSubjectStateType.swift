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
 Identifies the kind of state being refered to.
 
 URL: http://terminology.hl7.org/CodeSystem/research-subject-state-type
 ValueSet: http://hl7.org/fhir/ValueSet/research-subject-state-type
 */
public enum ResearchSubjectStateType: String, FHIRPrimitiveType {
	
	/// One of a set of milestone events that once they have occurred remain true thereafter.  For example once a
	/// subject has reached the "Signed Informed Consent" milestone they achieve a status of "Consented" that will be
	/// true thereafter, even when they have left the study.  For a subject a number of these states can be
	/// simulataneously true and should be recorded.
	case milestone = "Milestone"
	
	/// This is a status that can only have a single value at a given point in time.  The subject is either on-study or
	/// off-study.
	case enrollment = "Enrollment"
}
