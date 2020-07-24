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
 Codes describing the reason why a family member history was not done.
 
 URL: http://hl7.org/fhir/history-not-done-reason
 ValueSet: http://hl7.org/fhir/ValueSet/history-not-done-reason
 */
public enum FamilyHistoryNotDoneReason: String, FHIRPrimitiveType {
	
	/// Patient does not know the subject, e.g. the biological parent of an adopted patient.
	case subjectUnknown = "subject-unknown"
	
	/// The patient withheld or refused to share the information.
	case withheld = "withheld"
	
	/// Information cannot be obtained; e.g. unconscious patient
	case unableToObtain = "unable-to-obtain"
	
	/// Patient does not have the information now, but can provide the information at a later date.
	case deferred = "deferred"
}
