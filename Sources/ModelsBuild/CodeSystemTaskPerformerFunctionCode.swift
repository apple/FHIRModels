//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 The performer of the task.
 
 URL: http://hl7.org/fhir/task-performer-function-code
 ValueSet: http://hl7.org/fhir/ValueSet/task-performer-function-code
 */
public enum TaskPerformerFunctionCode: String, FHIRPrimitiveType {
	
	/// A person, non-person living subject, organization or device that who actually and principally carries out the
	/// Task action.
	case performer
	
	/// A person having referred the action of the Task to the performer (referring physician).
	case referrer
	
	/// A person who verifies the correctness and appropriateness of the Task action (plan, order, event, etc.) and
	/// hence takes on accountability.
	case verifier
	
	/// A person witnessing the action happening without doing anything. A witness is not necessarily aware, much less
	/// approves of anything stated in the service event.
	case witness
}
