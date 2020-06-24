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
 Describes the progression, or lack thereof, towards the goal against the target.
 
 URL: http://terminology.hl7.org/CodeSystem/goal-achievement
 ValueSet: http://hl7.org/fhir/ValueSet/goal-achievement
 */
public enum GoalAchievementStatus: String, FHIRPrimitiveType {
	
	/// The goal is being sought but has not yet been reached. (Also applies if the goal was reached in the past but
	/// there has been regression and the goal is again being sought).
	case inProgress = "in-progress"
	
	/// The goal is being sought, and is progressing.
	case improving = "improving"
	
	/// The goal is being sought, but is regressing.
	case worsening = "worsening"
	
	/// The goal is being sought, but the trend is flat.
	case noChange = "no-change"
	
	/// The goal has been met.
	case achieved = "achieved"
	
	/// The goal has been met, but ongoing activity is needed to sustain the goal objective.
	case sustaining = "sustaining"
	
	/// The goal has not been met and there might or might not have been progress towards target.
	case notAchieved = "not-achieved"
	
	/// The goal has not been met and little to no progress towards target.
	case noProgress = "no-progress"
	
	/// The goal is not possible to be met.
	case notAttainable = "not-attainable"
}
