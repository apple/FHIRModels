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
 This value set includes a smattering of Benefit type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/benefit-type
 ValueSet: http://hl7.org/fhir/ValueSet/benefit-type
 */
public enum BenefitTypeCodes: String, FHIRPrimitiveType {
	
	/// Maximum benefit allowable.
	case benefit = "benefit"
	
	/// Cost to be incurred before benefits are applied
	case deductible = "deductible"
	
	/// Service visit
	case visit = "visit"
	
	/// Type of room
	case room = "room"
	
	/// Copayment per service
	case copay = "copay"
	
	/// Copayment percentage per service
	case copayPercent = "copay-percent"
	
	/// Copayment maximum per service
	case copayMaximum = "copay-maximum"
	
	/// Vision Exam
	case visionExam = "vision-exam"
	
	/// Frames and lenses
	case visionGlasses = "vision-glasses"
	
	/// Contact Lenses
	case visionContacts = "vision-contacts"
	
	/// Medical Primary Health Coverage
	case medicalPrimarycare = "medical-primarycare"
	
	/// Pharmacy Dispense Coverage
	case pharmacyDispense = "pharmacy-dispense"
}
