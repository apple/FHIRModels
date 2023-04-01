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
 This value set includes Claim Type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/claim-type
 */
public enum ClaimTypeCodes: String, FHIRPrimitiveType {
	
	/// Hospital, clinic and typically inpatient claims.
	case institutional
	
	/// Dental, Denture and Hygiene claims.
	case oral
	
	/// Pharmacy claims for goods and services.
	case pharmacy
	
	/// Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology,
	/// rehabilitative, consulting.
	case professional
	
	/// Vision claims for professional services and products such as glasses and contact lenses.
	case vision
}
