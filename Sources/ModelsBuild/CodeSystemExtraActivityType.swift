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
 This value set includes coded concepts not well covered in any of the included valuesets.
 
 URL: http://hl7.org/fhir/extra-activity-type
 */
public enum ExtraActivityType: String, FHIRPrimitiveType {
	
	/// Activity resulting in a structured collection of preexisting content that does not necessarily result in an
	/// integral object with semantic context making it more than the sum of component parts, from which components
	/// could be disaggregated without loss of semantic context, e.g., the assembly of multiple stand-alone documents.
	case aggregate
	
	/// Activity resulting in the structured compilation of new and preexisting content for the purposes of forming an
	/// integral object with  semantic context making it more than the sum of component parts, which would be lost if
	/// decomposed. For example, the composition of a document that includes in whole or part other documents along with
	/// new content that result in a new document that has unique semantic meaning.
	case compose
	
	/// The means used to associate a set of security attributes with a specific information object as part of the data
	/// structure for that object. [ISO-10181-3 Access Control]
	case label
}
