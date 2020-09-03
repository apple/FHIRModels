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
 Overall defining type of this clinical use issue.
 
 URL: http://hl7.org/fhir/clinical-use-issue-type
 ValueSet: http://hl7.org/fhir/ValueSet/clinical-use-issue-type
 */
public enum ClinicalUseIssueType: String, FHIRPrimitiveType {
	
	/// A reason for giving the medicaton.
	case indication = "indication"
	
	/// A reason for not giving the medicaition.
	case contraindication = "contraindication"
	
	/// Interactions between the medication and other substances.
	case interaction = "interaction"
	
	/// Side effects or adverse effects associated with the medication.
	case undesirableEffect = "undesirable-effect"
	
	/// A general warning or issue that is not specifically one of the other types.
	case warning = "warning"
}
