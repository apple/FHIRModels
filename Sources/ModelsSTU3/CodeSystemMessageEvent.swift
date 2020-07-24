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
 One of the message events defined as part of FHIR.
 
 URL: http://hl7.org/fhir/message-events
 ValueSet: http://hl7.org/fhir/ValueSet/message-events
 */
public enum MessageEvent: String, FHIRPrimitiveType {
	
	/// The definition of a code system is used to create a simple collection of codes suitable for use for data entry
	/// or validation. An expanded code system will be returned, or an error message.
	case codeSystemExpand = "CodeSystem-expand"
	
	/// Change the status of a Medication Administration to show that it is complete.
	case medicationAdministrationComplete = "MedicationAdministration-Complete"
	
	/// Someone wishes to record that the record of administration of a medication is in error and should be ignored.
	case medicationAdministrationNullification = "MedicationAdministration-Nullification"
	
	/// Indicates that a medication has been recorded against the patient's record.
	case medicationAdministrationRecording = "MedicationAdministration-Recording"
	
	/// Update a Medication Administration record.
	case medicationAdministrationUpdate = "MedicationAdministration-Update"
	
	/// Notification of a change to an administrative resource (either create or update). Note that there is no delete,
	/// though some administrative resources have status or period elements for this use.
	case adminNotify = "admin-notify"
	
	/// Notification to convey information.
	case communicationRequest = "communication-request"
	
	/// Provide a diagnostic report, or update a previously provided diagnostic report.
	case diagnosticreportProvide = "diagnosticreport-provide"
	
	/// Provide a simple observation or update a previously provided simple observation.
	case observationProvide = "observation-provide"
	
	/// Notification that two patient records actually identify the same patient.
	case patientLink = "patient-link"
	
	/// Notification that previous advice that two patient records concern the same patient is now considered incorrect.
	case patientUnlink = "patient-unlink"
	
	/// The definition of a value set is used to create a simple collection of codes suitable for use for data entry or
	/// validation. An expanded value set will be returned, or an error message.
	case valuesetExpand = "valueset-expand"
}
