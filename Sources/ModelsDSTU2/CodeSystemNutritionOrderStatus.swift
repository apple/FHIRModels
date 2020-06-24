//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Codes specifying the state of the request. Describes the lifecycle of the nutrition order.
 
 URL: http://hl7.org/fhir/nutrition-order-status
 ValueSet: http://hl7.org/fhir/ValueSet/nutrition-order-status
 */
public enum NutritionOrderStatus: String, FHIRPrimitiveType {
	
	/// The request has been proposed.
	case proposed = "proposed"
	
	/// The request is in preliminary form prior to being sent.
	case draft = "draft"
	
	/// The request has been planned.
	case planned = "planned"
	
	/// The request has been placed.
	case requested = "requested"
	
	/// The request is 'actionable', but not all actions that are implied by it have occurred yet.
	case active = "active"
	
	/// Actions implied by the request have been temporarily halted, but are expected to continue later. May also be
	/// called "suspended".
	case onHold = "on-hold"
	
	/// All actions that are implied by the order have occurred and no continuation is planned (this will rarely be made
	/// explicit).
	case completed = "completed"
	
	/// The request has been withdrawn and is no longer actionable.
	case cancelled = "cancelled"
}
