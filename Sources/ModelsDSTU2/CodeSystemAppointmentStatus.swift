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
 The free/busy status of an appointment.
 
 URL: http://hl7.org/fhir/appointmentstatus
 ValueSet: http://hl7.org/fhir/ValueSet/appointmentstatus
 */
public enum AppointmentStatus: String, FHIRPrimitiveType {
	
	/// None of the participant(s) have finalized their acceptance of the appointment request, and the start/end time
	/// may not be set yet.
	case proposed = "proposed"
	
	/// Some or all of the participant(s) have not finalized their acceptance of the appointment request.
	case pending = "pending"
	
	/// All participant(s) have been considered and the appointment is confirmed to go ahead at the date/times
	/// specified.
	case booked = "booked"
	
	/// Some of the patients have arrived.
	case arrived = "arrived"
	
	/// This appointment has completed and may have resulted in an encounter.
	case fulfilled = "fulfilled"
	
	/// The appointment has been cancelled.
	case cancelled = "cancelled"
	
	/// Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
	case noshow = "noshow"
}
