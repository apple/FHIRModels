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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support describing the status of the patient relative to a recommended dose. This value set is
 provided as a suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-recommendation-status
 */
public enum ImmunizationRecommendationStatusCodes: String, FHIRPrimitiveType {
	
	/// The patient is fully protected and no further doses are recommended.
	case complete
	
	/// The patient is contraindicated for futher doses.
	case contraindicated
	
	/// The patient is due for their next vaccination.
	case due
	
	/// The patient is immune to the target disease and further immunization against the disease is not likely to
	/// provide benefit.
	case immune
	
	/// The patient is considered overdue for their next vaccination.
	case overdue
}
