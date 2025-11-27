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
 A rule, such as a format or other expectation, for the data values.
 
 URL: http://hl7.org/fhir/evidence-variable-constraint
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-variable-constraint
 */
public enum EvidenceVariableConstraintRule: String, FHIRPrimitiveType {
	
	/// String values that are restricted to only numbers and letters [A-Za-z0-9].
	case alphanumericOnly = "alphanumeric-only"
	
	/// String values that are restricted to only numbers, letters, and spaces [A-Za-z0-9\s].
	case alphanumericSpaceOnly = "alphanumeric-space-only"
	
	/// Numeric value between 0 and 1, inclusive.
	case rangeZeroToOne = "range-zero-to-one"
}
