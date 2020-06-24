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
 Ability of the primary source to push updates/alerts
 
 URL: http://terminology.hl7.org/CodeSystem/can-push-updates
 ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-can-push-updates
 */
public enum CanPushUpdates: String, FHIRPrimitiveType {
	
	/// yes
	case yes = "yes"
	
	/// no
	case no = "no"
	
	/// undetermined
	case undetermined = "undetermined"
}
