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
 The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
 
 URL: http://terminology.hl7.org/CodeSystem/evidence-report-type
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-report-type
 */
public enum EvidenceReportType: String, FHIRPrimitiveType {
	
	/// The report is primarily a listing of classifiers about the report subject.
	case classification = "classification"
	
	/// The report is a composition of results generated in response to a search query.
	case searchResults = "search-results"
	
	/// The report is a composition containing one or more FHIR resources in the content.
	case resourcesCompiled = "resources-compiled"
	
	/// The report is a structured representation of text.
	case textStructured = "text-structured"
}
