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
 Possible values for the disposition of a comment or change request, typically used for comments and change requests, to
 indicate the disposition of the responsible party towards the changes suggested by the comment or change request.
 
 URL: http://hl7.org/fhir/artifactassessment-disposition
 ValueSet: http://hl7.org/fhir/ValueSet/artifactassessment-disposition
 */
public enum ArtifactAssessmentDisposition: String, FHIRPrimitiveType {
	
	/// The comment is not persuasive (rejected in full)
	case notPersuasive = "not-persuasive"
	
	/// The comment is not persuasive with modification (partially rejected)
	case notPersuasiveWithModification = "not-persuasive-with-modification"
	
	/// The comment is persuasive (accepted in full)
	case persuasive
	
	/// The comment is persuasive with modification (partially accepted)
	case persuasiveWithModification = "persuasive-with-modification"
	
	/// The comment is unresolved
	case unresolved
}
