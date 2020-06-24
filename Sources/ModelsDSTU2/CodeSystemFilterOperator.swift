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
 The kind of operation to perform as a part of a property based filter.
 
 URL: http://hl7.org/fhir/filter-operator
 ValueSet: http://hl7.org/fhir/ValueSet/filter-operator
 */
public enum FilterOperator: String, FHIRPrimitiveType {
	
	/// The specified property of the code equals the provided value.
	case eq = "="
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// including the provided concept itself.
	case isA = "is-a"
	
	/// The specified property of the code does not have an is-a relationship with the provided value.
	case isNotA = "is-not-a"
	
	/// The specified property of the code  matches the regex specified in the provided value.
	case regex = "regex"
	
	/// The specified property of the code is in the set of codes or concepts specified in the provided value (comma
	/// separated list).
	case `in` = "in"
	
	/// The specified property of the code is not in the set of codes or concepts specified in the provided value (comma
	/// separated list).
	case notIn = "not-in"
}
