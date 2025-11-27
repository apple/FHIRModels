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
 Encounter Reason Use
 
 URL: http://hl7.org/fhir/encounter-reason-use
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-reason-use
 */
public enum EncounterReasonUse: String, FHIRPrimitiveType {
	
	/// Diagnosis (often provisional) documented as the reason for admission to the facility.
	case AD
	
	/// Patient's stated reason for seeking care.
	case CC
	
	/// An identified issue, risk, or concern requiring monitoring or management.
	case HC
	
	/// Preventive or routine services (e.g., screening, immunization) performed to maintain health.
	case HM
	
	/// Provider-recognized reason for the encounter (may differ from chief complaint).
	case RV
}
