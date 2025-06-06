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
 A coded concept indicating the usage of the device.
 
 URL: http://hl7.org/fhir/deviceusage-adherence-code
 ValueSet: http://hl7.org/fhir/ValueSet/deviceusage-adherence-code
 */
public enum DeviceUsageAdherenceCode: String, FHIRPrimitiveType {
	
	/// The device is always used.
	case always
	
	/// The device is never used.
	case never
	
	/// The device is sometimes used.
	case sometimes
}
