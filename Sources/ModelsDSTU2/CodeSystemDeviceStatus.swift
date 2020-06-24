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
 The availability status of the device.
 
 URL: http://hl7.org/fhir/devicestatus
 ValueSet: http://hl7.org/fhir/ValueSet/devicestatus
 */
public enum DeviceStatus: String, FHIRPrimitiveType {
	
	/// The Device is available for use.
	case available = "available"
	
	/// The Device is no longer available for use (e.g. lost, expired, damaged).
	case notAvailable = "not-available"
	
	/// The Device was entered in error and voided.
	case enteredInError = "entered-in-error"
}
