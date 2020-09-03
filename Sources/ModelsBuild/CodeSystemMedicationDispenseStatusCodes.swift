//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 MedicationDispense Status Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medicationdispense-status
 ValueSet: http://hl7.org/fhir/ValueSet/medicationdispense-status
 */
public enum MedicationDispenseStatusCodes: String, FHIRPrimitiveType {
	
	/// The core event has not started yet, but some staging activities have begun (e.g. initial compounding or
	/// packaging of medication). Preparation stages may be tracked for billing purposes.
	case preparation = "preparation"
	
	/// The dispensed product is ready for pickup.
	case inProgress = "in-progress"
	
	/// The dispensed product was not and will never be picked up by the patient.
	case cancelled = "cancelled"
	
	/// The dispense process is paused while waiting for an external event to reactivate the dispense.  For example, new
	/// stock has arrived or the prescriber has called.
	case onHold = "on-hold"
	
	/// The dispensed product has been picked up.
	case completed = "completed"
	
	/// The dispense was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the dispense have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// The dispense was declined and not performed.
	case declined = "declined"
	
	/// The authoring system does not know which of the status values applies for this medication dispense.  Note: this
	/// concept is not to be used for other - one of the listed statuses is presumed to apply, it's just now known which
	/// one.
	case unknown = "unknown"
}
