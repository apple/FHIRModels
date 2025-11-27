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
 Business statuses for emergency encounters.
 
 URL: http://hl7.org/fhir/encounter-businessstatus-emergency
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-businessstatus-emergency
 */
public enum EncounterBusinessStatusEmergency: String, FHIRPrimitiveType {
	
	/// The patient has arrived at the emergency department.
	case arrived
	
	/// The patient has been dismissed from the emergency department.
	case dismissed
	
	/// The patient has been triaged.
	case triaged
	
	/// The emergency business status is unknown. Note that "unknown" is a value of last resort and every attempt should
	/// be made to provide a meaningful value other than "unknown".
	case unknown
}
