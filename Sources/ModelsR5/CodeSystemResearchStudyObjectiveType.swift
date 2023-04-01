//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Codes for the kind of study objective.
 
 URL: http://hl7.org/fhir/research-study-objective-type
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-objective-type
 */
public enum ResearchStudyObjectiveType: String, FHIRPrimitiveType {
	
	/// Exploratory questions to be answered in the study.
	case exploratory
	
	/// The main question to be answered, and the one that drives any statistical planning for the study—e.g.,
	/// calculation of the sample size to provide the appropriate power for statistical testing.
	case primary
	
	/// Question to be answered in the study that is of lesser importance than the primary objective.
	case secondary
}
