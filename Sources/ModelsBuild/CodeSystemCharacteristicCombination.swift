//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
	
	///  Combine characteristics statistically.
	case netEffect = "net-effect"
}
