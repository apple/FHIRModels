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
 The set of interactions defined by the RESTful part of the FHIR specification.
 
 URL: http://hl7.org/fhir/restful-interaction
 ValueSet: http://hl7.org/fhir/ValueSet/restful-interaction
 */
public enum FHIRRestfulInteractions: String, FHIRPrimitiveType {
	
	/// perform a set of a separate interactions in a single http operation
	case batch
	
	/// Get a Capability Statement for the system.
	case capabilities
	
	/// Create a new resource with a server assigned id.
	case create
	
	/// Create a new resource with a server assigned id if an equivalent resource does not already exist.
	case createConditional = "create-conditional"
	
	/// Delete a resource.
	case delete
	
	/// Delete one or more resources based on some identification criteria.
	case deleteConditionalMultiple = "delete-conditional-multiple"
	
	/// Delete a single resource based on some identification criteria.
	case deleteConditionalSingle = "delete-conditional-single"
	
	/// Delete all historical versions of a resource.
	case deleteHistory = "delete-history"
	
	/// Delete a specific version of a resource.
	case deleteHistoryVersion = "delete-history-version"
	
	/// Retrieve the change history for a particular resource, type of resource, or the entire system.
	case history
	
	/// Retrieve the change history for a particular resource.
	case historyInstance = "history-instance"
	
	/// Retrieve the change history for all resources on a system.
	case historySystem = "history-system"
	
	/// Retrieve the change history for all resources of a particular type.
	case historyType = "history-type"
	
	/// Perform an operation as defined by an OperationDefinition.
	case operation
	
	/// Update an existing resource by posting a set of changes to it.
	case patch
	
	/// Update an existing resource, based on some identification criteria, by posting a set of changes to it.
	case patchConditional = "patch-conditional"
	
	/// Read the current state of the resource.
	case read
	
	/// Search a resource type or all resources based on some filter criteria.
	case search
	
	/// Search resources in a compartment based on some filter criteria.
	case searchCompartment = "search-compartment"
	
	/// Search all resources based on some filter criteria.
	case searchSystem = "search-system"
	
	/// Search all resources of the specified type based on some filter criteria.
	case searchType = "search-type"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction
	
	/// Update an existing resource by its id (or create it if it is new).
	case update
	
	/// Update an existing resource based on some identification criteria (or create it if it is new).
	case updateConditional = "update-conditional"
	
	/// Read the state of a specific version of the resource.
	case vread
}
