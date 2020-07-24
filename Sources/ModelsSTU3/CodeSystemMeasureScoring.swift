//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The scoring type of the measure
 
 URL: http://hl7.org/fhir/measure-scoring
 ValueSet: http://hl7.org/fhir/ValueSet/measure-scoring
 */
public enum MeasureScoring: String, FHIRPrimitiveType {
	
	/// The measure score is defined using a proportion
	case proportion = "proportion"
	
	/// The measure score is defined using a ratio
	case ratio = "ratio"
	
	/// The score is defined by a calculation of some quantity
	case continuousVariable = "continuous-variable"
	
	/// The measure is a cohort definition
	case cohort = "cohort"
}
