//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
	
	/// Question with a Coding - generally drawn from a list of possible answers (valueCoding)
	case coding
	
	/// Question with a date answer (valueDate).
	case date
	
	/// Question with a date and time answer (valueDateTime).
	case dateTime
	
	/// Question with is a real number answer (valueDecimal).  There is an extension
	/// 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that can be used to computably convey the unit of
	/// measure associated with the answer for use when performing data extraction to an element of type Quantity.
	case decimal
	
	/// Text for display that will not capture an answer or have child items.
	case display
	
	/// An item with no direct answer but should have at least one child item.
	case group
	
	/// Question with an integer answer (valueInteger).  There is an extension
	/// 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that can be used to computably convey the unit of
	/// measure associated with the answer for use when performing data extraction to an element of type Quantity.
	case integer
	
	/// Question with a combination of a numeric value and unit as an answer. (valueSimpleQuantity)  There are two
	/// extensions ('http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption' and
	/// 'http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet')  that can be used to define what unit
	/// should be selected for the Quantity.code and Quantity.system.
	case quantity
	
	/// An item that defines a specific answer to be captured, and which may have child items. (the answer provided in
	/// the QuestionnaireResponse should be of the defined datatype).
	case question
	
	/// Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
	case reference
	
	/// Question with a short (few words to short sentence) free-text entry answer (valueString).  Strings SHOULD NOT
	/// contain carriage return or newline characters.  If multi-line answers are needed, use the 'text' type.
	case string
	
	/// Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
	case text
	
	/// Question with a time (hour:minute:second) answer independent of date. (valueTime).
	case time
	
	/// Question with a URL (website, FTP site, etc.) answer (valueUri).
	case url
}
