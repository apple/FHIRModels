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
 The format for display of the citation.
 
 URL: http://terminology.hl7.org/CodeSystem/citation-summary-style
 ValueSet: http://hl7.org/fhir/ValueSet/citation-summary-style
 */
public enum CitationSummaryStyle: String, FHIRPrimitiveType {
	
	/// Citation style used by International Committee of Medical Journal Editors and maintained by US National Library
	/// of Medicine.
	case vancouver = "Vancouver"
	
	/// Medicine.
	case AMA11 = "AMA11"
	
	/// APA 7th edition (October 2019) used by Education, Psychology and Sciences.
	case APA7 = "APA7"
	
	/// APA 6th edition used by Education, Psychology and Sciences.
	case APA6 = "APA6"
	
	/// Sociology.
	case ASA6 = "ASA6"
	
	/// MLA 8th edition used by the Humanities.
	case MLA8 = "MLA8"
	
	/// Used by Cochrane reviews, example: Huang, M, Tang T, Pang, P, Li, M, Ma R, Lu, J, et al. Treating COVID-19 with
	/// Chloroquine. J Mol Cell Biol 2020; 12(4):322–5.
	case cochrane = "Cochrane"
	
	/// Biology ecology.
	case elsevierHarvard = "Elsevier-Harvard"
	
	/// Biology.
	case nature = "Nature"
	
	/// Chemistry.
	case ACS = "ACS"
	
	/// Used by Business, History and the Fine Arts.
	case chicagoA17 = "ChicagoA17"
	
	/// Used by Business, History and the Fine Arts.
	case chicagoB17 = "ChicagoB17"
	
	/// IT, Engineering.
	case IEEE = "IEEE"
	
	/// Citation style to report human-readable and machine-readable access paths.
	case compPub = "CompPub"
}
