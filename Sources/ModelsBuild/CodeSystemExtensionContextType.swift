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
 How an extension context is interpreted.
 
 URL: http://hl7.org/fhir/extension-context-type
 ValueSet: http://hl7.org/fhir/ValueSet/extension-context-type
 */
public enum ExtensionContextType: String, FHIRPrimitiveType {
	
	/// The context is all elements that match the FHIRPath query found in the expression.
	case fhirpath = "fhirpath"
	
	/// The context is any element that has an ElementDefinition.id that matches that found in the expression. This
	/// includes ElementDefinition Ids that have slicing identifiers. The full path for the element is
	/// [url]#[elementid]. If there is no #, the Element id is one defined in the base specification.
	case element = "element"
	
	/// The context is a particular extension from a particular StructureDefinition, and the expression is just a uri
	/// that identifies the extension.
	case `extension` = "extension"
}
