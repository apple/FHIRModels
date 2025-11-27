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
 Describes the status of the DeviceMetric.
 
 URL: http://hl7.org/fhir/metric-status
 ValueSet: http://hl7.org/fhir/ValueSet/metric-status
 */
public enum DeviceMetricStatus: String, FHIRPrimitiveType {
	
	/// The device metric record is active.
	case active
	
	/// The device metric record is not valid and should not be considered.
	case enteredInError = "entered-in-error"
	
	/// The device metric record is not active, e.g., it represents a historical record.
	case inactive
	
	/// The device metric record's status is currently unknown.
	case unknown
}
