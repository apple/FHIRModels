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
 The extent of the content of the code system (the concepts and codes it defines) are represented in a code system
 resource.
 
 URL: http://hl7.org/fhir/codesystem-content-mode
 ValueSet: http://hl7.org/fhir/ValueSet/codesystem-content-mode
 */
public enum CodeSystemContentMode: String, FHIRPrimitiveType {
	
	/// None of the concepts defined by the code system are included in the code system resource.
	case notPresent = "not-present"
	
	/// A few representative concepts are included in the code system resource. There is no useful intent in the subset
	/// choice and there's no process to make it workable: it's not intended to be workable.
	case example = "example"
	
	/// A subset of the code system concepts are included in the code system resource. This is a curated subset released
	/// for a specific purpose under the governance of the code system steward, and that the intent, bounds and
	/// consequences of the fragmentation are clearly defined in the fragment or the code system documentation.
	/// Fragments are also known as partitions.
	case fragment = "fragment"
	
	/// All the concepts defined by the code system are included in the code system resource.
	case complete = "complete"
	
	/// The resource doesn't define any new concepts; it just provides additional designations and properties to another
	/// code system.
	case supplement = "supplement"
}
