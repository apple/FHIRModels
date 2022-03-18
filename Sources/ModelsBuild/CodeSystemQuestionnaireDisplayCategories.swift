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
 Codes defining the purpose of a Questionnaire item of type 'display'.
 
 URL: http://hl7.org/fhir/questionnaire-display-category
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-display-category
 */
public enum QuestionnaireDisplayCategories: String, FHIRPrimitiveType {
	
	/// The display text provides guidance on how to populate or use a portion of the questionnaire (or the
	/// questionnaire as a whole).
	case instructions
	
	/// The display text indicates copyright, trademark, patent, regulations regarding completion, retention or use, or
	/// other legal text related to the item
	case legal
	
	/// The display text provides guidance on how the information should be or will be handled from a
	/// security/confidentiality/access control perspective when completed
	case security
}
