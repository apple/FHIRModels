//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
//  Copyright 2023 Apple Inc.
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
 MedicationStatement Adherence Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medication-statement-adherence
 ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-adherence
 */
public enum MedicationStatementAdherenceCodes: String, FHIRPrimitiveType {
	
	/// The medication is not being taken.
	case notTaking = "not-taking"
	
	/// The medication is on hold.
	case onHold = "on-hold"
	
	/// The medication is on hold as directed.
	case onHoldAsDirected = "on-hold-as-directed"
	
	/// The medication is on hold not as directed.
	case onHoldNotAsDirected = "on-hold-not-as-directed"
	
	/// The medication is stopped.
	case stopped
	
	/// The medication is stopped as directed.
	case stoppedAsDirected = "stopped-as-directed"
	
	/// The medication is stopped not as directed.
	case stoppedNotAsDirected = "stopped-not-as-directed"
	
	/// The medication is being taken.
	case taking
	
	/// The medication is being taken as directed.
	case takingAsDirected = "taking-as-directed"
	
	/// The medication is not being taken as directed.
	case takingNotAsDirected = "taking-not-as-directed"
	
	/// Whether the medication is being taken or not is not currently known.
	case unknown
}
