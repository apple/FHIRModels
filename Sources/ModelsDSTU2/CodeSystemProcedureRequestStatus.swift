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
 The status of the request.
 
 URL: http://hl7.org/fhir/procedure-request-status
 ValueSet: http://hl7.org/fhir/ValueSet/procedure-request-status
 */
public enum ProcedureRequestStatus: String, FHIRPrimitiveType {
	
	/// The request has been proposed.
	case proposed = "proposed"
	
	/// The request is in preliminary form, prior to being requested.
	case draft = "draft"
	
	/// The request has been placed.
	case requested = "requested"
	
	/// The receiving system has received the request but not yet decided whether it will be performed.
	case received = "received"
	
	/// The receiving system has accepted the request, but work has not yet commenced.
	case accepted = "accepted"
	
	/// The work to fulfill the request is happening.
	case inProgress = "in-progress"
	
	/// The work has been completed, the report(s) released, and no further work is planned.
	case completed = "completed"
	
	/// The request has been held by originating system/user request.
	case suspended = "suspended"
	
	/// The receiving system has declined to fulfill the request.
	case rejected = "rejected"
	
	/// The request was attempted, but due to some procedural error, it could not be completed.
	case aborted = "aborted"
}
