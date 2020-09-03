//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The master set of status codes used throughout FHIR. All status codes are mapped to one of these codes.
 
 URL: http://hl7.org/fhir/resource-status
 ValueSet: http://hl7.org/fhir/ValueSet/resource-status
 */
public enum CanonicalStatusCodesForFHIRResources: String, FHIRPrimitiveType {
	
	/// The resource was created in error, and should not be treated as valid (note: in many cases, for various data
	/// integrity related reasons, the information cannot be removed from the record)
	case error = "error"
	
	/// The resource describes an action or plan that is proposed, and not yet approved by the participants
	case proposed = "proposed"
	
	/// The resource describes a course of action that is planned and agreed/approved, but at the time of recording was
	/// still future
	case planned = "planned"
	
	/// The information in the resource is still being prepared and edited
	case draft = "draft"
	
	/// A fulfiller has been asked to perform this action, but it has not yet occurred
	case requested = "requested"
	
	/// The fulfiller has received the request, but not yet agreed to carry out the action
	case received = "received"
	
	/// The fulfiller chose not to perform the action
	case declined = "declined"
	
	/// The fulfiller has decided to perform the action, and plans are in train to do this in the future
	case accepted = "accepted"
	
	/// The pre-conditions for the action are all fulfilled, and it is imminent
	case arrived = "arrived"
	
	/// The resource describes information that is currently valid or a process that is presently occuring
	case active = "active"
	
	/// The process described/requested in this resource has been halted for some reason
	case suspended = "suspended"
	
	/// The process described/requested in the resource could not be completed, and no further action is planned
	case failed = "failed"
	
	/// The information in this resource has been replaced by information in another resource
	case replaced = "replaced"
	
	/// The process described/requested in the resource has been completed, and no further action is planned
	case complete = "complete"
	
	/// The resource describes information that is no longer valid or a process that is stopped occurring
	case inactive = "inactive"
	
	/// The process described/requested in the resource did not complete - usually due to some workflow error, and no
	/// further action is planned
	case abandoned = "abandoned"
	
	/// Authoring system does not know the status
	case unknown = "unknown"
	
	/// The information in this resource is not yet approved
	case unconfirmed = "unconfirmed"
	
	/// The information in this resource is approved
	case confirmed = "confirmed"
	
	/// The issue identified by this resource is no longer of concern
	case resolved = "resolved"
	
	/// This information has been ruled out by testing and evaluation
	case refuted = "refuted"
	
	/// Potentially true?
	case differential = "differential"
	
	/// This information is still being assembled
	case partial = "partial"
	
	/// not available at this time/location
	case busyUnavailable = "busy-unavailable"
	
	/// Free for scheduling
	case free = "free"
	
	/// Ready to act
	case onTarget = "on-target"
	
	/// Ahead of the planned timelines
	case aheadOfTarget = "ahead-of-target"
	
	/// behindTarget
	case behindTarget = "behind-target"
	
	/// Behind the planned timelines
	case notReady = "not-ready"
	
	/// The device transducer is disconnected
	case transducDiscon = "transduc-discon"
	
	/// The hardware is disconnected
	case hwDiscon = "hw-discon"
}
