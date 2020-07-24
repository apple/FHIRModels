//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Codes representing the current status of the device - on, off, suspended, etc.
 
 URL: http://hl7.org/fhir/operational-status
 ValueSet: http://hl7.org/fhir/ValueSet/operational-status
 */
public enum DeviceComponentOperationalStatus: String, FHIRPrimitiveType {
	
	/// The device is off.
	case off = "off"
	
	/// The device is fully operational.
	case on = "on"
	
	/// The device is not ready.
	case notReady = "not-ready"
	
	/// The device is ready but not actively operating.
	case standby = "standby"
	
	/// The device transducer is diconnected.
	case transducDiscon = "transduc-discon"
	
	/// The device hardware is disconnected.
	case hwDiscon = "hw-discon"
	
	/// The device was entered in error.
	case enteredInError = "entered-in-error"
}
