//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be
 provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/entformula-additive
 ValueSet: http://hl7.org/fhir/ValueSet/entformula-additive
 */
public enum EnteralFormulaAdditiveTypeCode: String, FHIRPrimitiveType {
	
	/// Modular lipid enteral formula component
	case lipid = "lipid"
	
	/// Modular protein enteral formula component
	case protein = "protein"
	
	/// Modular carbohydrate enteral formula component
	case carbohydrate = "carbohydrate"
	
	/// Modular fiber enteral formula component
	case fiber = "fiber"
	
	/// Added water
	case water = "water"
}
