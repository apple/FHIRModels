//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Possible values for the workflow status of the comment or assessment, typically used to coordinate workflow around the
 process of accepting and rejecting changes and comments on the artifact.
 
 URL: http://hl7.org/fhir/artifactassessment-workflow-status
 ValueSet: http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status
 */
public enum ArtifactAssessmentWorkflowStatus: String, FHIRPrimitiveType {
	
	/// The comment is resolved and any necessary changes have been applied
	case applied
	
	/// The comment is acceptable, but resolution of the comment and application of any associated changes have been
	/// deferred
	case deferred
	
	/// The comment is a duplicate of another comment already received
	case duplicate
	
	/// The assessment was entered in error
	case enteredInError = "entered-in-error"
	
	/// The necessary changes to the artifact have been published in a new version of the artifact
	case published
	
	/// The comment has been resolved and changes are required to address the comment
	case resolvedChangeRequired = "resolved-change-required"
	
	/// The comment has been resolved and no changes resulted from the resolution
	case resolvedNoChange = "resolved-no-change"
	
	/// The comment has been submitted, but the responsible party has not yet been determined, or the responsible party
	/// has not yet determined the next steps to be taken.
	case submitted
	
	/// The comment has been triaged, meaning the responsible party has been determined and next steps have been
	/// identified to address the comment.
	case triaged
	
	/// The comment is waiting for input from a specific party before next steps can be taken.
	case waitingForInput = "waiting-for-input"
}
