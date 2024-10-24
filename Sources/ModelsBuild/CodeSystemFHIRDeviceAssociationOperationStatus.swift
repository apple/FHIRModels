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
 The operational status of the device.
 
 URL: http://hl7.org/fhir/deviceassociation-operationstatus
 ValueSet: http://hl7.org/fhir/ValueSet/deviceassociation-operationstatus
 */
public enum FHIRDeviceAssociationOperationStatus: String, FHIRPrimitiveType {
	
	/// The device is defective or for maintenance and is not available or working.
	case defective
	
	/// The device is inactive, switched off, or deactivated.
	case off
	
	/// The device is working or switched on, i.e. active.
	case on
	
	/// The device is in stand-by mode i.e. not actively working but not powered off.
	case standby
	
	/// The operational status of the device has not been determined.
	case unknown
}
