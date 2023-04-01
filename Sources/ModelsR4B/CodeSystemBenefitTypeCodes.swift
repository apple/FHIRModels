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
 This value set includes a smattering of Benefit type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/benefit-type
 */
public enum BenefitTypeCodes: String, FHIRPrimitiveType {
	
	/// Maximum benefit allowable.
	case benefit
	
	/// Copayment per service
	case copay
	
	/// Copayment maximum per service
	case copayMaximum = "copay-maximum"
	
	/// Copayment percentage per service
	case copayPercent = "copay-percent"
	
	/// Cost to be incurred before benefits are applied
	case deductible
	
	/// Medical Primary Health Coverage
	case medicalPrimarycare = "medical-primarycare"
	
	/// Pharmacy Dispense Coverage
	case pharmacyDispense = "pharmacy-dispense"
	
	/// Type of room
	case room
	
	/// Contact Lenses
	case visionContacts = "vision-contacts"
	
	/// Vision Exam
	case visionExam = "vision-exam"
	
	/// Frames and lenses
	case visionGlasses = "vision-glasses"
	
	/// Service visit
	case visit
}
