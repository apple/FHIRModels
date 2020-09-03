//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Citation contribution.
 
 URL: http://terminology.hl7.org/CodeSystem/citation-contribution
 ValueSet: http://hl7.org/fhir/ValueSet/citation-contribution
 */
public enum CitationContribution: String, FHIRPrimitiveType {
	
	/// Conceptualization (see https://jats4r.org/credit-taxonomy).
	case conceptualization = "conceptualization"
	
	/// Data curation (see https://jats4r.org/credit-taxonomy).
	case dataCuration = "dataCuration"
	
	/// Formal analysis (see https://jats4r.org/credit-taxonomy).
	case formalAnalysis = "formalAnalysis"
	
	/// Funding acquisition (see https://jats4r.org/credit-taxonomy).
	case fundingAcquisition = "fundingAcquisition"
	
	/// Investigation (see https://jats4r.org/credit-taxonomy).
	case investigation = "investigation"
	
	/// Methodology (see https://jats4r.org/credit-taxonomy).
	case methodology = "methodology"
	
	/// Project administration (see https://jats4r.org/credit-taxonomy).
	case projectAdministration = "projectAdministration"
	
	/// Resources (see https://jats4r.org/credit-taxonomy).
	case resources = "resources"
	
	/// Software (see https://jats4r.org/credit-taxonomy).
	case software = "software"
	
	/// Supervision (see https://jats4r.org/credit-taxonomy).
	case supervision = "supervision"
	
	/// Validation (see https://jats4r.org/credit-taxonomy).
	case validation = "validation"
	
	/// Visualization (see https://jats4r.org/credit-taxonomy).
	case visualization = "visualization"
	
	/// Writing - original draft (see https://jats4r.org/credit-taxonomy).
	case writingOriginalDraft = "writingOriginalDraft"
	
	/// Writing - review & editing (see https://jats4r.org/credit-taxonomy).
	case writingReviewEditing = "writingReviewEditing"
}
