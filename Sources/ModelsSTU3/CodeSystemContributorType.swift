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
 The type of contributor
 
 URL: http://hl7.org/fhir/contributor-type
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-type
 */
public enum ContributorType: String, FHIRPrimitiveType {
	
	/// An author of the content of the module
	case author = "author"
	
	/// An editor of the content of the module
	case editor = "editor"
	
	/// A reviewer of the content of the module
	case reviewer = "reviewer"
	
	/// An endorser of the content of the module
	case endorser = "endorser"
}
