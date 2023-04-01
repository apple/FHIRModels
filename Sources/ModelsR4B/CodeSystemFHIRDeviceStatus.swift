//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 The availability status of the device.
 
 URL: http://hl7.org/fhir/device-status
 ValueSet: http://hl7.org/fhir/ValueSet/device-status
 */
public enum FHIRDeviceStatus: String, FHIRPrimitiveType {
	
	/// The device is available for use.  Note: For *implanted devices*  this means that the device is implanted in the
	/// patient.
	case active
	
	/// The device was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// The device is no longer available for use (e.g. lost, expired, damaged).  Note: For *implanted devices*  this
	/// means that the device has been removed from the patient.
	case inactive
	
	/// The status of the device has not been determined.
	case unknown
}
