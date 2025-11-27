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
 Medication Administration Category Codes
  **Note to Balloters: This code system is expected to move to [terminology.hl7.org](http://terminology.hl7.org)**
 
 URL: http://hl7.org/fhir/CodeSystem/medication-admin-category
 ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-category
 */
public enum MedicationAdministrationCategoryCodes: String, FHIRPrimitiveType {
	
	/// Includes administrations for medications to be administered or consumed by the patient in their home (this would
	/// include long term care or nursing homes, hospices, etc.).
	case community
	
	/// Includes administrations for medications created when the patient is being released from a facility.
	case discharge
	
	/// Includes administrations for medications to be administered or consumed in an inpatient or acute care setting.
	case inpatient
	
	/// Includes administrations for medications to be administered or consumed in an outpatient setting (for example,
	/// Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office).
	case outpatient
}
