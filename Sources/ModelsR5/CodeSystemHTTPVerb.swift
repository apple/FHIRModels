//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
 
 URL: http://hl7.org/fhir/http-verb
 ValueSet: http://hl7.org/fhir/ValueSet/http-verb
 */
public enum HTTPVerb: String, FHIRPrimitiveType {
	
	/// HTTP DELETE Command.
	case DELETE
	
	/// HTTP GET Command.
	case GET
	
	/// HTTP HEAD Command.
	case HEAD
	
	/// HTTP PATCH Command.
	case PATCH
	
	/// HTTP POST Command.
	case POST
	
	/// HTTP PUT Command.
	case PUT
}
