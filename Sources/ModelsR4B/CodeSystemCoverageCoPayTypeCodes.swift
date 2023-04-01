//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This codeset includes Coverage Copayment Type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/coverage-copay-type
 */
public enum CoverageCoPayTypeCodes: String, FHIRPrimitiveType {
	
	/// A standard fixed currency amount applied to all classes or service or product not otherwise specified.
	case copay
	
	/// A standard percentage applied to all classes or service or product not otherwise specified.
	case copaypct
	
	/// The accumulated amount of patient payment before the coverage begins to pay for services.
	case deductible
	
	/// An episode in an emergency department.
	case emergency
	
	/// An office visit for a general practitioner of a discipline.
	case gpvisit
	
	/// An episode of an Inpatient hospital stay.
	case inpthosp
	
	/// The maximum amout of payment for services which a patient, or family, is expected to incur - typically annually.
	case maxoutofpocket
	
	/// An office visit for a specialist practitioner of a discipline
	case spvisit
	
	/// A visit held where the patient is remote relative to the practitioner, e.g. by phone, computer or video
	/// conference.
	case televisit
	
	/// A visit to an urgent care facility - typically a community care clinic.
	case urgentcare
}
