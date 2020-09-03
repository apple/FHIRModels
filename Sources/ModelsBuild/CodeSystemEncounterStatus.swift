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
 Current state of the encounter.
 
 URL: http://hl7.org/fhir/encounter-status
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-status
 */
public enum EncounterStatus: String, FHIRPrimitiveType {
	
	/// The Encounter has not yet started.
	case planned = "planned"
	
	/// The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
	case inProgress = "in-progress"
	
	/// The Encounter has begun, but is currently on hold, e.g. because the patient is temporarily on leave.
	case onhold = "onhold"
	
	/// The Encounter has ended.
	case completed = "completed"
	
	/// The Encounter has ended before it has begun.
	case cancelled = "cancelled"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// The encounter status is unknown. Note that "unknown" is a value of last resort and every attempt should be made
	/// to provide a meaningful value other than "unknown".
	case unknown = "unknown"
}
