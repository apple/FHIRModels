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
 The allowable request method or HTTP operation codes.
 
 URL: http://hl7.org/fhir/http-operations
 ValueSet: http://hl7.org/fhir/ValueSet/http-operations
 */
public enum TestScriptRequestMethodCode: String, FHIRPrimitiveType {
	
	/// HTTP DELETE operation.
	case delete = "delete"
	
	/// HTTP GET operation.
	case get = "get"
	
	/// HTTP OPTIONS operation.
	case options = "options"
	
	/// HTTP PATCH operation.
	case patch = "patch"
	
	/// HTTP POST operation.
	case post = "post"
	
	/// HTTP PUT operation.
	case put = "put"
	
	/// HTTP HEAD operation.
	case head = "head"
}
