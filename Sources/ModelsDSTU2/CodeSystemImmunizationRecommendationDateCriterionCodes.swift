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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support the medication process, in particular the process and reasons for dispensing. This
 value set is provided as a suggestive example.
 
 URL: http://hl7.org/fhir/immunization-recommendation-date-criterion
 ValueSet: http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion
 */
public enum ImmunizationRecommendationDateCriterionCodes: String, FHIRPrimitiveType {
	
	/// Date the next dose is considered due.
	case due = "due"
	
	/// At the recommended date.
	case recommended = "recommended"
	
	/// As early as possible.
	case earliest = "earliest"
	
	/// Date the next dose is considered overdue.
	case overdue = "overdue"
	
	/// The latest date the next dose is to be given.
	case latest = "latest"
}
