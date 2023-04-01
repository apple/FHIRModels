//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
//  Copyright 2023 Apple Inc.
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
 The method used to define, describe, or determine a characteristic value.
 
 URL: http://hl7.org/fhir/definition-method
 ValueSet: http://hl7.org/fhir/ValueSet/definition-method
 */
public enum DefinitionMethod: String, FHIRPrimitiveType {
	
	/// Aggregated using mean of observed values.
	case mean
	
	/// Aggregated using mean of means (e.g. study mean values).
	case meanOfMean = "mean-of-mean"
	
	/// Aggregated using mean of medians (e.g. study median values).
	case meanOfMedian = "mean-of-median"
	
	/// Aggregated using median of observed values.
	case median
	
	/// Aggregated using median of means (e.g. study mean values).
	case medianOfMean = "median-of-mean"
	
	/// Aggregated using median of medians (e.g. study median values).
	case medianOfMedian = "median-of-median"
	
	/// Any non-systematic method for determining whether or not adverse events have occurred, such as self-reporting by
	/// participants or occasional assessment/testing
	case nonSystematicAssessment = "non-systematic-assessment"
	
	/// Any method of routinely determining whether or not specific outcomes (e.g. adverse events) have occurred, for
	/// example through a standard questionnaire, regular investigator assessment, regular laboratory testing, or other
	/// method
	case systematicAssessment = "systematic-assessment"
}
