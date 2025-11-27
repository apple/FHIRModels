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
 The availability of the means from which a metric state/value is derived.
 
 URL: http://hl7.org/fhir/metric-availability
 ValueSet: http://hl7.org/fhir/ValueSet/metric-availability
 */
public enum DeviceMetricAvailability: String, FHIRPrimitiveType {
	
	/// Without break, cessation, or interruption; without intervening time.
	case cont
	
	/// Stopping or ceasing for a time; alternately ceasing and beginning again.
	case intr
	
	/// The availability of the means of derivation of the metric is unknown.
	case unknown
}
