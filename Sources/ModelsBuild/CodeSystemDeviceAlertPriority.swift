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
 Describes the priority of a DeviceAlert.
 
 URL: http://hl7.org/fhir/devicealert-priority
 ValueSet: http://hl7.org/fhir/ValueSet/devicealert-priority
 */
public enum DeviceAlertPriority: String, FHIRPrimitiveType {
	
	/// The alert is about a potentially life-threatening condition that should be addressed immediately.
	case high
	
	/// The alert is about a condition that does not need addressing.
	case info
	
	/// The alert is about a condition that should be addressed.
	case low
	
	/// The alert is about a significant condition that should be addressed promptly.
	case medium
}
