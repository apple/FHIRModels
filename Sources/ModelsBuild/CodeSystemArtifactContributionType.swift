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
 Citation contribution.
 
 URL: http://hl7.org/fhir/artifact-contribution-type
 ValueSet: http://hl7.org/fhir/ValueSet/artifact-contribution-type
 */
public enum ArtifactContributionType: String, FHIRPrimitiveType {
	
	/// Conceptualization (see https://jats4r.org/credit-taxonomy).
	case conceptualization
	
	/// Data curation (see https://jats4r.org/credit-taxonomy).
	case dataCuration = "data-curation"
	
	/// Formal analysis (see https://jats4r.org/credit-taxonomy).
	case formalAnalysis = "formal-analysis"
	
	/// Funding acquisition (see https://jats4r.org/credit-taxonomy).
	case fundingAcquisition = "funding-acquisition"
	
	/// Investigation (see https://jats4r.org/credit-taxonomy).
	case investigation
	
	/// Methodology (see https://jats4r.org/credit-taxonomy).
	case methodology
	
	/// Project administration (see https://jats4r.org/credit-taxonomy).
	case projectAdministration = "project-administration"
	
	/// Resources (see https://jats4r.org/credit-taxonomy).
	case resources
	
	/// Software (see https://jats4r.org/credit-taxonomy).
	case software
	
	/// Supervision (see https://jats4r.org/credit-taxonomy).
	case supervision
	
	/// Validation (see https://jats4r.org/credit-taxonomy).
	case validation
	
	/// Visualization (see https://jats4r.org/credit-taxonomy).
	case visualization
	
	/// Writing - original draft (see https://jats4r.org/credit-taxonomy).
	case writingOriginalDraft = "writing-original-draft"
	
	/// Writing - review & editing (see https://jats4r.org/credit-taxonomy).
	case writingReviewEditing = "writing-review-editing"
}
