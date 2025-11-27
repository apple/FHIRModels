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
 The current status reason of the task.
 
 URL: http://hl7.org/fhir/task-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/task-status-reason
 */
public enum TaskStatusReason: String, FHIRPrimitiveType {
	
	/// Something in the environment is preventing task completion.
	case environmentalIssue = "environmental-issue"
	
	/// A piece of equipment necessary for completion of the task is malfunctioning.
	case equipmentIssue = "equipment-issue"
	
	/// Something related to the task was misidentified.
	case misidentified
	
	/// An item nessary for task completion is missing.
	case missing
	
	/// Key personnel necessary for task completion are not present.
	case personnelIssue = "personnel-issue"
}
