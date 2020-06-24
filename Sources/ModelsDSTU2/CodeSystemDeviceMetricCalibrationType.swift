//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Describes the type of a metric calibration.
 
 URL: http://hl7.org/fhir/metric-calibration-type
 ValueSet: http://hl7.org/fhir/ValueSet/metric-calibration-type
 */
public enum DeviceMetricCalibrationType: String, FHIRPrimitiveType {
	
	/// TODO
	case unspecified = "unspecified"
	
	/// TODO
	case offset = "offset"
	
	/// TODO
	case gain = "gain"
	
	/// TODO
	case twoPoint = "two-point"
}
