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
 Business statuses for outpatient encounters.
 
 URL: http://hl7.org/fhir/encounter-businessstatus-outpatient
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-businessstatus-outpatient
 */
public enum EncounterBusinessStatusOutpatient: String, FHIRPrimitiveType {
	
	/// The patient has checked in for the outpatient visit.
	case checkIn = "check-in"
	
	/// The patient has checked out from the outpatient visit.
	case checkOut = "check-out"
}
