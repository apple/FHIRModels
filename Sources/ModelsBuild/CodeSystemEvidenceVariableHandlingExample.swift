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
 The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous,
 Descriptive).
 
 URL: http://hl7.org/fhir/variable-handling-example
 ValueSet: http://hl7.org/fhir/ValueSet/variable-handling-example
 */
public enum EvidenceVariableHandlingExample: String, FHIRPrimitiveType {
	
	/// A boolean variable is a variable which is defined to have only 2 possible values: True or False.
	case boolean
	
	/// A continuous variable is one for which, within the limits the variable ranges, any value is possible (from STATO
	/// http://purl.obolibrary.org/obo/STATO_0000251).
	case continuous
	
	/// A dichotomous variable is a categorical variable which is defined to have only 2 categories or possible values
	/// (from STATO http://purl.obolibrary.org/obo/STATO_0000090).
	case dichotomous
	
	/// not-specified
	case notSpecified = "not-specified"
	
	/// An ordinal variable is a categorical variable where the discrete possible values are ordered or correspond to an
	/// implicit ranking (from STATO http://purl.obolibrary.org/obo/STATO_0000228).
	case ordinal
	
	/// A polychotomous variable is a categorical variable which is defined to have minimally 2 categories or possible
	/// values. (from STATO  http://purl.obolibrary.org/obo/STATO_0000087).  Suggestion to limit code use to situations
	/// when neither dichotomous nor ordinal variables apply.
	case polychotomous
	
	/// time-to-event
	case timeToEvent = "time-to-event"
}
