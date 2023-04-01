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
 To describe the reason for the variant citation, such as version number or subpart specification.
 
 URL: http://terminology.hl7.org/CodeSystem/cited-artifact-part-type
 ValueSet: http://hl7.org/fhir/ValueSet/cited-artifact-part-type
 */
public enum CitedArtifactPartType: String, FHIRPrimitiveType {
	
	/// Used to distinguish an individual article within an article set where the article set is a base citation.
	case articleSet = "article-set"
	
	/// Denotes specific figure or figures of an article or artifact.
	case figures
	
	/// Denotes specific line or lines of an article or artifact.
	case lines
	
	/// Denotes specific page or pages of an article or artifact.
	case pages
	
	/// Denotes specific paragraph or paragraphs of an article or artifact.
	case paragraphs
	
	/// Denotes specific section or sections of an article or artifact.
	case sections
	
	/// Used to denote a supplementary file, appendix, or additional part that is not a subpart of the primary article.
	case supplement
	
	/// Used to denote a subpart within a supplementary file or appendix.
	case supplementSubpart = "supplement-subpart"
	
	/// Denotes specific table or tables of an article or artifact.
	case tables
}
