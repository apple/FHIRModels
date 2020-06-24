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
 Indicates where the activity is at in its overall life cycle.
 
 URL: http://hl7.org/fhir/care-plan-activity-status
 ValueSet: http://hl7.org/fhir/ValueSet/care-plan-activity-status
 */
public enum CarePlanActivityStatus: String, FHIRPrimitiveType {
	
	/// Activity is planned but no action has yet been taken.
	case notStarted = "not-started"
	
	/// Appointment or other booking has occurred but activity has not yet begun.
	case scheduled = "scheduled"
	
	/// Activity has been started but is not yet complete.
	case inProgress = "in-progress"
	
	/// Activity was started but has temporarily ceased with an expectation of resumption at a future time.
	case onHold = "on-hold"
	
	/// The activities have been completed (more or less) as planned.
	case completed = "completed"
	
	/// The activities have been ended prior to completion (perhaps even before they were started).
	case cancelled = "cancelled"
}
