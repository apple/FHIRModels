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
 Example set of HealthcareService eligibility codes
 
 URL: http://hl7.org/fhir/eligibility
 */
public enum Eligibility: String, FHIRPrimitiveType {
	
	/// An assessment is required to receive services associated with this code
	case assessmentRequired = "assessment-required"
	
	/// Existing Patients
	case existingPatients = "existing-patients"
	
	/// Low-income patients
	case lowIncomePatients = "low-income-patients"
	
	/// New patients
	case newPatients = "new-patients"
	
	/// Pediatric Patients
	case pediatricPatients = "pediatric-patients"
	
	/// Renal patients (e.g., for dialysis services)
	case renalPatients = "renal-patients"
	
	/// A specific specialist referral is required to receive services associated with this code
	case specialistReferralRequired = "specialist-referral-required"
	
	/// Uninsured patients
	case uninsuredPatients = "uninsured-patients"
	
	/// Only Veterans are eligible to receive services associated with this code
	case veterans
}
