//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 
 URL: http://hl7.org/fhir/entformula-additive
 ValueSet: http://hl7.org/fhir/ValueSet/entformula-additive
 */
public enum EnteralFormulaAdditiveTypeCode: String, FHIRPrimitiveType {
	
	/// lipid
	case lipid = "lipid"
	
	/// protein
	case protein = "protein"
	
	/// carbohydrate
	case carbohydrate = "carbohydrate"
	
	/// fiber
	case fiber = "fiber"
	
	/// water
	case water = "water"
}
