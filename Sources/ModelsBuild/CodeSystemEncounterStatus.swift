//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Current state of the encounter.
 
 URL: http://hl7.org/fhir/encounter-status
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-status
 */
public enum EncounterStatus: String, FHIRPrimitiveType {
	
	/// The Encounter has ended before it has begun.
	case cancelled
	
	/// The Encounter has ended.
	case completed
	
	/// The Encounter has been clinically completed, the patient has been discharged from the facility or the visit has
	/// ended, and the patient may have departed (refer to subjectStatus). While the encounter is in this status,
	/// administrative activities are usually performed, collating all required documentation and charge information
	/// before being released for billing, at which point the status will move to completed.
	case discharged
	
	/// The Encounter has started, but was not able to be completed. Further action may need to be performed, such as
	/// rescheduling appointments related to this encounter.
	case discontinued
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
	case inProgress = "in-progress"
	
	/// The Encounter has begun, but is currently on hold, e.g. because the patient is temporarily on leave.
	case onHold = "on-hold"
	
	/// The Encounter has not yet started.
	case planned
	
	/// The encounter status is unknown. Note that "unknown" is a value of last resort and every attempt should be made
	/// to provide a meaningful value other than "unknown".
	case unknown
}
