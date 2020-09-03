//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Defines behavior for an action or a group for how many times that item may be repeated.
 
 URL: http://hl7.org/fhir/action-cardinality-behavior
 ValueSet: http://hl7.org/fhir/ValueSet/action-cardinality-behavior
 */
public enum ActionCardinalityBehavior: String, FHIRPrimitiveType {
	
	/// The action may only be selected one time.
	case single = "single"
	
	/// The action may be selected multiple times.
	case multiple = "multiple"
}
