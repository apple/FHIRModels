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
 This codesystem defines a set of codes that can be used to filter Subscription triggers.
 
 URL: http://terminology.hl7.org/CodeSystem/subscription-search-modifier
 */
public enum SubscriptionSearchModifer: String, FHIRPrimitiveType {
	
	/// The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute)
	/// that identifies a value set, and the search parameter tests whether the value is present in the specified Group,
	/// List, or Value Set.
	case `in`
	
	/// The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the
	/// coding in a resource subsumes the specified search code.
	case above
	
	/// The value for the parameter in the resource is approximately the same to the provided value. Note that the
	/// recommended value for the approximation is 10% of the stated value (or for a date, 10% of the gap between now
	/// and the date), but systems may choose other values where appropriate.
	case ap
	
	/// The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the
	/// coding in a resource is subsumed by the specified search code.
	case below
	
	/// The value for the parameter in the resource ends before the provided value.
	case eb
	
	/// The value for the parameter in the resource is equal to the provided value.
	case eq
	
	/// Used to match a value according to FHIR Search rules (e.g., Patient/123, Encounter/2002).
	case equal = "="
	
	/// The value for the parameter in the resource is greater or equal to the provided value.
	case ge
	
	/// The value for the parameter in the resource is greater than the provided value.
	case gt
	
	/// The value for the parameter in the resource is less or equal to the provided value.
	case le
	
	/// The value for the parameter in the resource is less than the provided value.
	case lt
	
	/// The value for the parameter in the resource is not equal to the provided value.
	case ne
	
	/// The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute)
	/// that identifies a value set, and the search parameter tests whether the value is NOT present in the specified
	/// Group, List, or Value Set.
	case notIn = "not-in"
	
	/// The search parameter has the format system|code|value, where the system and code refer to
	/// a Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be
	/// present.
	case ofType = "of-type"
	
	/// The value for the parameter in the resource starts after the provided value.
	case sa
}
