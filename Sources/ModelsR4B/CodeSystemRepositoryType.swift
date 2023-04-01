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
 Type for access of external URI.
 
 URL: http://hl7.org/fhir/repository-type
 ValueSet: http://hl7.org/fhir/ValueSet/repository-type
 */
public enum RepositoryType: String, FHIRPrimitiveType {
	
	/// When URL is clicked, the resource can be seen directly (by webpage or by download link format).
	case directlink
	
	/// When logged into the website, the resource can be seen.
	case login
	
	/// When logged in and  follow the API in the website related with URL, the resource can be seen.
	case oauth
	
	/// When the API method (e.g. [base_url]/[parameter]) related with the URL of the website is executed, the resource
	/// can be seen directly (usually in JSON or XML format).
	case openapi
	
	/// Some other complicated or particular way to get resource from URL.
	case other
}
