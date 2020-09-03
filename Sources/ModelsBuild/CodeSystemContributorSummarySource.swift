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
 Used to code the producer or rule for creating the display string.
 
 URL: http://terminology.hl7.org/CodeSystem/contributor-summary-source
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-summary-source
 */
public enum ContributorSummarySource: String, FHIRPrimitiveType {
	
	/// Data copied by machine from publisher data.
	case publisherData = "publisherData"
	
	/// Data copied by human from article text.
	case articleCopy = "articleCopy"
	
	/// Data copied by machine from citation manager data.
	case citationManager = "citationManager"
	
	/// Custom format (may be described in text note).
	case custom = "custom"
}
