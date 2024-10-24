//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 InventoryItem Status Codes
 
 URL: http://hl7.org/fhir/inventoryitem-status
 ValueSet: http://hl7.org/fhir/ValueSet/inventoryitem-status
 */
public enum InventoryItemStatus: String, FHIRPrimitiveType {
	
	/// The item is active and can be referenced.
	case active
	
	/// The item record was entered in error.
	case enteredInError = "entered-in-error"
	
	/// The item is presently inactive - there may be references to it but the item is not expected to be used.
	case inactive
	
	/// The item status has not been determined.
	case unknown
}
