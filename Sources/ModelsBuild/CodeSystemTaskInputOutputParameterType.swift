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
 The input and output types for the task.
 
 URL: http://hl7.org/fhir/task-inputoutput-parameter-type
 ValueSet: http://hl7.org/fhir/ValueSet/task-inputoutput-parameter-type
 */
public enum TaskInputOutputParameterType: String, FHIRPrimitiveType {
	
	/// A specimen that has been collected.
	case collectedSpecimen = "collected-specimen"
	
	/// Medications, supplements or drugs the patient consumes at the same time as something else.
	case concomitantMedications = "concomitant-medications"
	
	/// A code describing the information requested by a data-request Task - often a code for a type of document
	case dataCode = "data-code"
	
	/// Indicates the parameters of a FHIR RESTful search to be executed whose results are requested by a data-request
	/// Task. The content will be the portion of the query URL following the 'base'. E.g.  `Observation?code=foo`.
	case dataQuery = "data-query"
	
	/// A FHIR resource, typically a search-set Bundle, containing the requested information in response to a data-
	/// request Task
	case dataValue = "data-value"
	
	/// The order number associated with the filler.
	case fillerOrder = "filler-order"
	
	/// Results from a previous order.
	case priorResults = "prior-results"
	
	/// Reference results to compare against.
	case referenceResults = "reference-results"
}
