//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 A code that indicates how the page is generated.
 
 URL: http://hl7.org/fhir/guide-page-generation
 ValueSet: http://hl7.org/fhir/ValueSet/guide-page-generation
 */
public enum GuidePageGeneration: String, FHIRPrimitiveType {
	
	/// Page will be generated by the publication process - no source to bring across.
	case generated
	
	/// Page is proper xhtml with no templating.  Will be brought across unchanged for standard post-processing.
	case html
	
	/// Page is markdown with templating.  Will use the template to create a file that imports the markdown file prior
	/// to post-processing.
	case markdown
	
	/// Page is xml with templating.  Will use the template to create a file that imports the source file and run the
	/// nominated XSLT transform (see parameters) if present prior to post-processing.
	case xml
}
