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
 Codes indicating whether the goal has been accepted by a stakeholder.
 
 URL: http://terminology.hl7.org/CodeSystem/goal-acceptance-status
 ValueSet: http://hl7.org/fhir/ValueSet/goal-acceptance-status
 */
public enum GoalAcceptanceStatus: String, FHIRPrimitiveType {
	
	/// Stakeholder supports pursuit of the goal.
	case agree = "agree"
	
	/// Stakeholder is not in support of the pursuit of the goal.
	case disagree = "disagree"
	
	/// Stakeholder has not yet made a decision on whether they support the goal.
	case pending = "pending"
}
