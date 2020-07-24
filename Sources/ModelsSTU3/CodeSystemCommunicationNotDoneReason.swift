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
 Codes for the reason why a communication was not done.
 
 URL: http://hl7.org/fhir/communication-not-done-reason
 ValueSet: http://hl7.org/fhir/ValueSet/communication-not-done-reason
 */
public enum CommunicationNotDoneReason: String, FHIRPrimitiveType {
	
	/// The communication was not done due to an unknown reason.
	case unknown = "unknown"
	
	/// The communication was not done due to a system error.
	case systemError = "system-error"
	
	/// The communication was not done due to an invalid phone number.
	case invalidPhoneNumber = "invalid-phone-number"
	
	/// The communication was not done due to the recipient being unavailable.
	case recipientUnavailable = "recipient-unavailable"
	
	/// The communication was not done due to a family objection.
	case familyObjection = "family-objection"
	
	/// The communication was not done due to a patient objection.
	case patientObjection = "patient-objection"
}
