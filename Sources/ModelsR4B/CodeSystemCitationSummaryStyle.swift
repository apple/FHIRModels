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
 The format for display of the citation.
 
 URL: http://terminology.hl7.org/CodeSystem/citation-summary-style
 ValueSet: http://hl7.org/fhir/ValueSet/citation-summary-style
 */
public enum CitationSummaryStyle: String, FHIRPrimitiveType {
	
	/// Chemistry.
	case acs
	
	/// Medicine.
	case ama11
	
	/// APA 6th edition used by Education, Psychology and Sciences.
	case apa6
	
	/// APA 7th edition (October 2019) used by Education, Psychology and Sciences.
	case apa7
	
	/// Sociology.
	case asa6
	
	/// Used by Business, History and the Fine Arts.
	case chicagoA17 = "chicago-a-17"
	
	/// Used by Business, History and the Fine Arts.
	case chicagoB17 = "chicago-b-17"
	
	/// Used by Cochrane reviews, example: Huang, M, Tang T, Pang, P, Li, M, Ma R, Lu, J, et al. Treating COVID-19 with
	/// Chloroquine. J Mol Cell Biol 2020; 12(4):322–5.
	case cochrane
	
	/// Citation style to report human-readable and/or machine-readable access paths, example: Alper BS, Dehnbostel J,
	/// Shahin K. 14-day mortality remdesivir vs placebo meta-analysis (ACTT-1, Wang et al, WHO SOLIDARITY).  Fast
	/// Evidence Interoperability Resources (FEvIR) Platform, entry 55, version 4. Created 2020 Dec 17. Revised 2020 Dec
	/// 21. Accessed 2021 Mar 13. Computable resource at: https://fevir.net/resources/Evidence/55.
	case comppub
	
	/// Biology ecology.
	case elsevierHarvard = "elsevier-harvard"
	
	/// IT, Engineering.
	case ieee
	
	/// MLA 8th edition used by the Humanities.
	case mla8
	
	/// Biology.
	case nature
	
	/// Citation style used by International Committee of Medical Journal Editors and maintained by US National Library
	/// of Medicine.
	case vancouver
}
