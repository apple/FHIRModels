//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Lifecycle status of the questionnaire.
 
 URL: http://hl7.org/fhir/questionnaire-status
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-status
 */
public enum QuestionnaireStatus: String, FHIRPrimitiveType {
	
	/// This Questionnaire is not ready for official use.
	case draft = "draft"
	
	/// This Questionnaire is ready for use.
	case published = "published"
	
	/// This Questionnaire should no longer be used to gather data.
	case retired = "retired"
}
