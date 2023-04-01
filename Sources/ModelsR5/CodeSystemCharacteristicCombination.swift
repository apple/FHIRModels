//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Logical grouping of characteristics.
 
 URL: http://hl7.org/fhir/characteristic-combination
 ValueSet: http://hl7.org/fhir/ValueSet/characteristic-combination
 */
public enum CharacteristicCombination: String, FHIRPrimitiveType {
	
	/// Combine characteristics with AND.
	case allOf = "all-of"
	
	/// Combine characteristics with OR.
	case anyOf = "any-of"
	
	/// Meet at least the threshold number of characteristics for definition.
	case atLeast = "at-least"
	
	/// Meet at most the threshold number of characteristics for definition.
	case atMost = "at-most"
	
	/// Combine characteristics as a collection used as the dataset.
	case dataset
	
	/// Combine characteristics by addition of benefits and subtraction of harms.
	case netEffect = "net-effect"
	
	/// Combine characteristics statistically. Use method to specify the statistical method.
	case statistical
}
