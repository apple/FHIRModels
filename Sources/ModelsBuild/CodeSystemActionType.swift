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
 The type of action to be performed.
 
 URL: http://terminology.hl7.org/CodeSystem/action-type
 ValueSet: http://hl7.org/fhir/ValueSet/action-type
 */
public enum ActionType: String, FHIRPrimitiveType {
	
	/// The action is to create a new resource.
	case create = "create"
	
	/// The action is to update an existing resource.
	case update = "update"
	
	/// The action is to remove an existing resource.
	case remove = "remove"
	
	/// The action is to fire a specific event.
	case fireEvent = "fire-event"
}
