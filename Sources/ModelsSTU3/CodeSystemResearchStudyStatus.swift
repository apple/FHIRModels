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
 Codes that convey the current status of the research study
 
 URL: http://hl7.org/fhir/research-study-status
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-status
 */
public enum ResearchStudyStatus: String, FHIRPrimitiveType {
	
	/// The study is undergoing design but the process of selecting study subjects and capturing data has not yet begun.
	case draft = "draft"
	
	/// The study is currently being executed
	case inProgress = "in-progress"
	
	/// Execution of the study has been temporarily paused
	case suspended = "suspended"
	
	/// The study was terminated prior to the final determination of results
	case stopped = "stopped"
	
	/// The information sought by the study has been gathered and compiled and no further work is being performed
	case completed = "completed"
	
	/// This study never actually existed.  The record is retained for tracking purposes in the event decisions may have
	/// been made based on this erroneous information.
	case enteredInError = "entered-in-error"
}
