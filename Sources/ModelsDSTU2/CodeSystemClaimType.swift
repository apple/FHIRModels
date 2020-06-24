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
 The type or discipline-style of the claim.
 
 URL: http://hl7.org/fhir/claim-type-link
 ValueSet: http://hl7.org/fhir/ValueSet/claim-type-link
 */
public enum ClaimType: String, FHIRPrimitiveType {
	
	/// A claim for Institution based, typically in-patient, goods and services.
	case institutional = "institutional"
	
	/// A claim for Oral Health (Dentist, Denturist, Hygienist) goods and services.
	case oral = "oral"
	
	/// A claim for Pharmacy based goods and services.
	case pharmacy = "pharmacy"
	
	/// A claim for Professional, typically out-patient, goods and services.
	case professional = "professional"
	
	/// A claim for Vision (Ophthamologist, Optometrist and Optician) goods and services.
	case vision = "vision"
}
