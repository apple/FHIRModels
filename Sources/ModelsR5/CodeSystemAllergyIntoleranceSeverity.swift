//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different
 manifestations.
 
 URL: http://hl7.org/fhir/reaction-event-severity
 ValueSet: http://hl7.org/fhir/ValueSet/reaction-event-severity
 */
public enum AllergyIntoleranceSeverity: String, FHIRPrimitiveType {
	
	/// Causes mild physiological effects.
	case mild
	
	/// Causes moderate physiological effects.
	case moderate
	
	/// Causes severe physiological effects.
	case severe
}
