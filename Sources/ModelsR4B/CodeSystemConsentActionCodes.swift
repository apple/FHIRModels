//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 This value set includes example Consent Action codes.
 
 URL: http://terminology.hl7.org/CodeSystem/consentaction
 */
public enum ConsentActionCodes: String, FHIRPrimitiveType {
	
	/// Retrieval without permitting collection, use or disclosure. e.g., no screen-scraping for collection, use or
	/// disclosure (view-only access)
	case access
	
	/// Gather retrieved information for storage
	case collect
	
	/// Allow retrieval of a patient's information for the purpose of update or rectify
	case correct
	
	/// Transfer retrieved information
	case disclose
	
	/// Utilize the retrieved information
	case use
}
