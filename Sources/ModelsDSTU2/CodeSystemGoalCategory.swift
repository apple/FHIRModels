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
 Example codes for grouping goals for filtering or presentation.
 
 URL: http://hl7.org/fhir/goal-category
 ValueSet: http://hl7.org/fhir/ValueSet/goal-category
 */
public enum GoalCategory: String, FHIRPrimitiveType {
	
	/// Goals related to the consumption of food and/or beverages.
	case dietary = "dietary"
	
	/// Goals related to the personal protection of the subject.
	case safety = "safety"
	
	/// Goals related to the manner in which the subject acts.
	case behavioral = "behavioral"
	
	/// Goals related to the practice of nursing or established by nurses.
	case nursing = "nursing"
	
	/// Goals related to the mobility and motor capability of the subject.
	case physiotherapy = "physiotherapy"
}
