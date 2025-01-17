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
 The status of a guidance response.
 
 URL: http://hl7.org/fhir/guidance-response-status
 ValueSet: http://hl7.org/fhir/ValueSet/guidance-response-status
 */
public enum GuidanceResponseStatus: String, FHIRPrimitiveType {
	
	/// The request was processed successfully, but more data may result in a more complete evaluation.
	case dataRequested = "data-requested"
	
	/// The request was processed, but more data is required to complete the evaluation.
	case dataRequired = "data-required"
	
	/// The response was entered in error.
	case enteredInError = "entered-in-error"
	
	/// The request was not processed successfully.
	case failure
	
	/// The request is currently being processed.
	case inProgress = "in-progress"
	
	/// The request was processed successfully.
	case success
}
