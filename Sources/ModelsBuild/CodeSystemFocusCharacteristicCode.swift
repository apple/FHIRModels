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
 Evidence focus characteristic code.
 
 URL: http://terminology.hl7.org/CodeSystem/focus-characteristic-code
 ValueSet: http://hl7.org/fhir/ValueSet/focus-characteristic-code
 */
public enum FocusCharacteristicCode: String, FHIRPrimitiveType {
	
	/// Used to reference a specific article.
	case citation = "citation"
	
	/// Used to denote a focus on clinical outcomes, ie evidence variable in role of outcome (measured variable) as
	/// observed is considered a "clinical outcome" (patient-important outcome such as mortality, symptoms, function or
	/// quality of life).
	case clinicalOutcomesObserved = "clinical-outcomes-observed"
	
	/// The population of interest.
	case population = "population"
	
	/// The exposure of interest, such as an intervention.
	case exposure = "exposure"
	
	/// The comparator (intervention or control state) of interest.
	case comparator = "comparator"
	
	/// the outcome of interest.
	case outcome = "outcome"
	
	/// Any medication exposures. A subset of exposures or interventions that are medications.
	case medicationExposures = "medication-exposures"
	
	/// Type of research study, such as randomized trial or case-control study.
	case studyType = "study-type"
}
