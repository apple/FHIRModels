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
 Indicates the progression of a study subject through the study milestones.
 
 URL: http://terminology.hl7.org/CodeSystem/research-subject-milestone
 ValueSet: http://hl7.org/fhir/ValueSet/research-subject-milestone
 */
public enum ResearchSubjectMilestone: String, FHIRPrimitiveType {
	
	/// A person has expressed an interest in being in a study but has not yet been through any assessment or consent
	/// processes.
	case signedUp = "SignedUp"
	
	/// A potential subject has been screened for suitability.
	case screened = "Screened"
	
	/// A subject has been allocated to an arm of the study.
	case randomized = "Randomized"
}
