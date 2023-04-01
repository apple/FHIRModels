//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Used to code author list statement, contributorship statement, and such.
 
 URL: http://hl7.org/fhir/contributor-summary-type
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-summary-type
 */
public enum ContributorSummaryType: String, FHIRPrimitiveType {
	
	/// Display of the list of acknowledged parties as a complete string.
	case acknowledgementList = "acknowledgement-list"
	
	/// Statement of acknowledgment of contributions beyond those compiled for formal contributorship statements.
	case acknowledgmentStatement = "acknowledgment-statement"
	
	/// Display of the author list as a complete string.
	case authorString = "author-string"
	
	/// Statement of completing interests related to the creation of the cited artifact. Also called conflicts of
	/// interest or declaration of interests.
	case competingInterestsStatement = "competing-interests-statement"
	
	/// Display of the list of contributors as a complete string.
	case contributorshipList = "contributorship-list"
	
	/// Compiled summary of contributions.
	case contributorshipStatement = "contributorship-statement"
	
	/// Statement of financial support for the creation of the cited artifact.
	case fundingStatement = "funding-statement"
}
