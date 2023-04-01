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
 Code the reason for different URLs, eg abstract and full-text.
 
 URL: http://terminology.hl7.org/CodeSystem/article-url-type
 ValueSet: http://hl7.org/fhir/ValueSet/article-url-type
 */
public enum ArticleUrlType: String, FHIRPrimitiveType {
	
	/// URL to reach the abstract for the article.
	case abstract
	
	/// URL to reach a specific version of the abstract for the article.
	case abstractVersion = "abstract-version"
	
	/// Compressed archive file (e.g. a zip file) that contains multiple files
	case compressedFile = "compressed-file"
	
	/// URL derived from DOI.
	case doiBased = "doi-based"
	
	/// URL to reach the full-text of the article.
	case fullText = "full-text"
	
	/// URL to reach a specific version of the full-text of the article.
	case fullTextVersion = "full-text-version"
	
	/// URL to reach computable content in JSON format.
	case json
	
	/// URL to reach a specific version of computable content in JSON format.
	case jsonVersion = "json-version"
	
	/// Used when URL type is not specified, commonly when only a single URL is provided.
	case notSpecified = "not-specified"
	
	/// URL to reach the full-text of the article in PDF form.
	case pdf
	
	/// URL to reach a specific version of the full-text of the article in PDF form.
	case pdfVersion = "pdf-version"
	
	/// Supplement
	case supplement
	
	/// Supplementary file directory
	case supplementaryFileDirectory = "supplementary-file-directory"
	
	/// Used when URL type is a webpage, but other codes do not apply.
	case webpage
	
	/// URL to reach computable content in XML format.
	case xml
	
	/// URL to reach a specific version of computable content in XML format.
	case xmlVersion = "xml-version"
}
