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
 Describes the manifestation of a DeviceAlert.
 
 URL: http://hl7.org/fhir/devicealert-manifestation
 ValueSet: http://hl7.org/fhir/ValueSet/devicealert-manifestation
 */
public enum DeviceAlertManifestation: String, FHIRPrimitiveType {
	
	/// The signal is annunciated using sound (e.g. a chime)
	case audible
	
	/// The signal is annunciated using a haptic or tactile method (e.g. vibration)
	case haptic
	
	/// The signal is annunciated using light (e.g. an illuminated icon, flashing light, or text message)
	case visual
}
