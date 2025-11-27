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
 The role that the variable plays.
 
 URL: http://hl7.org/fhir/variable-role
 ValueSet: http://hl7.org/fhir/ValueSet/variable-role
 */
public enum VariableRole: String, FHIRPrimitiveType {
	
	/// A variable that influences the exposure or outcome.
	case covariate
	
	/// An independant variable of primary interest.
	case exposure
	
	/// A dependent variable.
	case outcome
	
	/// The group from which the observations were obtained.
	case population
}
