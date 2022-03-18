//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 None
 
 URL: http://hl7.org/fhir/CodeSystem/medication-admin-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-status
 */
public enum MedicationAdministrationStatusCodes: String, FHIRPrimitiveType {
	
	/// All actions that are implied by the administration have occurred.
	case completed
	
	/// The administration was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// The administration has started but has not yet completed.
	case inProgress = "in-progress"
	
	/// The administration was terminated prior to any impact on the subject (though preparatory actions may have been
	/// taken)
	case notDone = "not-done"
	
	/// Actions implied by the administration have been temporarily halted, but are expected to continue later. May also
	/// be called 'suspended'.
	case onHold = "on-hold"
	
	/// Actions implied by the administration have been permanently halted, before all of them occurred.
	case stopped
	
	/// The authoring system does not know which of the status values currently applies for this request. Note: This
	/// concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown
}
