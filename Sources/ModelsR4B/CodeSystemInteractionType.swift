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
 A categorisation for an interaction between two substances.
 
 URL: http://hl7.org/fhir/interaction-type
 ValueSet: http://hl7.org/fhir/ValueSet/interaction-type
 */
public enum InteractionType: String, FHIRPrimitiveType {
	
	/// drugDrug
	case drugDrug = "drug-drug"
	
	/// drugFood
	case drugFood = "drug-food"
	
	/// drugTest
	case drugTest = "drug-test"
	
	/// other
	case other
}
