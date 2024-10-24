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
 The free/busy status of an appointment.
 
 URL: http://hl7.org/fhir/appointmentstatus
 ValueSet: http://hl7.org/fhir/ValueSet/appointmentstatus
 */
public enum AppointmentStatus: String, FHIRPrimitiveType {
	
	/// The patient/patients has/have arrived and is/are waiting to be seen.
	case arrived
	
	/// All participant(s) have been considered and the appointment is confirmed to go ahead at the date/times
	/// specified.
	case booked
	
	/// The appointment has been cancelled.
	case cancelled
	
	/// When checked in, all pre-encounter administrative work is complete, and the encounter may begin. (where multiple
	/// patients are involved, they are all present).
	case checkedIn = "checked-in"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// The planning stages of the appointment are now complete, the encounter resource will exist and will track
	/// further status changes. Note that an encounter may exist before the appointment status is fulfilled for many
	/// reasons.
	case fulfilled
	
	/// Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
	case noshow
	
	/// Some or all of the participant(s) have not finalized their acceptance of the appointment request.
	case pending
	
	/// None of the participant(s) have finalized their acceptance of the appointment request, and the start/end time
	/// might not be set yet.
	case proposed
	
	/// The appointment has been placed on a waitlist, to be scheduled/confirmed in the future when a slot/service is
	/// available.
	/// A specific time might or might not be pre-allocated.
	case waitlist
}
