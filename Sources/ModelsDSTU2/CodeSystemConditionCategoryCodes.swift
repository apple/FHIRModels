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
 Preferred value set for Condition Categories.
 
 URL: http://hl7.org/fhir/condition-category
 ValueSet: http://hl7.org/fhir/ValueSet/condition-category
 */
public enum ConditionCategoryCodes: String, FHIRPrimitiveType {
	
	/// The patient considers the condition an issue to be addressed.
	case complaint = "complaint"
	
	/// A symptom of a condition (as might be mentioned in a review of systems).
	case symptom = "symptom"
	
	/// An observation made by a healthcare provider.
	case finding = "finding"
	
	/// This is a judgment made by a healthcare provider that the patient has a particular disease or condition.
	case diagnosis = "diagnosis"
}
