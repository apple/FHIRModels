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
 How a compartment must be linked.
 
 URL: http://hl7.org/fhir/graph-compartment-rule
 ValueSet: http://hl7.org/fhir/ValueSet/graph-compartment-rule
 */
public enum GraphCompartmentRule: String, FHIRPrimitiveType {
	
	/// The compartment must be identical (the same literal reference).
	case identical = "identical"
	
	/// The compartment must be the same - the record must be about the same patient, but the reference may be
	/// different.
	case matching = "matching"
	
	/// The compartment must be different.
	case different = "different"
	
	/// The compartment rule is defined in the accompanying FHIRPath expression.
	case custom = "custom"
}
