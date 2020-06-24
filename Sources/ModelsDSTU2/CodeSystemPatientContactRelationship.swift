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
 This value set defines a set of codes that are used to indicate the nature of the relationship between a patient and a
 contactperson for that patient.
 
 URL: http://hl7.org/fhir/patient-contact-relationship
 ValueSet: http://hl7.org/fhir/ValueSet/patient-contact-relationship
 */
public enum PatientContactRelationship: String, FHIRPrimitiveType {
	
	/// Contact for use in case of emergency.
	case emergency = "emergency"
	
	/// family
	case family = "family"
	
	/// guardian
	case guardian = "guardian"
	
	/// friend
	case friend = "friend"
	
	/// partner
	case partner = "partner"
	
	/// Contact for matters related to the patients occupation/employment.
	case work = "work"
	
	/// (Non)professional caregiver
	case caregiver = "caregiver"
	
	/// Contact that acts on behalf of the patient
	case agent = "agent"
	
	/// Contact for financial matters
	case guarantor = "guarantor"
	
	/// For animals, the owner of the animal
	case owner = "owner"
	
	/// Parent of the patient
	case parent = "parent"
}
