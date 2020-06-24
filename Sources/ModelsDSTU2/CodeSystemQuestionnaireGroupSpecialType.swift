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
 Identifies special types of groups within questionnaires
 
 URL: http://hl7.org/fhir/group-special-type
 ValueSet: http://hl7.org/fhir/ValueSet/sdc-group-special-type
 */
public enum QuestionnaireGroupSpecialType: String, FHIRPrimitiveType {
	
	/// The group is to be continuously visible at the top of the questionnaire
	case header = "header"
	
	/// The group is to be continuously visible at the bottom of the questionnaire
	case footer = "footer"
}
