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
 The status of the endpoint.
 
 URL: http://hl7.org/fhir/endpoint-status
 ValueSet: http://hl7.org/fhir/ValueSet/endpoint-status
 */
public enum EndpointStatus: String, FHIRPrimitiveType {
	
	/// This endpoint is expected to be active and can be used.
	case active = "active"
	
	/// This endpoint is temporarily unavailable.
	case suspended = "suspended"
	
	/// This endpoint has exceeded connectivity thresholds and is considered in an error state and should no longer be
	/// attempted to connect to until corrective action is taken.
	case error = "error"
	
	/// This endpoint is no longer to be used.
	case off = "off"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// This endpoint is not intended for production usage.
	case test = "test"
}
