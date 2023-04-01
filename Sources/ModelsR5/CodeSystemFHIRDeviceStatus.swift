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
 The status of the Device record.
 
 URL: http://hl7.org/fhir/device-status
 ValueSet: http://hl7.org/fhir/ValueSet/device-status
 */
public enum FHIRDeviceStatus: String, FHIRPrimitiveType {
	
	/// The device record is current and is appropriate for reference in new instances.
	case active
	
	/// The device record is not current and is not appropriate for reference in new instances.
	case enteredInError = "entered-in-error"
	
	/// The device record is not current and is not appropriate for reference in new instances.
	case inactive
}
