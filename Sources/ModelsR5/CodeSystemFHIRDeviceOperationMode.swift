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
 The operation mode of the device.
 
 URL: http://hl7.org/fhir/device-operation-mode
 ValueSet: http://hl7.org/fhir/ValueSet/device-operation-mode
 */
public enum FHIRDeviceOperationMode: String, FHIRPrimitiveType {
	
	/// The device operates in a mode that is intended for demonstration purposes only. Arbitrary values are generated.
	case demo
	
	/// The device operates in a mode that is intended for preventative and/or scheduled maintenance purposes only.
	case maintenance
	
	/// The device operates in a mode that supports the fulfillment of its clinical functions.
	case normal
	
	/// The device operates in a mode that is intended for correcting a functional problem of the device only. Arbitrary
	/// values may be generated.
	case service
	
	/// The device operates in a test mode that is not intended to be used for production/operational purposes.
	case test
}
