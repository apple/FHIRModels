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
 The role that the assertion variable plays.
 
 URL: http://terminology.hl7.org/CodeSystem/variable-role
 ValueSet: http://hl7.org/fhir/ValueSet/variable-role
 */
public enum EvidenceVariableRole: String, FHIRPrimitiveType {
	
	/// variable represents a population.
	case population = "population"
	
	/// variable represents a subpopulation.
	case subpopulation = "subpopulation"
	
	/// variable represents an exposure.
	case exposure = "exposure"
	
	/// variable represents a reference exposure.
	case referenceExposure = "referenceExposure"
	
	/// variable represents a measured variable.
	case measuredVariable = "measuredVariable"
	
	/// variable represents a confounder.
	case confounder = "confounder"
}
