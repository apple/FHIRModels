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
 Describes the Presence of a DeviceAlert.
 
 URL: http://hl7.org/fhir/devicealert-presence
 ValueSet: http://hl7.org/fhir/ValueSet/devicealert-presence
 */
public enum DeviceAlertPresence: String, FHIRPrimitiveType {
	
	/// The signal is no longer annunciated having been stopped by deliberate operator action although the alert
	/// condition is still present
	case ack
	
	/// The signal is annunciated after the alert condition is no longer present, until it is stopped by deliberate
	/// operator action
	case latched
	
	/// The signal is not being annunciated and the alert condition is no longer present
	case off
	
	/// The signal is annunciated due to the presence of the alert condition
	case on
}
