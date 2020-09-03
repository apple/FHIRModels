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
 Observation values that indicate what change in a measurement value or score is indicative of an improvement in the
 measured item or scored issue.
 
 URL: http://terminology.hl7.org/CodeSystem/measure-improvement-notation
 ValueSet: http://hl7.org/fhir/ValueSet/measure-improvement-notation
 */
public enum MeasureImprovementNotation: String, FHIRPrimitiveType {
	
	/// Improvement is indicated as an increase in the score or measurement (e.g. Higher score indicates better
	/// quality).
	case increase = "increase"
	
	/// Improvement is indicated as a decrease in the score or measurement (e.g. Lower score indicates better quality).
	case decrease = "decrease"
}
