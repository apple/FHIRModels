//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Additional Binding Purpose
 
 URL: http://hl7.org/fhir/CodeSystem/dose-limit-scope
 ValueSet: http://hl7.org/fhir/ValueSet/dose-limit-scope
 */
public enum DoseLimitScopeCodes: String, FHIRPrimitiveType {
	
	/// Maximum Dosage for a single dose
	case administration
	
	/// Maximum quantity for the dosage (depends on scope whether it's the course, a step, or a choice)
	case dosage
	
	/// Maximum amount of lifetime exposure across all dosages ever
	case lifetime
	
	/// Maximum dosage per specified period
	case period
}
