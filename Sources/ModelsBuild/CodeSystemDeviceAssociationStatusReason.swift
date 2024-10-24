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
 DeviceAssociation Status Reason Codes
 
 URL: http://hl7.org/fhir/deviceassociation-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/deviceassociation-status-reason
 */
public enum DeviceAssociationStatusReason: String, FHIRPrimitiveType {
	
	/// The device is connected to the patient.
	case attached
	
	/// The device is no longer connected.
	case disconnected
	
	/// The device has failed to work, or continue to function.
	case failed
	
	/// The device was placed in the patient.
	case placed
	
	/// The device was updated with a new device or device part.
	case replaced
}
