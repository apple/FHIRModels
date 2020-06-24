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
 Whether the effect estimate is an absolute effect estimate (absolute difference) or a relative effect estimate
 (relative difference), and the specific type of effect estimate (eg relative risk or median difference).
 
 URL: http://terminology.hl7.org/CodeSystem/effect-estimate-type
 ValueSet: http://hl7.org/fhir/ValueSet/effect-estimate-type
 */
public enum EffectEstimateType: String, FHIRPrimitiveType {
	
	/// relative risk (a type of relative effect estimate).
	case relativeRR = "relative-RR"
	
	/// odds ratio (a type of relative effect estimate).
	case relativeOR = "relative-OR"
	
	/// hazard ratio (a type of relative effect estimate).
	case relativeHR = "relative-HR"
	
	/// absolute risk difference (a type of absolute effect estimate).
	case absoluteARD = "absolute-ARD"
	
	/// mean difference (a type of absolute effect estimate).
	case absoluteMeanDiff = "absolute-MeanDiff"
	
	/// standardized mean difference (a type of absolute effect estimate).
	case absoluteSMD = "absolute-SMD"
	
	/// median difference (a type of absolute effect estimate).
	case absoluteMedianDiff = "absolute-MedianDiff"
}
