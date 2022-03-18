//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 
 URL: http://terminology.hl7.org/CodeSystem/artifact-url-classifier
 ValueSet: http://hl7.org/fhir/ValueSet/artifact-url-classifier
 */
public enum ArtifactUrlClassifier: String, FHIRPrimitiveType {
	
	/// The URL will reach a brief summary for the article.
	case abstract
	
	/// File archive and web hosting facility for source code of software, documentation, web pages, and other works.
	case codeRepository = "code-repository"
	
	/// Compressed archive file (e.g. a zip file) that contains multiple files
	case compressedFile = "compressed-file"
	
	/// The URL will reach content that is machine-interpretable.
	case computableResource = "computable-resource"
	
	/// The URL is derived from the Digital Object Identifier (DOI).
	case doiBased = "doi-based"
	
	/// The URL will reach a file directory.
	case fileDirectory = "file-directory"
	
	/// The URL will reach the full-text of the article.
	case fullText = "full-text"
	
	/// The URL will reach content in JSON format.
	case json
	
	/// Used when URL classifier is not specified but expected in a system.
	case notSpecified = "not-specified"
	
	/// The URL will reach content in PDF form.
	case pdf
	
	/// The URL content has restricted access (e.g. subcription required).
	case restricted
	
	/// The URL will reach a supplement, appendix, or additional supporting information for the article.
	case supplement
	
	/// The URL will reach content that is a specific version of the article.
	case versionSpecific = "version-specific"
	
	/// The URL will reach a webpage related to the article, where the content is not easily classified as abstract,
	/// full-text or supplement.
	case webpage
	
	/// The URL will reach content in XML format.
	case xml
}
