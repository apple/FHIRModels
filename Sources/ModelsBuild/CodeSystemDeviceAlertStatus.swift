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
 Describes the status of a DeviceAlert.
 
 URL: http://hl7.org/fhir/devicealert-status
 ValueSet: http://hl7.org/fhir/ValueSet/devicealert-status
 */
public enum DeviceAlertStatus: String, FHIRPrimitiveType {
	
	/// The alert condition is not present, and all signals are off
	case completed
	
	/// This alert record was created in error and is not valid.
	case enteredInError = "entered-in-error"
	
	/// The alert condition is present, or any signal from a previously present condition is not off
	case inProgress = "in-progress"
	
	/// The status of the alert is not known.
	case unknown
}
