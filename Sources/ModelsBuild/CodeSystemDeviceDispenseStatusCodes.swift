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
 DeviceDispense Status Codes
 
 URL: http://hl7.org/fhir/devicedispense-status
 ValueSet: http://hl7.org/fhir/ValueSet/devicedispense-status
 */
public enum DeviceDispenseStatusCodes: String, FHIRPrimitiveType {
	
	/// The dispensed product was not and will never be picked up by the patient.
	case cancelled
	
	/// The dispensed product has been picked up.
	case completed
	
	/// The dispense was declined and not performed.
	case declined
	
	/// The dispense was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// The dispensed product is ready for pickup.
	case inProgress = "in-progress"
	
	/// The dispense process is paused while waiting for an external event to reactivate the dispense.  For example, new
	/// stock has arrived or the prescriber has called.
	case onHold = "on-hold"
	
	/// The core event has not started yet, but some staging activities have begun (e.g. initial preparing of the
	/// device. Preparation stages may be tracked e.g. for planning, supply or billing purposes.
	case preparation
	
	/// Actions implied by the dispense have been permanently halted, before all of them occurred.
	case stopped
	
	/// The authoring system does not know which of the status values applies for this dispense.  Note: this concept is
	/// not to be used for other - one of the listed statuses is presumed to apply, it's just now known which one.
	case unknown
}
