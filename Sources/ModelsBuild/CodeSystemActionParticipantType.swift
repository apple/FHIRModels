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
 The type of participant for the action.
 
 URL: http://hl7.org/fhir/action-participant-type
 ValueSet: http://hl7.org/fhir/ValueSet/action-participant-type
 */
public enum ActionParticipantType: String, FHIRPrimitiveType {
	
	/// The participant is a care team caring for the patient under evaluation.
	case careteam
	
	/// The participant is a system or device used in the care of the patient.
	case device
	
	/// The participant is a group of participants involved in the care of the patient.
	case group
	
	/// The participant is an institution that can provide the given healthcare service used in the care of the patient.
	case healthcareservice
	
	/// The participant is a location involved in the care of the patient.
	case location
	
	/// The participant is an organization involved in the care of the patient.
	case organization
	
	/// The participant is the patient under evaluation.
	case patient
	
	/// The participant is a practitioner involved in the patient's care.
	case practitioner
	
	/// The participant is a particular practitioner role involved in the patient's care.
	case practitionerrole
	
	/// The participant is a person related to the patient.
	case relatedperson
}
