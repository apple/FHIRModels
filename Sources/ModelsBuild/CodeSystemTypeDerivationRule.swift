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
 How a type relates to its baseDefinition.
 
 URL: http://hl7.org/fhir/type-derivation-rule
 ValueSet: http://hl7.org/fhir/ValueSet/type-derivation-rule
 */
public enum TypeDerivationRule: String, FHIRPrimitiveType {
	
	/// This definition adds additional rules to an existing concrete type.
	case constraint
	
	/// This definition defines a new type that adds additional elements and optionally additional rules to the base
	/// type.
	case specialization
}
