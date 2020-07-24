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
 Indicates the progression of a study subject through a study
 
 URL: http://hl7.org/fhir/research-subject-status
 ValueSet: http://hl7.org/fhir/ValueSet/research-subject-status
 */
public enum ResearchSubjectStatus: String, FHIRPrimitiveType {
	
	/// The subject has been identified as a potential participant in the study but has not yet agreed to participate
	case candidate = "candidate"
	
	/// The subject has agreed to participate in the study but has not yet begun performing any action within the study
	case enrolled = "enrolled"
	
	/// The subject is currently being monitored and/or subject to treatment as part of the study
	case active = "active"
	
	/// The subject has temporarily discontinued monitoring/treatment as part of the study
	case suspended = "suspended"
	
	/// The subject has permanently ended participation in the study prior to completion of the intended
	/// monitoring/treatment
	case withdrawn = "withdrawn"
	
	/// All intended monitoring/treatment of the subject has been completed and their engagement with the study is now
	/// ended
	case completed = "completed"
}
