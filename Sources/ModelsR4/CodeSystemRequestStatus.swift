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
 Codes identifying the lifecycle stage of a request.
 
 URL: http://hl7.org/fhir/request-status
 ValueSet: http://hl7.org/fhir/ValueSet/request-status
 */
public enum RequestStatus: String, FHIRPrimitiveType {
	
	/// The request has been created but is not yet complete or ready for action.
	case draft = "draft"
	
	/// The request is in force and ready to be acted upon.
	case active = "active"
	
	/// The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in
	/// the future.
	case onHold = "on-hold"
	
	/// The request (and any implicit authorization to act) has been terminated prior to the known full completion of
	/// the intended actions.  No further activity should occur.
	case revoked = "revoked"
	
	/// The activity described by the request has been fully performed.  No further activity will occur.
	case completed = "completed"
	
	/// This request should never have existed and should be considered 'void'.  (It is possible that real-world
	/// decisions were based on it.  If real-world activity has occurred, the status should be "revoked" rather than
	/// "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this request.  Note:
	/// This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}
