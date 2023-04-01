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
 The free/busy status of the slot.
 
 URL: http://hl7.org/fhir/slotstatus
 ValueSet: http://hl7.org/fhir/ValueSet/slotstatus
 */
public enum SlotStatus: String, FHIRPrimitiveType {
	
	/// Indicates that the time interval is busy because one  or more events have been scheduled for that interval.
	case busy
	
	/// Indicates that the time interval is busy because one or more events have been tentatively scheduled for that
	/// interval.
	case busyTentative = "busy-tentative"
	
	/// Indicates that the time interval is busy and that the interval cannot be scheduled.
	case busyUnavailable = "busy-unavailable"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// Indicates that the time interval is free for scheduling.
	case free
}
