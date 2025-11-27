//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Codes that describe the types of constraints possible on a question item that has a list of permitted answers
 
 URL: http://hl7.org/fhir/questionnaire-answer-constraint
 */
public enum QuestionnaireAnswerConstraint: String, FHIRPrimitiveType {
	
	/// Only values listed as answerOption or in the expansion of the answerValueSet are permitted
	case optionsOnly
	
	/// In addition to the values listed as answerOption or in the expansion of the answerValueSet, free-text strings
	/// are permitted.  Answers will have a type of 'string'.
	case optionsOrString
	
	/// In addition to the values listed as answerOption or in the expansion of the answerValueSet, any other values
	/// that correspond to the specified item.type are permitted
	case optionsOrType
}
