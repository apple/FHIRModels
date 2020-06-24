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
 The current status of the task.
 
 URL: http://hl7.org/fhir/task-status
 ValueSet: http://hl7.org/fhir/ValueSet/task-status
 */
public enum TaskStatus: String, FHIRPrimitiveType {
	
	/// The task is not yet ready to be acted upon.
	case draft = "draft"
	
	/// The task is ready to be acted upon and action is sought.
	case requested = "requested"
	
	/// A potential performer has claimed ownership of the task and is evaluating whether to perform it.
	case received = "received"
	
	/// The potential performer has agreed to execute the task but has not yet started work.
	case accepted = "accepted"
	
	/// The potential performer who claimed ownership of the task has decided not to execute it prior to performing any
	/// action.
	case rejected = "rejected"
	
	/// The task is ready to be performed, but no action has yet been taken.  Used in place of
	/// requested/received/accepted/rejected when request assignment and acceptance is a given.
	case ready = "ready"
	
	/// The task was not completed.
	case cancelled = "cancelled"
	
	/// The task has been started but is not yet complete.
	case inProgress = "in-progress"
	
	/// The task has been started but work has been paused.
	case onHold = "on-hold"
	
	/// The task was attempted but could not be completed due to some error.
	case failed = "failed"
	
	/// The task has been completed.
	case completed = "completed"
	
	/// The task should never have existed and is retained only because of the possibility it may have used.
	case enteredInError = "entered-in-error"
}
