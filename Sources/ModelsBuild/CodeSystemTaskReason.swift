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
 The reason for the task being performed.
 
 URL: http://hl7.org/fhir/task-reason
 ValueSet: http://hl7.org/fhir/ValueSet/task-reason
 */
public enum TaskReason: String, FHIRPrimitiveType {
	
	/// The task is requesting a patient to be admitted.
	case admittance
	
	/// The task is representing an authorization of service.
	case authorization
	
	/// The task is requesting a cancellation.
	case cancellation
	
	/// The task is requesting fulfullment.
	case fulfillment
	
	/// The task is requesting a merge.
	case merging
}
