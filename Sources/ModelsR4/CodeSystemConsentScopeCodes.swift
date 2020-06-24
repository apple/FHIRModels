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
 This value set includes the four Consent scope codes.
 
 URL: http://terminology.hl7.org/CodeSystem/consentscope
 ValueSet: http://hl7.org/fhir/ValueSet/consent-scope
 */
public enum ConsentScopeCodes: String, FHIRPrimitiveType {
	
	/// Actions to be taken if they are no longer able to make decisions for themselves
	case adr = "adr"
	
	/// Consent to participate in research protocol and information sharing required
	case research = "research"
	
	/// Agreement to collect, access, use or disclose (share) information
	case patientPrivacy = "patient-privacy"
	
	/// Consent to undergo a specific treatment
	case treatment = "treatment"
}
