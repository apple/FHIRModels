//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 MedicationStatement Status Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medication-statement-status
 ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-status
 */
public enum MedicationStatementStatusCodes: String, FHIRPrimitiveType {
	
	/// The medication usage is draft or preliminary.
	case draft
	
	/// Some of the actions that are implied by the medication usage may have occurred.  For example, the patient may
	/// have taken some of the medication.  Clinical decision support systems should take this status into account.
	case enteredInError = "entered-in-error"
	
	/// The action of recording the medication statement is finished.
	case recorded
}
