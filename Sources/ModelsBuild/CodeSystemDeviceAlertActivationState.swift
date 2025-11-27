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
 Describes the activation state of a DeviceAlert.
 
 URL: http://hl7.org/fhir/devicealert-activationState
 ValueSet: http://hl7.org/fhir/ValueSet/devicealert-activationState
 */
public enum DeviceAlertActivationState: String, FHIRPrimitiveType {
	
	/// The intended system function (e.g., detecting or signaling) is deactivated
	case off
	
	/// The intended system function (e.g., detecting or signaling) is activated
	case on
	
	/// The intended system function (e.g., detecting or signaling) is temporarily suppressed
	case paused
}
