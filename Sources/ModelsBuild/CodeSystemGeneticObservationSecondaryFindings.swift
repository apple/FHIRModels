//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Codes to denote a guideline or policy statement.when a genetic test result is being shared as a secondary finding.
 
 URL: http://hl7.org/fhir/secondary-finding
 ValueSet: http://hl7.org/fhir/ValueSet/secondary-finding
 */
public enum GeneticObservationSecondaryFindings: String, FHIRPrimitiveType {
	
	/// First release (2013): ACMG Recommendations for Reporting of Incidental Findings in Clinical Exome and Genome
	/// Sequencing.  https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3727274/
	case acmgVersion1 = "acmg-version1"
	
	/// Second release (2016): Recommendations for reporting of secondary findings in clinical exome and genome
	/// sequencing, 2016 update (ACMG SF v2.0): a policy statement of the American College of Medical Genetics and
	/// Genomics. https://www.ncbi.nlm.nih.gov/pubmed/27854360
	case acmgVersion2 = "acmg-version2"
}
