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
 A coded concept describing where the medication administered is expected to occur
 
 URL: http://hl7.org/fhir/medication-admin-category
 ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-category
 */
public enum MedicationAdministrationCategory: String, FHIRPrimitiveType {
	
	/// Includes administrations in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes administrations in an outpatient setting (for example, Emergency Department, Outpatient Clinic,
	/// Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes administrations by the patient in their home (this would include long term care or nursing homes,
	/// hospices, etc)
	case community = "community"
}
