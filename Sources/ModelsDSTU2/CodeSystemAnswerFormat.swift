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
 The expected format of an answer.
 
 URL: http://hl7.org/fhir/answer-format
 ValueSet: http://hl7.org/fhir/ValueSet/answer-format
 */
public enum AnswerFormat: String, FHIRPrimitiveType {
	
	/// Answer is a yes/no answer.
	case boolean = "boolean"
	
	/// Answer is a floating point number.
	case decimal = "decimal"
	
	/// Answer is an integer.
	case integer = "integer"
	
	/// Answer is a date.
	case date = "date"
	
	/// Answer is a date and time.
	case dateTime = "dateTime"
	
	/// Answer is a system timestamp.
	case instant = "instant"
	
	/// Answer is a time (hour/minute/second) independent of date.
	case time = "time"
	
	/// Answer is a short (few words to short sentence) free-text entry.
	case string = "string"
	
	/// Answer is a long (potentially multi-paragraph) free-text entry (still captured as a string).
	case text = "text"
	
	/// Answer is a url (website, FTP site, etc.).
	case url = "url"
	
	/// Answer is a Coding drawn from a list of options.
	case choice = "choice"
	
	/// Answer is a Coding drawn from a list of options or a free-text entry.
	case openChoice = "open-choice"
	
	/// Answer is binary content such as a image, PDF, etc.
	case attachment = "attachment"
	
	/// Answer is a reference to another resource (practitioner, organization, etc.).
	case reference = "reference"
	
	/// Answer is a combination of a numeric value and unit, potentially with a comparator (<, >, etc.).
	case quantity = "quantity"
}
