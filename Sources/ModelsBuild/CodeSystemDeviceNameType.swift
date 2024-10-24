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
 The type of name the device is referred by.
 
 URL: http://hl7.org/fhir/device-nametype
 ValueSet: http://hl7.org/fhir/ValueSet/device-nametype
 */
public enum DeviceNameType: String, FHIRPrimitiveType {
	
	/// the term used by the patient associated with the device when describing the device, for example 'knee implant',
	/// when documented as a self-reported device.
	case patientReportedName = "patient-reported-name"
	
	/// The term assigned to a device by the entity that may be registered or submitted to a jurisdiction, certification
	/// body, or its databases. This may be considered the manufacturer assigned name (e.g., brand name assigned by the
	/// labeler or manufacturer in US, or device name assigned by the manufacturer in EU) and may also be synonymous
	/// with proprietary name or trade name of the device.
	case registeredName = "registered-name"
	
	/// The term that generically describes the device by a name as assigned by the manufacturer that is recognized by
	/// lay person.  This common or generic name may be printed on the package it came in or some combination of that
	/// name with the model number, serial number, or other attribute that makes the name easy to understand for the
	/// user of that device. It is often exposed in communicating devices transport protocols. It is provided to help
	/// users identify the device when reported in discovery operations.
	case userFriendlyName = "user-friendly-name"
}
