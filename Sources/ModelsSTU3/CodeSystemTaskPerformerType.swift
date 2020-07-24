//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The type(s) of task performers allowed
 
 URL: http://hl7.org/fhir/task-performer-type
 ValueSet: http://hl7.org/fhir/ValueSet/task-performer-type
 */
public enum TaskPerformerType: String, FHIRPrimitiveType {
	
	/// A workflow participant that requests services.
	case requester = "requester"
	
	/// A workflow participant that dispatches services (assigns another task to a participant).
	case dispatcher = "dispatcher"
	
	/// A workflow participant that schedules (dispatches and sets the time or date for performance of) services.
	case scheduler = "scheduler"
	
	/// A workflow participant that performs services.
	case performer = "performer"
	
	/// A workflow participant that monitors task activity.
	case monitor = "monitor"
	
	/// A workflow participant that manages task activity.
	case manager = "manager"
	
	/// A workflow participant that acquires resources (specimens, images, etc) necessary to perform the task.
	case acquirer = "acquirer"
	
	/// A workflow participant that reviews task inputs or outputs.
	case reviewer = "reviewer"
}
