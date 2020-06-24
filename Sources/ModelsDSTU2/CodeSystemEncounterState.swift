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
 Current state of the encounter
 
 URL: http://hl7.org/fhir/encounter-state
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-state
 */
public enum EncounterState: String, FHIRPrimitiveType {
	
	/// The Encounter has not yet started.
	case planned = "planned"
	
	/// The Patient is present for the encounter, however is not currently meeting with a practitioner.
	case arrived = "arrived"
	
	/// The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
	case inProgress = "in-progress"
	
	/// The Encounter has begun, but the patient is temporarily on leave.
	case onleave = "onleave"
	
	/// The Encounter has ended.
	case finished = "finished"
	
	/// The Encounter has ended before it has begun.
	case cancelled = "cancelled"
}
