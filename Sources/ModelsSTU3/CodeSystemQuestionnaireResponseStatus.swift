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
 Lifecycle status of the questionnaire response.
 
 URL: http://hl7.org/fhir/questionnaire-answers-status
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-answers-status
 */
public enum QuestionnaireResponseStatus: String, FHIRPrimitiveType {
	
	/// This QuestionnaireResponse has been partially filled out with answers, but changes or additions are still
	/// expected to be made to it.
	case inProgress = "in-progress"
	
	/// This QuestionnaireResponse has been filled out with answers, and the current content is regarded as definitive.
	case completed = "completed"
	
	/// This QuestionnaireResponse has been filled out with answers, then marked as complete, yet changes or additions
	/// have been made to it afterwards.
	case amended = "amended"
	
	/// This QuestionnaireResponse was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// This QuestionnaireResponse has been partially filled out with answers, but has been abandoned. It is unknown
	/// whether changes or additions are expected to be made to it.
	case stopped = "stopped"
}
