//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 How much of the content of the code system - the concepts and codes it defines - are represented in a code system
 resource
 
 URL: http://hl7.org/fhir/codesystem-content-mode
 ValueSet: http://hl7.org/fhir/ValueSet/codesystem-content-mode
 */
public enum CodeSystemContentMode: String, FHIRPrimitiveType {
	
	/// None of the concepts defined by the code system are included in the code system resource
	case notPresent = "not-present"
	
	/// A few representative concepts are included in the code system resource
	case example = "example"
	
	/// A subset of the code system concepts are included in the code system resource
	case fragment = "fragment"
	
	/// All the concepts defined by the code system are included in the code system resource
	case complete = "complete"
}
