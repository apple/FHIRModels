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
 The type of study the evidence was derived from.
 
 URL: http://terminology.hl7.org/CodeSystem/study-type
 ValueSet: http://hl7.org/fhir/ValueSet/study-type
 */
public enum StudyType: String, FHIRPrimitiveType {
	
	/// controlled (but not randomized) trial.
	case CCT
	
	/// randomized controlled trial.
	case RCT
	
	/// case-control study.
	case caseControl = "case-control"
	
	/// a single case report.
	case caseReport = "case-report"
	
	/// observational study comparing cohorts.
	case cohort
	
	/// a combination of 1 or more types of studies.
	case mixed
	
	/// uncontrolled cohort or case series.
	case series
}
