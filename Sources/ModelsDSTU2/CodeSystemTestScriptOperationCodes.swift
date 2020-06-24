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
 This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
 
 URL: http://hl7.org/fhir/testscript-operation-codes
 ValueSet: http://hl7.org/fhir/ValueSet/testscript-operation-codes
 */
public enum TestScriptOperationCodes: String, FHIRPrimitiveType {
	
	/// Read the current state of the resource.
	case read = "read"
	
	/// Read the state of a specific version of the resource.
	case vread = "vread"
	
	/// Update an existing resource by its id (or create it if it is new).
	case update = "update"
	
	/// Delete a resource.
	case delete = "delete"
	
	/// Retrieve the update history for a particular resource or resource type.
	case history = "history"
	
	/// Create a new resource with a server assigned id.
	case create = "create"
	
	/// Search based on some filter criteria.
	case search = "search"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction = "transaction"
	
	/// Get a conformance statement for the system.
	case conformance = "conformance"
	
	/// Closure Table Maintenance.
	case closure = "closure"
	
	/// Generate a Document.
	case document = "document"
	
	/// Fetch Encounter/Patient Record.
	case everything = "everything"
	
	/// Value Set Expansion.
	case expand = "expand"
	
	/// Find a functional list.
	case find = "find"
	
	/// Concept Look Up.
	case lookup = "lookup"
	
	/// Access a list of profiles, tags, and security labels.
	case meta = "meta"
	
	/// Add profiles, tags, and security labels to a resource.
	case metaAdd = "meta-add"
	
	/// Delete profiles, tags, and security labels for a resource.
	case metaDelete = "meta-delete"
	
	/// Populate Questionnaire.
	case populate = "populate"
	
	/// Process Message.
	case processMessage = "process-message"
	
	/// Build Questionnaire.
	case questionnaire = "questionnaire"
	
	/// Concept Translation.
	case translate = "translate"
	
	/// Validate a resource.
	case validate = "validate"
	
	/// Value Set based Validation.
	case validateCode = "validate-code"
}
