//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Codes for activity that changed study status.
 
 URL: http://terminology.hl7.org/CodeSystem/research-study-statusDate-activity
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-statusDate-activity
 */
public enum ResearchStudyStatusDateActivity: String, FHIRPrimitiveType {
	
	/// dispositionPosting
	case dispositionPosting = "disposition-posting"
	
	/// dispositionSubmission
	case dispositionSubmission = "disposition-submission"
	
	/// dispositionSubmissionQc
	case dispositionSubmissionQc = "disposition-submission-qc"
	
	/// overallStudy
	case overallStudy = "overall-study"
	
	/// primaryOutcomeDataCollection
	case primaryOutcomeDataCollection = "primary-outcome-data-collection"
	
	/// Record has been verified.
	case recordVerification = "record-verification"
	
	/// registrationPosting
	case registrationPosting = "registration-posting"
	
	/// registrationSubmission
	case registrationSubmission = "registration-submission "
	
	/// registrationSubmissionQc
	case registrationSubmissionQc = "registration-submission-qc"
	
	/// resultsPosting
	case resultsPosting = "results-posting"
	
	/// resultsSubmission
	case resultsSubmission = "results-submission"
	
	/// resultsSubmissionQc
	case resultsSubmissionQc = "results-submission-qc"
	
	/// updatePosting
	case updatePosting = "update-posting"
	
	/// updateSubmission
	case updateSubmission = "update-submission"
}
