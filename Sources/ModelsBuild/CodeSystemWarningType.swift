//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Classification of warning type.
 
 URL: http://hl7.org/fhir/warning-type
 ValueSet: http://hl7.org/fhir/ValueSet/warning-type
 */
public enum WarningType: String, FHIRPrimitiveType {
	
	/// Get medical advice/attention.
	case P313
	
	/// Get medical advice/attention if you feel unwell.
	case P314
	
	/// Get immediate medical advice/attention.
	case P315
	
	/// Specific treatment is urgent (see ... on this label).
	case P320
	
	/// Specific treatment (see ... on this label).
	case P321
	
	/// Specific measures (see ... on this label).
	case P322
	
	/// Rinse mouth.
	case P330
	
	/// Do NOT induce vomiting.
	case P331
	
	/// Remove/Take off immediately all contaminated clothing.
	case P361
	
	/// Wash contaminated clothing before reuse.
	case P363
}
