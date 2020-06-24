//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.4.0-29ad3ab0
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
 This example value set defines a set of codes that can be used to indicate the status of the subject within the
 encounter
 
 URL: http://terminology.hl7.org/CodeSystem/encounter-subject-status
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-subject-status
 */
public enum EncounterSubjectStatus: String, FHIRPrimitiveType {
	
	/// arrived
	case arrived = "arrived"
	
	/// triaged
	case triaged = "triaged"
	
	/// onLeave
	case onLeave = "on-leave"
	
	/// departed
	case departed = "departed"
}
