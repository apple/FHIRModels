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
 Used for results by exposure in variant states such as low-risk, medium-risk and high-risk states.
 
 URL: http://terminology.hl7.org/CodeSystem/evidence-variant-state
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-variant-state
 */
public enum EvidenceVariantState: String, FHIRPrimitiveType {
	
	/// low risk estimate.
	case lowRisk = "low-risk"
	
	/// medium risk estimate.
	case mediumRisk = "medium-risk"
	
	/// high risk estimate.
	case highRisk = "high-risk"
}
