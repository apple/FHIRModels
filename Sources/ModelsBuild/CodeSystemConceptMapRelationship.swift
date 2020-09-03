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
 The relationship between concepts.
 
 URL: http://hl7.org/fhir/concept-map-relationship
 ValueSet: http://hl7.org/fhir/ValueSet/concept-map-relationship
 */
public enum ConceptMapRelationship: String, FHIRPrimitiveType {
	
	/// The concepts are related to each other, but the exact relationship is not known.
	case relatedTo = "related-to"
	
	/// The definitions of the concepts mean the same thing.
	case equivalent = "equivalent"
	
	/// The source concept is narrower in meaning than the target concept.
	case sourceIsNarrowerThanTarget = "source-is-narrower-than-target"
	
	/// The source concept is broader in meaning than the target concept.
	case sourceIsBroaderThanTarget = "source-is-broader-than-target"
	
	/// This is an explicit assertion that the target concept is not related to the source concept.
	case notRelatedTo = "not-related-to"
}
