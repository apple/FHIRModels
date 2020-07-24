//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Codes identifying the stage lifecycle stage of a event
 
 URL: http://hl7.org/fhir/event-status
 ValueSet: http://hl7.org/fhir/ValueSet/event-status
 */
public enum EventStatus: String, FHIRPrimitiveType {
	
	/// The core event has not started yet, but some staging activities have begun (e.g. surgical suite preparation).
	/// Preparation stages may be tracked for billing purposes.
	case preparation = "preparation"
	
	/// The event is currently occurring
	case inProgress = "in-progress"
	
	/// The event has been temporarily stopped but is expected to resume in the future
	case suspended = "suspended"
	
	/// The event was  prior to the full completion of the intended actions
	case aborted = "aborted"
	
	/// The event has now concluded
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}
