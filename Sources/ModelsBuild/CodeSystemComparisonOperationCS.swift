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
 Additional Binding Purpose
 
 URL: http://hl7.org/fhir/CodeSystem/comparison-operation
 ValueSet: http://hl7.org/fhir/ValueSet/comparison-operation
 */
public enum ComparisonOperationCS: String, FHIRPrimitiveType {
	
	/// The value for the parameter in the resource is in the list of codes in the value (comma-separated, and subject
	/// to code system logic; the code may be a value set).
	case `in`
	
	/// the value for the parameter in the resource is approximately the same to the provided value.
	case ap
	
	/// the value for the parameter in the resource ends before the provided value.
	case eb
	
	/// the value for the parameter in the resource is equal to the provided value.
	case eq
	
	/// the value for the parameter in the resource is greater or equal to the provided value.
	case ge
	
	/// the value for the parameter in the resource is greater than the provided value.
	case gt
	
	/// the value for the parameter in the resource is less or equal to the provided value.
	case le
	
	/// the value for the parameter in the resource is less than the provided value.
	case lt
	
	/// the value for the parameter in the resource is not equal to the provided value.
	case ne
	
	/// The value for the parameter in the resource is not in the list of codes in the value (comma-separated, and
	/// subject to code system logic; the code may be a value set).
	case nin
	
	/// the value for the parameter in the resource starts after the provided value.
	case sa
}
