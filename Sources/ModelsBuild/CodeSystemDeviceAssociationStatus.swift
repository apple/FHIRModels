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
 DeviceAssociation Status Codes
 
 URL: http://hl7.org/fhir/deviceassociation-status
 ValueSet: http://hl7.org/fhir/ValueSet/deviceassociation-status
 */
public enum DeviceAssociationStatus: String, FHIRPrimitiveType {
	
	/// The device is attached to the patient but not implanted in the patient.
	case attached
	
	/// The association was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// The device is no longer implanted in the patient. Note that this is not the value to be used for devices that
	/// have never been implanted. In those cases, no value or a specific value can be used.
	case explanted
	
	/// The device is implanted in the patient.
	case implanted
	
	/// The association status of the device has not been determined.
	case unknown
}
