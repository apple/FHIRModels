//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Concepts specifying how referenced information is considered relevant in a DiagnosticReport. Level 1 derives from
 v2-0936; Level 2 derives from v2-0937; PHX (Patient History) is added under SCI.
 
 URL: http://hl7.org/fhir/diagnosticreport-relevant-information-types
 ValueSet: http://hl7.org/fhir/ValueSet/diagnosticreport-relevant-information-types
 */
public enum DiagnosticReportRelevantInformationTypes: String, FHIRPrimitiveType {
	
	/// Ask at Order Entry
	case AOE
	
	/// Ask at Specimen Collection
	case ASC
	
	/// Sub-type of RSLT (Result) This term identifies observations that give overall culture outcome, when no specific
	/// organism is being named.
	case MCS
	
	/// Sub-type of RSLT (Result) This term identifies any other observations about the isolate.
	case MID
	
	/// Sub-type of RSLT (Result) This term identifies growth levels of an isolate – can be numeric or categorical.
	case MIG
	
	/// NSub-type of RSLT (Result) This term identifies observations that name a specific organism either at the species
	/// or the genus level.
	case MIN
	
	/// Sub-type of RSLT (Result) This term identifies observations that do not fit the culture status, but is not at
	/// the isolate level.
	case MOD
	
	/// Sub-type of RSLT (Result) This term identifies observations on gram stains (and other stains or smears) on the
	/// clinical sample.
	case MSS
	
	/// Historical patient data
	case PHX
	
	/// Question
	case QST
	
	/// Result
	case RSLT
	
	/// Supporting Clinical Information
	case SCI
	
	/// Supplemental Result
	case SUP
	
	/// Susceptibility Related
	case SUR
	
	/// Unspecified
	case UNSP
}
