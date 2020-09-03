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
 Distinguishes whether the task is a proposal, plan or full order.
 
 URL: http://hl7.org/fhir/task-intent
 */
public enum TaskIntent: String, FHIRPrimitiveType {
	
	/// The intent is not known.  When dealing with Task, it's not always known (or relevant) how the task was initiated
	/// - i.e. whether it was proposed, planned, ordered or just done spontaneously.
	case unknown = "unknown"
}
