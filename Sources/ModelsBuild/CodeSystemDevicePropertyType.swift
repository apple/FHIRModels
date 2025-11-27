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
 The fixed characteristics or conditions of the device. These codes are for example purposes only.
 
 URL: http://hl7.org/fhir/device-property-type
 */
public enum DevicePropertyType: String, FHIRPrimitiveType {
	
	/// Describes the range of colors that may be displayed or expressed on a device.
	case color
	
	/// Describes the substance used in the construction of the device.
	case material
	
	/// Describes the specific dimensions or the measurement of a device.
	case size
	
	/// Describes the specific environmental factors needed for the device.
	case storage
}
