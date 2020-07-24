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
 Indicates whether the goal has been met and is still being targeted
 
 URL: http://hl7.org/fhir/goal-status
 ValueSet: http://hl7.org/fhir/ValueSet/goal-status
 */
public enum GoalStatus: String, FHIRPrimitiveType {
	
	/// A goal is proposed for this patient
	case proposed = "proposed"
	
	/// A proposed goal was accepted or acknowledged
	case accepted = "accepted"
	
	/// A goal is planned for this patient
	case planned = "planned"
	
	/// The goal is being sought but has not yet been reached.  (Also applies if goal was reached in the past but there
	/// has been regression and goal is being sought again)
	case inProgress = "in-progress"
	
	/// The goal is on schedule for the planned timelines
	case onTarget = "on-target"
	
	/// The goal is ahead of the planned timelines
	case aheadOfTarget = "ahead-of-target"
	
	/// The goal is behind the planned timelines
	case behindTarget = "behind-target"
	
	/// The goal has been met, but ongoing activity is needed to sustain the goal objective
	case sustaining = "sustaining"
	
	/// The goal has been met and no further action is needed
	case achieved = "achieved"
	
	/// The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
	case onHold = "on-hold"
	
	/// The previously accepted goal is no longer being sought
	case cancelled = "cancelled"
	
	/// The goal was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// A proposed goal was rejected
	case rejected = "rejected"
}
