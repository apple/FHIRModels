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
 MedicationRequest Status Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medicationrequest-status
 ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-status
 */
public enum MedicationRequestStatusCodes: String, FHIRPrimitiveType {
	
	/// The request is 'actionable', but not all actions that are implied by it have occurred yet.
	case active
	
	/// The request has been withdrawn before any administrations have occurred
	case cancelled
	
	/// All actions that are implied by the request have occurred.
	case completed
	
	/// The request is not yet 'actionable', e.g. it is a work in progress, requires sign-off, verification or needs to
	/// be run through decision support process.
	case draft
	
	/// The request is no longer active and the subject should no longer be taking the medication.
	case ended
	
	/// The request was recorded against the wrong patient or for some reason should not have been recorded (e.g. wrong
	/// medication, wrong dose, etc.). Some of the actions that are implied by the medication request may have occurred.
	/// For example, the medication may have been dispensed and the patient may have taken some of the medication.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the request are to be temporarily halted. The request might or might not be resumed. May also
	/// be called 'suspended'.
	case onHold = "on-hold"
	
	/// Actions implied by the request are to be permanently halted, before all of the administrations occurred. This
	/// should not be used if the original order was entered in error
	case stopped
	
	/// The authoring/source system does not know which of the status values currently applies for this request. Note:
	/// This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown
}
