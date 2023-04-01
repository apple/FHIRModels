//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
	
	/// Delete a resource.
	case delete
	
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
	
	/// Read the current state of the resource.
	case read
	
	/// Search a resource type or all resources based on some filter criteria.
	case search
	
	/// Search all resources based on some filter criteria.
	case searchSystem = "search-system"
	
	/// Search all resources of the specified type based on some filter criteria.
	case searchType = "search-type"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction
	
	/// Update an existing resource by its id (or create it if it is new).
	case update
	
	/// Read the state of a specific version of the resource.
	case vread
}
