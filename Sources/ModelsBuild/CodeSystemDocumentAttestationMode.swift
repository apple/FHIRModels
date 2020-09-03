//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The way in which a person authenticated a document.
 
 URL: http://hl7.org/fhir/document-attestation-mode
 ValueSet: http://hl7.org/fhir/ValueSet/document-attestation-mode
 */
public enum DocumentAttestationMode: String, FHIRPrimitiveType {
	
	/// The person authenticated the content in their personal capacity.
	case personal = "personal"
	
	/// The person authenticated the content in their professional capacity.
	case professional = "professional"
	
	/// The person authenticated the content and accepted legal responsibility for its content.
	case legal = "legal"
	
	/// The organization authenticated the content as consistent with their policies and procedures.
	case official = "official"
}
