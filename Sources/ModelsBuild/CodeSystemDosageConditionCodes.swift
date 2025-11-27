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
 Additional Binding Purpose
 
 URL: http://hl7.org/fhir/CodeSystem/dosage-condition-code
 ValueSet: http://hl7.org/fhir/ValueSet/dosage-condition-code
 */
public enum DosageConditionCodes: String, FHIRPrimitiveType {
	
	/// Whether this is needed. Note that this is different to PRN, because the entire course is if required, not on a
	/// per dose basis
	case ifNeeded = "if-needed"
	
	/// (Sufficient) medication Is Available (e.g. Supply issues)
	case medicationAvailable = "medication-available"
	
	/// Medication Is Funded / Approved
	case medicationFunded = "medication-funded"
	
	/// Medication Is Tolerated
	case medicationTolerated = "medication-tolerated"
	
	/// Whether a symptom, problem of finding abates. It's not really important what type it is. This is considered
	/// equivalent to 'patient responds to medication'. The degree of abatement is not defined
	case problemAbates = "problem-abates"
	
	/// Whether a symptom, problem of finding presents. It's not really important what type it is.
	case problemPresents = "problem-presents"
	
	/// Whether the patient tolerates a medication (e.g. SCT 1303423003)
	case tolerates
}
