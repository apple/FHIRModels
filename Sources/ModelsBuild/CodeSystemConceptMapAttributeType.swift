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
 The type of a ConceptMap map attribute value.
 
 URL: http://hl7.org/fhir/conceptmap-attribute-type
 ValueSet: http://hl7.org/fhir/ValueSet/conceptmap-attribute-type
 */
public enum ConceptMapAttributeType: String, FHIRPrimitiveType {
	
	/// The attribute value is a boolean true | false.
	case boolean
	
	/// The attribute value is a code defined in the code system in context.
	case code
	
	/// The attribute value is a code defined in a code system.
	case coding = "Coding"
	
	/// The attribute is a Quantity (may represent an integer or a decimal with no units).
	case quantity = "Quantity"
	
	/// The attribute value is a string.
	case string
}
