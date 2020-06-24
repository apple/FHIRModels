//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 A set of codes indicating the current status of a MedicationAdministration.
 
 URL: http://hl7.org/fhir/medication-admin-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-status
 */
public enum MedicationAdministrationStatus: String, FHIRPrimitiveType {
	
	/// The administration has started but has not yet completed.
	case inProgress = "in-progress"
	
	/// Actions implied by the administration have been temporarily halted, but are expected to continue later. May also
	/// be called "suspended".
	case onHold = "on-hold"
	
	/// All actions that are implied by the administration have occurred.
	case completed = "completed"
	
	/// The administration was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the administration have been permanently halted, before all of them occurred.
	case stopped = "stopped"
}
