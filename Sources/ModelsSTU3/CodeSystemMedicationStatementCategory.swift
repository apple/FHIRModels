//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 A coded concept identifying where the medication included in the medicationstatement is expected to be consumed or
 administered
 
 URL: http://hl7.org/fhir/medication-statement-category
 ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-category
 */
public enum MedicationStatementCategory: String, FHIRPrimitiveType {
	
	/// Includes orders for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency
	/// Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes orders for medications to be administered or consumed by the patient in their home (this would include
	/// long term care or nursing homes, hospices, etc)
	case community = "community"
	
	/// Includes statements about medication use, including over the counter medication, provided by the patient, agent
	/// or another provider
	case patientspecified = "patientspecified"
}
