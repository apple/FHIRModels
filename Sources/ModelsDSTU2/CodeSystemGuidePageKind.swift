//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 The kind of an included page.
 
 URL: http://hl7.org/fhir/guide-page-kind
 ValueSet: http://hl7.org/fhir/ValueSet/guide-page-kind
 */
public enum GuidePageKind: String, FHIRPrimitiveType {
	
	/// This is a page of content that is included in the implementation guide. It has no particular function.
	case page = "page"
	
	/// This is a page that represents a human readable rendering of an example.
	case example = "example"
	
	/// This is a page that represents a list of resources of one or more types.
	case list = "list"
	
	/// This is a page showing where an included guide is injected.
	case include = "include"
	
	/// This is a page that lists the resources of a given type, and also creates pages for all the listed types as
	/// other pages in the section.
	case directory = "directory"
	
	/// This is a page that creates the listed resources as a dictionary.
	case dictionary = "dictionary"
	
	/// This is a generated page that contains the table of contents.
	case toc = "toc"
	
	/// This is a page that represents a presented resource. This is typically used for generated conformance resource
	/// presentations.
	case resource = "resource"
}
