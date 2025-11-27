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
 GoalAcceptanceStatus
 
 URL: http://hl7.org/fhir/goal-accept-status
 */
public enum GoalAcceptStatus: String, FHIRPrimitiveType {
	
	/// Stakeholder supports pursuit of the goal.
	case agree
	
	/// Stakeholder is not in support of the pursuit of the goal.
	case disagree
	
	/// Stakeholder has not yet made a decision on whether they support the goal.
	case pending
}
