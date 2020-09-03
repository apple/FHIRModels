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
 What Search Comparator Codes are supported in search.
 
 URL: http://hl7.org/fhir/search-comparator
 ValueSet: http://hl7.org/fhir/ValueSet/search-comparator
 */
public enum SearchComparator: String, FHIRPrimitiveType {
	
	/// the value for the parameter in the resource is equal to the provided value.
	case eq = "eq"
	
	/// the value for the parameter in the resource is not equal to the provided value.
	case ne = "ne"
	
	/// the value for the parameter in the resource is greater than the provided value.
	case gt = "gt"
	
	/// the value for the parameter in the resource is less than the provided value.
	case lt = "lt"
	
	/// the value for the parameter in the resource is greater or equal to the provided value.
	case ge = "ge"
	
	/// the value for the parameter in the resource is less or equal to the provided value.
	case le = "le"
	
	/// the value for the parameter in the resource starts after the provided value.
	case sa = "sa"
	
	/// the value for the parameter in the resource ends before the provided value.
	case eb = "eb"
	
	/// the value for the parameter in the resource is approximately the same to the provided value.
	case ap = "ap"
}
