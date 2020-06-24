//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.4.0-29ad3ab0
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
 Code the reason for different URLs, eg abstract and full-text.
 
 URL: http://terminology.hl7.org/CodeSystem/article-url-type
 ValueSet: http://hl7.org/fhir/ValueSet/article-url-type
 */
public enum ArticleUrlType: String, FHIRPrimitiveType {
	
	/// URL to reach the abstract for the article.
	case abstract = "abstract"
	
	/// URL to reach a specific version of the abstract for the article.
	case abstractCited = "abstract-cited"
	
	/// URL to reach the full-text of the article.
	case fullText = "full-text"
	
	/// URL to reach a specific version of the full-text of the article.
	case fullTextCited = "full-text-cited"
	
	/// URL to reach the full-text of the article in PDF form.
	case PDF = "PDF"
	
	/// URL to reach a specific version of the full-text of the article in PDF form.
	case pDFCited = "PDF-cited"
}
