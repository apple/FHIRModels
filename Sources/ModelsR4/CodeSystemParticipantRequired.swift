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
 Is the Participant required to attend the appointment.
 
 URL: http://hl7.org/fhir/participantrequired
 ValueSet: http://hl7.org/fhir/ValueSet/participantrequired
 */
public enum ParticipantRequired: String, FHIRPrimitiveType {
	
	/// The participant is required to attend the appointment.
	case required = "required"
	
	/// The participant may optionally attend the appointment.
	case optional = "optional"
	
	/// The participant is excluded from the appointment, and might not be informed of the appointment taking place.
	/// (Appointment is about them, not for them - such as 2 doctors discussing results about a patient's test).
	case informationOnly = "information-only"
}
