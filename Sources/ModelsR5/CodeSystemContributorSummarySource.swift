//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Used to code the producer or rule for creating the display string.
 
 URL: http://hl7.org/fhir/contributor-summary-source
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-summary-source
 */
public enum ContributorSummarySource: String, FHIRPrimitiveType {
	
	/// Data copied by human from article text.
	case articleCopy = "article-copy"
	
	/// Data copied by machine from citation manager data.
	case citationManager = "citation-manager"
	
	/// Custom format (may be described in text note).
	case custom
	
	/// Data copied by machine from publisher data.
	case publisherData = "publisher-data"
}
