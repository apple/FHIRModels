//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 Codes defining the purpose of a Questionnaire item of type 'text'.
 
 URL: http://hl7.org/fhir/questionnaire-display-category
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-display-category
 */
public enum QuestionnaireTextCategories: String, FHIRPrimitiveType {
	
	/// The text provides guidance on how to populate or use a portion of the questionnaire (or the questionnaire as a
	/// whole).
	case instructions = "instructions"
	
	/// The text provides guidance on how the information should be or will be handled from a
	/// security/confidentiality/access control perspective when completed
	case security = "security"
	
	/// The text provides additional guidance on populating the containing item.  Help text isn't necessarily expected
	/// to be rendered as part of the form, but may instead be made available through fly-over, pop-up button, link to a
	/// "help" page, etc.
	case help = "help"
}
