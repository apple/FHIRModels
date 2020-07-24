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
 The Participation status of an appointment.
 
 URL: http://hl7.org/fhir/participationstatus
 ValueSet: http://hl7.org/fhir/ValueSet/participationstatus
 */
public enum ParticipationStatus: String, FHIRPrimitiveType {
	
	/// The participant has accepted the appointment.
	case accepted = "accepted"
	
	/// The participant has declined the appointment and will not participate in the appointment.
	case declined = "declined"
	
	/// The participant has  tentatively accepted the appointment. This could be automatically created by a system and
	/// requires further processing before it can be accepted. There is no commitment that attendance will occur.
	case tentative = "tentative"
	
	/// The participant needs to indicate if they accept the appointment by changing this status to one of the other
	/// statuses.
	case needsAction = "needs-action"
}
