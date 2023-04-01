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
 Distinguishes groups from questions and display text and indicates data type for questions.
 
 URL: http://hl7.org/fhir/item-type
 ValueSet: http://hl7.org/fhir/ValueSet/item-type
 */
public enum QuestionnaireItemType: String, FHIRPrimitiveType {
	
	/// Question with binary content such as an image, PDF, etc. as an answer (valueAttachment).
	case attachment
	
	/// Question with a yes/no answer (valueBoolean).
	case boolean
	
	/// Question with a Coding drawn from a list of possible answers (specified in either the answerOption property, or
	/// via the valueset referenced in the answerValueSet property) as an answer (valueCoding).
	case choice
	
	/// Question with a date answer (valueDate).
	case date
	
	/// Question with a date and time answer (valueDateTime).
	case dateTime
	
	/// Question with is a real number answer (valueDecimal).
	case decimal
	
	/// Text for display that will not capture an answer or have child items.
	case display
	
	/// An item with no direct answer but should have at least one child item.
	case group
	
	/// Question with an integer answer (valueInteger).
	case integer
	
	/// Answer is a Coding drawn from a list of possible answers (as with the choice type) or a free-text entry in a
	/// string (valueCoding or valueString).
	case openChoice = "open-choice"
	
	/// Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an
	/// answer. (valueQuantity) There is an extension 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that
	/// can be used to define what unit should be captured (or the unit that has a ucum conversion from the provided
	/// unit).
	case quantity
	
	/// An item that defines a specific answer to be captured, and which may have child items. (the answer provided in
	/// the QuestionnaireResponse should be of the defined datatype).
	case question
	
	/// Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
	case reference
	
	/// Question with a short (few words to short sentence) free-text entry answer (valueString).
	case string
	
	/// Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
	case text
	
	/// Question with a time (hour:minute:second) answer independent of date. (valueTime).
	case time
	
	/// Question with a URL (website, FTP site, etc.) answer (valueUri).
	case url
}
