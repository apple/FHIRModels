//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Aggregation method for a measure (e.g. sum, average, median, minimum, maximum, count)
 
 URL: http://hl7.org/fhir/CodeSystem/measure-aggregate-method
 ValueSet: http://hl7.org/fhir/ValueSet/aggregate-method
 */
public enum MeasureAggregateMethod: String, FHIRPrimitiveType {
	
	/// The measure score is determined by taking the average of the observations derived from the measure population.
	case average
	
	/// The measure score is determined as the number of observations derived from the measure population.
	case count
	
	/// The measure score is determined by taking the maximum of the observations derived from the measure population.
	case maximum
	
	/// The measure score is determined by taking the median of the observations derived from the measure population.
	case median
	
	/// The measure score is determined by taking the minimum of the observations derived from the measure population.
	case minimum
	
	/// The measure score is determined by adding together the observations derived from the measure population.
	case sum
}
