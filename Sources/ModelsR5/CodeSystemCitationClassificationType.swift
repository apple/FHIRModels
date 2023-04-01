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
 Citation classification type
 
 URL: http://hl7.org/fhir/citation-classification-type
 ValueSet: http://hl7.org/fhir/ValueSet/citation-classification-type
 */
public enum CitationClassificationType: String, FHIRPrimitiveType {
	
	/// Citation repository where this citation was created or copied from
	case citationSource = "citation-source"
	
	/// Used for Citation sharing on the Fast Evidence Interoperability Resources (FEvIR) Platform
	case fevirPlatformUse = "fevir-platform-use"
	
	/// The party responsible for creating and validating the MEDLINE citation
	case medlineOwner = "medline-owner"
}
