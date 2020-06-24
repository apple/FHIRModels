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
 Indicates the level of importance associated with reaching or sustaining a goal.
 
 URL: http://terminology.hl7.org/CodeSystem/goal-priority
 ValueSet: http://hl7.org/fhir/ValueSet/goal-priority
 */
public enum GoalPriority: String, FHIRPrimitiveType {
	
	/// Indicates that the goal is of considerable importance and should be a primary focus of care delivery.
	case highPriority = "high-priority"
	
	/// Indicates that the goal has a reasonable degree of importance and that concrete action should be taken towards
	/// the goal.  Attainment is not as critical as high-priority goals.
	case mediumPriority = "medium-priority"
	
	/// The goal is desirable but is not sufficiently important to devote significant resources to.  Achievement of the
	/// goal may be sought when incidental to achieving other goals.
	case lowPriority = "low-priority"
}
