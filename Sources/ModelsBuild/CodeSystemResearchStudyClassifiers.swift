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
 Codes for use in ResearchStudy Resource. This resource (this entire set of content) is being used for active
 development of a ResearchStudyClassifiers CodeSystem for use for supporting multiple value sets in the FHIR
 ResearchStudy StructureDefinition.
 
 URL: http://hl7.org/fhir/research-study-classifiers
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-classifiers
 */
public enum ResearchStudyClassifiers: String, FHIRPrimitiveType {
	
	/// A medical device regulated by the U.S. Food and Drug Administration.
	case fdaRegulatedDevice = "fda-regulated-device"
	
	/// A medication regulated by the U.S. Food and Drug Administration.
	case fdaRegulatedDrug = "fda-regulated-drug"
	
	/// Human subjects research that is excempt from oversight and monitoring by an institutional review board (IRB).
	case irbExempt = "irb-exempt"
	
	/// Research regulated by a specific German legal requirement (Medizinproduktegesetz MPG Paragraph 23b).
	case mpgParagraph23b = "mpg-paragraph-23b"
}
