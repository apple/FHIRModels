//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 The media type of the expression language.
 
 URL: http://hl7.org/fhir/expression-language
 ValueSet: http://hl7.org/fhir/ValueSet/expression-language
 */
public enum ExpressionLanguage: String, FHIRPrimitiveType {
	
	/// Clinical Quality Language.
	case textCql = "text/cql"
	
	/// FHIRPath.
	case textFhirpath = "text/fhirpath"
	
	/// FHIR's RESTful query syntax - typically independent of base URL.
	case applicationXFhirQuery = "application/x-fhir-query"
}
