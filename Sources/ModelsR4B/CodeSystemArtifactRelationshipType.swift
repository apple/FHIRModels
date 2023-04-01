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
 Artifact Relationship Type
 
 URL: http://terminology.hl7.org/CodeSystem/artifact-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/artifact-relationship-type
 */
public enum ArtifactRelationshipType: String, FHIRPrimitiveType {
	
	/// Amended with
	case amendedWith = "amended-with"
	
	/// Amends
	case amends
	
	/// Appended with
	case appendedWith = "appended-with"
	
	/// Appends
	case appends
	
	/// Cited by
	case citedBy = "cited-by"
	
	/// Cites
	case cites
	
	/// Comment In
	case commentIn = "comment-in"
	
	/// Comments On
	case commentsOn = "comments-on"
	
	/// Composed of
	case composedOf = "composed-of"
	
	/// Correction In
	case correctionIn = "correction-in"
	
	/// Corrects
	case corrects
	
	/// Depends on
	case dependsOn = "depends-on"
	
	/// Derived from
	case derivedFrom = "derived-from"
	
	/// Part of
	case partOf = "part-of"
	
	/// Replaced with
	case replacedWith = "replaced-with"
	
	/// Replaces
	case replaces
	
	/// Retracted by
	case retractedBy = "retracted-by"
	
	/// Retracts
	case retracts
	
	/// Similar to
	case similarTo = "similar-to"
	
	/// Supported with
	case supportedWith = "supported-with"
	
	/// Supports
	case supports
	
	/// Transformed into
	case transformedInto = "transformed-into"
	
	/// Transformed with
	case transformedWith = "transformed-with"
	
	/// Transforms
	case transforms
}
