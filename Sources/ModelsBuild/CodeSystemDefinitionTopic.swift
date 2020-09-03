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
 High-level categorization of the definition, used for searching, sorting, and filtering.
 
 URL: http://terminology.hl7.org/CodeSystem/definition-topic
 ValueSet: http://hl7.org/fhir/ValueSet/definition-topic
 */
public enum DefinitionTopic: String, FHIRPrimitiveType {
	
	/// The definition is related to treatment of the patient.
	case treatment = "treatment"
	
	/// The definition is related to education of the patient.
	case education = "education"
	
	/// The definition is related to assessment of the patient.
	case assessment = "assessment"
}
