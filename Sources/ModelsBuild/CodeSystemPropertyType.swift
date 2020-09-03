//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The type of a property value.
 
 URL: http://hl7.org/fhir/concept-property-type
 ValueSet: http://hl7.org/fhir/ValueSet/concept-property-type
 */
public enum PropertyType: String, FHIRPrimitiveType {
	
	/// The property value is a code that identifies a concept defined in the code system.
	case code = "code"
	
	/// The property  value is a code defined in an external code system. This may be used for translations, but is not
	/// the intent.
	case coding = "Coding"
	
	/// The property value is a string.
	case string = "string"
	
	/// The property value is a string (often used to assign ranking values to concepts for supporting score
	/// assessments).
	case integer = "integer"
	
	/// The property value is a boolean true | false.
	case boolean = "boolean"
	
	/// The property is a date or a date + time.
	case dateTime = "dateTime"
	
	/// The property value is a decimal number.
	case decimal = "decimal"
}
