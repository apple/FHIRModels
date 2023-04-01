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
 The quality of how direct the match is.
 
 URL: http://terminology.hl7.org/CodeSystem/directness
 ValueSet: http://hl7.org/fhir/ValueSet/directness
 */
public enum EvidenceDirectness: String, FHIRPrimitiveType {
	
	/// Exact matching quality between observed and intended variable, so no concern for indirectness in evidence
	/// interpretation.
	case exact
	
	/// High matching quality between observed and intended variable, so little concern for indirectness in evidence
	/// interpretation.
	case high
	
	/// Low matching quality between observed and intended variable, so very serious concern for indirectness in
	/// evidence interpretation.
	case low
	
	/// Moderate matching quality between observed and intended variable, so serious concern for indirectness in
	/// evidence interpretation.
	case moderate
}
