//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 The master set of status codes used throughout FHIR. All status codes are mapped to one of these codes.
 
 URL: http://hl7.org/fhir/resource-status
 ValueSet: http://hl7.org/fhir/ValueSet/resource-status
 */
public enum CanonicalStatusCodesForFHIRResources: String, FHIRPrimitiveType {
	
	/// The process described/requested in the resource did not complete - usually due to some workflow error, and no
	/// further action is planned
	case abandoned
	
	/// The fulfiller has decided to perform the action, and plans are in train to do this in the future
	case accepted
	
	/// The resource describes information that is currently valid or a process that is presently occuring
	case active
	
	/// Ahead of the planned timelines
	case aheadOfTarget = "ahead-of-target"
	
	/// The pre-conditions for the action are all fulfilled, and it is imminent
	case arrived
	
	/// behindTarget
	case behindTarget = "behind-target"
	
	/// not available at this time/location
	case busyUnavailable = "busy-unavailable"
	
	/// The process described/requested in the resource has been completed, and no further action is planned
	case complete
	
	/// The information in this resource is approved
	case confirmed
	
	/// The fulfiller chose not to perform the action
	case declined
	
	/// Potentially true?
	case differential
	
	/// The information in the resource is still being prepared and edited
	case draft
	
	/// The resource was created in error, and should not be treated as valid (note: in many cases, for various data
	/// integrity related reasons, the information cannot be removed from the record)
	case error
	
	/// The process described/requested in the resource could not be completed, and no further action is planned
	case failed
	
	/// Free for scheduling
	case free
	
	/// The hardware is disconnected
	case hwDiscon = "hw-discon"
	
	/// The resource describes information that is no longer valid or a process that is stopped occurring
	case inactive
	
	/// Behind the planned timelines
	case notReady = "not-ready"
	
	/// Ready to act
	case onTarget = "on-target"
	
	/// This information is still being assembled
	case partial
	
	/// The resource describes a course of action that is planned and agreed/approved, but at the time of recording was
	/// still future
	case planned
	
	/// The resource describes an action or plan that is proposed, and not yet approved by the participants
	case proposed
	
	/// The fulfiller has received the request, but not yet agreed to carry out the action
	case received
	
	/// This information has been ruled out by testing and evaluation
	case refuted
	
	/// The information in this resource has been replaced by information in another resource
	case replaced
	
	/// A fulfiller has been asked to perform this action, but it has not yet occurred
	case requested
	
	/// The issue identified by this resource is no longer of concern
	case resolved
	
	/// The process described/requested in this resource has been halted for some reason
	case suspended
	
	/// The device transducer is disconnected
	case transducDiscon = "transduc-discon"
	
	/// The information in this resource is not yet approved
	case unconfirmed
	
	/// Authoring system does not know the status
	case unknown
}
