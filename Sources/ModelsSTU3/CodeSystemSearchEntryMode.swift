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
 Why an entry is in the result set - whether it's included as a match or because of an _include requirement.
 
 URL: http://hl7.org/fhir/search-entry-mode
 ValueSet: http://hl7.org/fhir/ValueSet/search-entry-mode
 */
public enum SearchEntryMode: String, FHIRPrimitiveType {
	
	/// This resource matched the search specification.
	case match = "match"
	
	/// This resource is returned because it is referred to from another resource in the search set.
	case include = "include"
	
	/// An OperationOutcome that provides additional information about the processing of a search.
	case outcome = "outcome"
}
