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
 MedicationUsage Status Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medication-usage-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-usage-status
 */
public enum MedicationUsageStatusCodes: String, FHIRPrimitiveType {
	
	/// The medication is still being taken.
	case active = "active"
	
	/// The medication is no longer being taken.
	case completed = "completed"
	
	/// Some of the actions that are implied by the medication usage may have occurred.  For example, the patient may
	/// have taken some of the medication.  Clinical decision support systems should take this status into account.
	case enteredInError = "entered-in-error"
	
	/// The medication may be taken at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the usage have been permanently halted, before all of them occurred. This should not be used
	/// if the statement was entered in error.
	case stopped = "stopped"
	
	/// Actions implied by the usage have been temporarily halted, but are expected to continue later. May also be
	/// called 'suspended'.
	case onHold = "on-hold"
	
	/// The state of the medication use is not currently known.
	case unknown = "unknown"
	
	/// The medication was not consumed by the patient
	case notTaken = "not-taken"
}
