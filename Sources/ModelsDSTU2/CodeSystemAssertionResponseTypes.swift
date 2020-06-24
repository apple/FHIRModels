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
 The type of response code to use for assertion.
 
 The response code to expect in the response.
 
 URL: http://hl7.org/fhir/assert-response-code-types
 ValueSet: http://hl7.org/fhir/ValueSet/assert-response-code-types
 */
public enum AssertionResponseTypes: String, FHIRPrimitiveType {
	
	/// Response code is 200.
	case okay = "okay"
	
	/// Response code is 201.
	case created = "created"
	
	/// Response code is 204.
	case noContent = "noContent"
	
	/// Response code is 304.
	case notModified = "notModified"
	
	/// Response code is 400.
	case bad = "bad"
	
	/// Response code is 403.
	case forbidden = "forbidden"
	
	/// Response code is 404.
	case notFound = "notFound"
	
	/// Response code is 405.
	case methodNotAllowed = "methodNotAllowed"
	
	/// Response code is 409.
	case conflict = "conflict"
	
	/// Response code is 410.
	case gone = "gone"
	
	/// Response code is 412.
	case preconditionFailed = "preconditionFailed"
	
	/// Response code is 422.
	case unprocessable = "unprocessable"
}
