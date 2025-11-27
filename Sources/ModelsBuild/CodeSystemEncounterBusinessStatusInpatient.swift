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
 Business statuses for inpatient encounters.
 
 URL: http://hl7.org/fhir/encounter-businessstatus-inpatient
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-businessstatus-inpatient
 */
public enum EncounterBusinessStatusInpatient: String, FHIRPrimitiveType {
	
	/// The patient has been admitted to the facility.
	case admit
	
	/// The patient is in the process of being discharged or has been discharged.
	case discharge
	
	/// The patient admission is pending.
	case pendAdmit = "pend-admit"
	
	/// The patient has been pre-admitted but has not yet arrived at the facility.
	case preAdmit = "pre-admit"
	
	/// The inpatient business status is unknown. Note that "unknown" is a value of last resort and every attempt should
	/// be made to provide a meaningful value other than "unknown".
	case unknown
}
