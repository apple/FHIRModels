//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 
 URL: http://terminology.hl7.org/CodeSystem/testscript-operation-codes
 ValueSet: http://hl7.org/fhir/ValueSet/testscript-operation-codes
 */
public enum TestScriptOperationCode: String, FHIRPrimitiveType {
	
	/// Read the current state of the resource.
	case read = "read"
	
	/// Read the state of a specific version of the resource.
	case vread = "vread"
	
	/// Update an existing resource by its id.
	case update = "update"
	
	/// Update an existing resource by its id (or create it if it is new).
	case updateCreate = "updateCreate"
	
	/// Patch an existing resource by its id.
	case patch = "patch"
	
	/// Delete a resource.
	case delete = "delete"
	
	/// Conditionally delete a single resource based on search parameters.
	case deleteCondSingle = "deleteCondSingle"
	
	/// Conditionally delete one or more resources based on search parameters.
	case deleteCondMultiple = "deleteCondMultiple"
	
	/// Retrieve the change history for a particular resource or resource type.
	case history = "history"
	
	/// Create a new resource with a server assigned id.
	case create = "create"
	
	/// Search based on some filter criteria.
	case search = "search"
	
	/// Update, create or delete a set of resources as independent actions.
	case batch = "batch"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction = "transaction"
	
	/// Get a capability statement for the system.
	case capabilities = "capabilities"
	
	/// Realizes an ActivityDefinition in a specific context
	case apply = "apply"
	
	/// Closure Table Maintenance
	case closure = "closure"
	
	/// Finding Codes based on supplied properties
	case findMatches = "find-matches"
	
	/// Compare two systems CapabilityStatements
	case conforms = "conforms"
	
	/// Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single
	/// module definition
	case dataRequirements = "data-requirements"
	
	/// Generate a Document
	case document = "document"
	
	/// Request clinical decision support guidance based on a specific decision support module
	case evaluate = "evaluate"
	
	/// Invoke an eMeasure and obtain the results
	case evaluateMeasure = "evaluate-measure"
	
	/// Return all the related information as described in the Encounter or Patient
	case everything = "everything"
	
	/// Value Set Expansion
	case expand = "expand"
	
	/// Find a functional list
	case find = "find"
	
	/// Invoke a GraphQL query
	case graphql = "graphql"
	
	/// Test if a server implements a client's required operations
	case implements = "implements"
	
	/// Last N Observations Query
	case lastn = "lastn"
	
	/// Concept Look Up and Decomposition
	case lookup = "lookup"
	
	/// Find patient matches using MPI based logic
	case match = "match"
	
	/// Access a list of profiles, tags, and security labels
	case meta = "meta"
	
	/// Add profiles, tags, and security labels to a resource
	case metaAdd = "meta-add"
	
	/// Delete profiles, tags, and security labels for a resource
	case metaDelete = "meta-delete"
	
	/// Populate Questionnaire
	case populate = "populate"
	
	/// Generate HTML for Questionnaire
	case populatehtml = "populatehtml"
	
	/// Generate a link to a Questionnaire completion webpage
	case populatelink = "populatelink"
	
	/// Process a message according to the defined event
	case processMessage = "process-message"
	
	/// Build Questionnaire
	case questionnaire = "questionnaire"
	
	/// Observation Statistics
	case stats = "stats"
	
	/// Fetch a subset of the CapabilityStatement resource
	case subset = "subset"
	
	/// CodeSystem Subsumption Testing
	case subsumes = "subsumes"
	
	/// Model Instance Transformation
	case transform = "transform"
	
	/// Concept Translation
	case translate = "translate"
	
	/// Validate a resource
	case validate = "validate"
	
	/// ValueSet based Validation
	case validateCode = "validate-code"
}
