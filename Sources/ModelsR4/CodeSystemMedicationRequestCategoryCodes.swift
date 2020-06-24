//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 MedicationRequest Category Codes
 
 URL: http://terminology.hl7.org/CodeSystem/medicationrequest-category
 ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-category
 */
public enum MedicationRequestCategoryCodes: String, FHIRPrimitiveType {
	
	/// Includes requests for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes requests for medications to be administered or consumed in an outpatient setting (for example,
	/// Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes requests for medications to be administered or consumed by the patient in their home (this would
	/// include long term care or nursing homes, hospices, etc.)
	case community = "community"
	
	/// Includes requests for medications created when the patient is being released from a facility
	case discharge = "discharge"
}
