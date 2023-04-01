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
 The availability status reason of the device.
 
 URL: http://terminology.hl7.org/CodeSystem/device-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/device-status-reason
 */
public enum FHIRDeviceStatusReason: String, FHIRPrimitiveType {
	
	/// The device hardware is disconnected.
	case hwDiscon = "hw-discon"
	
	/// The device is not ready.
	case notReady = "not-ready"
	
	/// The device is off.
	case off
	
	/// The device is offline.
	case offline
	
	/// The device is off.
	case online
	
	/// The device is paused.
	case paused
	
	/// The device is ready but not actively operating.
	case standby
	
	/// The device transducer is disconnected.
	case transducDiscon = "transduc-discon"
}
