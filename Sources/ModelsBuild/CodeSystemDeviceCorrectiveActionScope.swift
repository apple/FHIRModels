//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 The type of relation between devices.
 
 URL: http://hl7.org/fhir/device-correctiveactionscope
 ValueSet: http://hl7.org/fhir/ValueSet/device-correctiveactionscope
 */
public enum DeviceCorrectiveActionScope: String, FHIRPrimitiveType {
	
	/// The corrective action was intended for a specific batch of units identified by a lot number.
	case lotNumbers = "lot-numbers"
	
	/// The corrective action was intended for all units of the same model.
	case model
	
	/// The corrective action was intended for an individual unit (or a set of units) individually identified by serial
	/// number.
	case serialNumbers = "serial-numbers"
}
