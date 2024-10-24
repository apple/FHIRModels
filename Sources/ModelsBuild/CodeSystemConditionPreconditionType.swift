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
 Kind of precondition for the condition.
 
 URL: http://hl7.org/fhir/condition-precondition-type
 ValueSet: http://hl7.org/fhir/ValueSet/condition-precondition-type
 */
public enum ConditionPreconditionType: String, FHIRPrimitiveType {
	
	/// The observation is very sensitive for the condition, but may also indicate other conditions.
	case sensitive
	
	/// The observation is very specific for this condition, but not particularly sensitive.
	case specific
}
