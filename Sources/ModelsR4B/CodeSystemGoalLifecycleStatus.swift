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
 Codes that reflect the current state of a goal and whether the goal is still being targeted.
 
 URL: http://hl7.org/fhir/goal-status
 ValueSet: http://hl7.org/fhir/ValueSet/goal-status
 */
public enum GoalLifecycleStatus: String, FHIRPrimitiveType {
	
	/// A proposed goal was accepted or acknowledged.
	case accepted
	
	/// The goal is being sought actively.
	case active
	
	/// The goal has been abandoned.
	case cancelled
	
	/// The goal is no longer being sought.
	case completed
	
	/// The goal was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
	case onHold = "on-hold"
	
	/// A goal is planned for this patient.
	case planned
	
	/// A goal is proposed for this patient.
	case proposed
	
	/// A proposed goal was rejected.
	case rejected
}
