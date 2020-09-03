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
 The kind of operation to perform as a part of a property based filter.
 
 URL: http://hl7.org/fhir/filter-operator
 ValueSet: http://hl7.org/fhir/ValueSet/filter-operator
 */
public enum FilterOperator: String, FHIRPrimitiveType {
	
	/// The specified property of the code equals the provided value.
	case equal = "="
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// including the provided concept itself (include descendant codes and self).
	case isA = "is-a"
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// excluding the provided concept itself i.e. include descendant codes only).
	case descendentOf = "descendent-of"
	
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
	
	/// Includes all concept ids that have a transitive is-a relationship from the concept Id provided as the value,
	/// including the provided concept itself (i.e. include ancestor codes and self).
	case generalizes = "generalizes"
	
	/// The specified property of the code has at least one value (if the specified value is true; if the specified
	/// value is false, then matches when the specified property of the code has no values).
	case exists = "exists"
}
