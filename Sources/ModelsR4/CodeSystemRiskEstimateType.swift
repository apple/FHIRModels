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
 Whether the risk estimate is dichotomous, continuous or qualitative and the specific type of risk estimate (eg
 proportion or median).
 
 URL: http://terminology.hl7.org/CodeSystem/risk-estimate-type
 ValueSet: http://hl7.org/fhir/ValueSet/risk-estimate-type
 */
public enum RiskEstimateType: String, FHIRPrimitiveType {
	
	/// dichotomous measure (present or absent) reported as a ratio compared to the denominator of 1 (A percentage is a
	/// proportion with denominator of 100).
	case proportion = "proportion"
	
	/// A special use case where the proportion is derived from a formula rather than derived from summary evidence.
	case derivedProportion = "derivedProportion"
	
	/// continuous numerical measure reported as an average.
	case mean = "mean"
	
	/// continuous numerical measure reported as the middle of the range.
	case median = "median"
	
	/// descriptive measure reported as total number of items.
	case count = "count"
	
	/// descriptive measure reported as narrative.
	case descriptive = "descriptive"
}
