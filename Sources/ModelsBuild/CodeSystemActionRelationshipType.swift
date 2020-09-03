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
 Defines the types of relationships between actions.
 
 URL: http://hl7.org/fhir/action-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/action-relationship-type
 */
public enum ActionRelationshipType: String, FHIRPrimitiveType {
	
	/// The action must be performed before the start of the related action.
	case beforeStart = "before-start"
	
	/// The action must be performed before the related action.
	case before = "before"
	
	/// The action must be performed before the end of the related action.
	case beforeEnd = "before-end"
	
	/// The action must be performed concurrent with the start of the related action.
	case concurrentWithStart = "concurrent-with-start"
	
	/// The action must be performed concurrent with the related action.
	case concurrent = "concurrent"
	
	/// The action must be performed concurrent with the end of the related action.
	case concurrentWithEnd = "concurrent-with-end"
	
	/// The action must be performed after the start of the related action.
	case afterStart = "after-start"
	
	/// The action must be performed after the related action.
	case after = "after"
	
	/// The action must be performed after the end of the related action.
	case afterEnd = "after-end"
}
