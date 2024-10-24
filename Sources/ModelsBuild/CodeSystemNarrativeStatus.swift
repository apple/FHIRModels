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
 The status of a resource narrative.
 
 URL: http://hl7.org/fhir/narrative-status
 ValueSet: http://hl7.org/fhir/ValueSet/narrative-status
 */
public enum NarrativeStatus: String, FHIRPrimitiveType {
	
	/// The contents of the narrative may contain additional information not found in the structured data. Note that
	/// there is no computable way to determine what the extra information is, other than by human inspection.
	case additional
	
	/// The contents of the narrative are some equivalent of "No human-readable text provided in this case".
	case empty
	
	/// The contents of the narrative are entirely generated from the core elements in the content and some of the
	/// content is generated from extensions. The narrative SHALL reflect the impact of all modifier extensions.
	case extensions
	
	/// The contents of the narrative are entirely generated from the core elements in the content.
	case generated
}
