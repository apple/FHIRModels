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
 Defines the kinds of conditions that can appear on actions.
 
 URL: http://hl7.org/fhir/action-condition-kind
 ValueSet: http://hl7.org/fhir/ValueSet/action-condition-kind
 */
public enum ActionConditionKind: String, FHIRPrimitiveType {
	
	/// The condition describes whether or not a given action is applicable.
	case applicability = "applicability"
	
	/// The condition is a starting condition for the action.
	case start = "start"
	
	/// The condition is a stop, or exit condition for the action.
	case stop = "stop"
}
