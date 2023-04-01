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
 This codesystem defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may
 have.
 
 URL: http://terminology.hl7.org/CodeSystem/diet
 */
public enum Diet: String, FHIRPrimitiveType {
	
	/// Excludes dairy products.
	case dairyFree = "dairy-free"
	
	/// Excludes ingredients containing gluten.
	case glutenFree = "gluten-free"
	
	/// Foods that conform to Islamic law.
	case halal
	
	/// Foods that conform to Jewish dietary law.
	case kosher
	
	/// Excludes ingredients containing nuts.
	case nutFree = "nut-free"
	
	/// Food without meat, poultry, seafood, eggs, dairy products and other animal-derived substances.
	case vegan
	
	/// Food without meat, poultry or seafood.
	case vegetarian
}
