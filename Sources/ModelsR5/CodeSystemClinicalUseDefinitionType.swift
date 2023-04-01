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
 Overall defining type of this clinical use definition.
 
 URL: http://hl7.org/fhir/clinical-use-definition-type
 ValueSet: http://hl7.org/fhir/ValueSet/clinical-use-definition-type
 */
public enum ClinicalUseDefinitionType: String, FHIRPrimitiveType {
	
	/// A reason for not giving the medication.
	case contraindication
	
	/// A reason for giving the medication.
	case indication
	
	/// Interactions between the medication and other substances.
	case interaction
	
	/// Side effects or adverse effects associated with the medication.
	case undesirableEffect = "undesirable-effect"
	
	/// A general warning or issue that is not specifically one of the other types.
	case warning
}
