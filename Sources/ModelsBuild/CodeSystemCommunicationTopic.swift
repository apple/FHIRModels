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
 Codes describing the purpose or content of the communication.
 
 URL: http://terminology.hl7.org/CodeSystem/communication-topic
 ValueSet: http://hl7.org/fhir/ValueSet/communication-topic
 */
public enum CommunicationTopic: String, FHIRPrimitiveType {
	
	/// The purpose or content of the communication is a prescription refill request.
	case prescriptionRefillRequest = "prescription-refill-request"
	
	/// The purpose or content of the communication is a progress update.
	case progressUpdate = "progress-update"
	
	/// The purpose or content of the communication is to report labs.
	case reportLabs = "report-labs"
	
	/// The purpose or content of the communication is an appointment reminder.
	case appointmentReminder = "appointment-reminder"
	
	/// The purpose or content of the communication is a phone consult.
	case phoneConsult = "phone-consult"
	
	/// The purpose or content of the communication is a summary report.
	case summaryReport = "summary-report"
}
