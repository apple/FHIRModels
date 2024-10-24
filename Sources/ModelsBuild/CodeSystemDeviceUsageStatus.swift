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
 A coded concept indicating the current status of the Device Usage.
 
 URL: http://hl7.org/fhir/deviceusage-status
 ValueSet: http://hl7.org/fhir/ValueSet/deviceusage-status
 */
public enum DeviceUsageStatus: String, FHIRPrimitiveType {
	
	/// The device is still being used.
	case active
	
	/// The device is no longer being used.
	case completed
	
	/// The statement was recorded incorrectly.
	case enteredInError = "entered-in-error"
	
	/// The device may be used at some time in the future.
	case intended
	
	/// The device was not used.
	case notDone = "not-done"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
	/// called "suspended".
	case onHold = "on-hold"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred.
	case stopped
}
