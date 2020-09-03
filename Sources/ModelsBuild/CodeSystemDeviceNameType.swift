//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The type of name the device is referred by.
 
 URL: http://hl7.org/fhir/device-nametype
 ValueSet: http://hl7.org/fhir/ValueSet/device-nametype
 */
public enum DeviceNameType: String, FHIRPrimitiveType {
	
	/// UDI Label name.
	case udiLabelName = "udi-label-name"
	
	/// The 'user friendly name' typically is the name of the device on the package it came in or some combination of
	/// that name with the model number, serial number, or other attribute that makes the name easy to understand for
	/// the user of that device. It is often exposed in communicating devices transport protocols. It is provided to
	/// help users identify the device when reported in discovery operations.
	case userFriendlyName = "user-friendly-name"
	
	/// A name as provided by a patient of the device, for example "knee implant", when documenting, e.g., self-reported
	/// device.
	case patientReportedName = "patient-reported-name"
	
	/// The formal name as provided by the manufacturer of the device.
	case manufacturerName = "manufacturer-name"
	
	/// The name of the model. The manufacturer-name or user-friendly-name may include that as a component.
	case modelName = "model-name"
	
	/// other.
	case other = "other"
}
