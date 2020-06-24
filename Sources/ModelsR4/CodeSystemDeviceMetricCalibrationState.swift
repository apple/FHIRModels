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
 Describes the state of a metric calibration.
 
 URL: http://hl7.org/fhir/metric-calibration-state
 ValueSet: http://hl7.org/fhir/ValueSet/metric-calibration-state
 */
public enum DeviceMetricCalibrationState: String, FHIRPrimitiveType {
	
	/// The metric has not been calibrated.
	case notCalibrated = "not-calibrated"
	
	/// The metric needs to be calibrated.
	case calibrationRequired = "calibration-required"
	
	/// The metric has been calibrated.
	case calibrated = "calibrated"
	
	/// The state of calibration of this metric is unspecified.
	case unspecified = "unspecified"
}
