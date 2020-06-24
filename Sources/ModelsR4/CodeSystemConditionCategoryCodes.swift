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
 Preferred value set for Condition Categories.
 
 URL: http://terminology.hl7.org/CodeSystem/condition-category
 ValueSet: http://hl7.org/fhir/ValueSet/condition-category
 */
public enum ConditionCategoryCodes: String, FHIRPrimitiveType {
	
	/// An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician,
	/// nurse), patient, or related person.
	case problemListItem = "problem-list-item"
	
	/// A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter.
	case encounterDiagnosis = "encounter-diagnosis"
}
