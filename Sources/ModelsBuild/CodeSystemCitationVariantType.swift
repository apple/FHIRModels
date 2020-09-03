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
 To describe the reason for the variant citation, such as version number or subpart specification.
 
 URL: http://terminology.hl7.org/CodeSystem/citation-variant-type
 ValueSet: http://hl7.org/fhir/ValueSet/citation-variant-type
 */
public enum CitationVariantType: String, FHIRPrimitiveType {
	
	/// Denotes a specific version of an article or artifact.
	case version = "version"
	
	/// Denotes a specific portion of an article, such as page, section, paragraph, line, table or figure.
	case subpart = "subpart"
	
	/// Used to denote a supplementary file, appendix, or additional part that is not a subpart of the primary article.
	case supplement = "supplement"
	
	/// Used to denote a subpart within a supplementary file or appendix.
	case supplementSubpart = "supplement-subpart"
	
	/// Used to define the base citation or an article set with individual articles as variant citations.
	case baseForArticleSet = "base-for-article-set"
	
	/// Used to distinguish an individual article within an article set where the article set is a base citation.
	case articleSet = "article-set"
}
