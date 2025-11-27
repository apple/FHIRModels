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
 Codes that describe the state of a device’s association (e.g., implanted, attached, on, off, standby, defective).
 
 URL: http://hl7.org/fhir/CodeSystem/deviceassociation-association-status
 */
public enum DeviceAssociationAssociationStatusCodes: String, FHIRPrimitiveType {
	
	/// The implanted device remains in the patient's body and is no longer in use.
	case abandoned
	
	/// The device is attached to the patient but not implanted in the patient.
	case attached
	
	/// The device is defective.
	case defective
	
	/// The device is no longer implanted in the patient. Note that this is not the value to be used for devices that
	/// have never been implanted. In those cases, no value or a specific value can be used.
	case explanted
	
	/// The device is implanted in the patient.
	case implanted
	
	/// The device is powered off / not operationally active.
	case off
	
	/// The device is powered on / operationally active.
	case on
	
	/// The device is powered and available but not currently in active operation.
	case standby
}
