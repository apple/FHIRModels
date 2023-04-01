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
 This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.
 
 URL: http://terminology.hl7.org/CodeSystem/testscript-operation-codes
 */
public enum TestScriptOperationCodes: String, FHIRPrimitiveType {
	
	/// Realizes an ActivityDefinition in a specific context
	case apply
	
	/// Update, create or delete a set of resources as independent actions.
	case batch
	
	/// Get a capability statement for the system.
	case capabilities
	
	/// Closure Table Maintenance
	case closure
	
	/// Compare two systems CapabilityStatements
	case conforms
	
	/// Create a new resource with a server assigned id.
	case create
	
	/// Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single
	/// module definition
	case dataRequirements = "data-requirements"
	
	/// Delete a resource.
	case delete
	
	/// Conditionally delete one or more resources based on search parameters.
	case deleteCondMultiple
	
	/// Conditionally delete a single resource based on search parameters.
	case deleteCondSingle
	
	/// Generate a Document
	case document
	
	/// Request clinical decision support guidance based on a specific decision support module
	case evaluate
	
	/// Invoke an eMeasure and obtain the results
	case evaluateMeasure = "evaluate-measure"
	
	/// Return all the related information as described in the Encounter or Patient
	case everything
	
	/// Value Set Expansion
	case expand
	
	/// Find a functional list
	case find
	
	/// Finding Codes based on supplied properties
	case findMatches = "find-matches"
	
	/// Invoke a GraphQL query
	case graphql
	
	/// Retrieve the change history for a particular resource or resource type.
	case history
	
	/// Test if a server implements a client's required operations
	case implements
	
	/// Last N Observations Query
	case lastn
	
	/// Concept Look Up and Decomposition
	case lookup
	
	/// Find patient matches using MPI based logic
	case match
	
	/// Access a list of profiles, tags, and security labels
	case meta
	
	/// Add profiles, tags, and security labels to a resource
	case metaAdd = "meta-add"
	
	/// Delete profiles, tags, and security labels for a resource
	case metaDelete = "meta-delete"
	
	/// Patch an existing resource by its id.
	case patch
	
	/// Populate Questionnaire
	case populate
	
	/// Generate HTML for Questionnaire
	case populatehtml
	
	/// Generate a link to a Questionnaire completion webpage
	case populatelink
	
	/// Process a message according to the defined event
	case processMessage = "process-message"
	
	/// Build Questionnaire
	case questionnaire
	
	/// Read the current state of the resource.
	case read
	
	/// Search based on some filter criteria.
	case search
	
	/// Observation Statistics
	case stats
	
	/// Fetch a subset of the CapabilityStatement resource
	case subset
	
	/// CodeSystem Subsumption Testing
	case subsumes
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction
	
	/// Model Instance Transformation
	case transform
	
	/// Concept Translation
	case translate
	
	/// Update an existing resource by its id.
	case update
	
	/// Update an existing resource by its id (or create it if it is new).
	case updateCreate
	
	/// Validate a resource
	case validate
	
	/// ValueSet based Validation
	case validateCode = "validate-code"
	
	/// Read the state of a specific version of the resource.
	case vread
}
