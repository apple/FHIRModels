//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 A code that identifies the status of the family history record.
 
 URL: http://hl7.org/fhir/history-status
 ValueSet: http://hl7.org/fhir/ValueSet/history-status
 */
public enum FamilyHistoryStatus: String, FHIRPrimitiveType {
	
	/// Some health information is known and captured, but not complete - see notes for details.
	case partial = "partial"
	
	/// All available related health information is captured as of the date (and possibly time) when the family member
	/// history was taken.
	case completed = "completed"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// Health information for this family member is unavailable/unknown.
	case healthUnknown = "health-unknown"
}
