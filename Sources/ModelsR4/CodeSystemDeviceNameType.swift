//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
	
	/// User Friendly name.
	case userFriendlyName = "user-friendly-name"
	
	/// Patient Reported name.
	case patientReportedName = "patient-reported-name"
	
	/// Manufacturer name.
	case manufacturerName = "manufacturer-name"
	
	/// Model name.
	case modelName = "model-name"
	
	/// other.
	case other = "other"
}
