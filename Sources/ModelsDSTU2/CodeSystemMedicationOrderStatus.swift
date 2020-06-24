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
 A code specifying the state of the prescribing event. Describes the lifecycle of the prescription.
 
 URL: http://hl7.org/fhir/medication-order-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-order-status
 */
public enum MedicationOrderStatus: String, FHIRPrimitiveType {
	
	/// The prescription is 'actionable', but not all actions that are implied by it have occurred yet.
	case active = "active"
	
	/// Actions implied by the prescription are to be temporarily halted, but are expected to continue later.  May also
	/// be called "suspended".
	case onHold = "on-hold"
	
	/// All actions that are implied by the prescription have occurred.
	case completed = "completed"
	
	/// The prescription was entered in error.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the prescription are to be permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// The prescription is not yet 'actionable', i.e. it is a work in progress, requires sign-off or verification, and
	/// needs to be run through decision support process.
	case draft = "draft"
}
