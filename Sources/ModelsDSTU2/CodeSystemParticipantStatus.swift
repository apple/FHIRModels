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
 The Participation status of an appointment.
 
 URL: http://hl7.org/fhir/participantstatus
 ValueSet: http://hl7.org/fhir/ValueSet/participantstatus
 */
public enum ParticipantStatus: String, FHIRPrimitiveType {
	
	/// The appointment participant has accepted that they can attend the appointment at the time specified in the
	/// AppointmentResponse.
	case accepted = "accepted"
	
	/// The appointment participant has declined the appointment.
	case declined = "declined"
	
	/// The appointment participant has tentatively accepted the appointment.
	case tentative = "tentative"
	
	/// The participant has in-process the appointment.
	case inProcess = "in-process"
	
	/// The participant has completed the appointment.
	case completed = "completed"
	
	/// This is the intitial status of an appointment participant until a participant has replied. It implies that there
	/// is no commitment for the appointment.
	case needsAction = "needs-action"
}
