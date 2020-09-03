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
 FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
 
 URL: http://terminology.hl7.org/CodeSystem/subscription-search-modifier
 ValueSet: http://hl7.org/fhir/ValueSet/subscription-search-modifier
 */
public enum SubscriptionSearchModifier: String, FHIRPrimitiveType {
	
	/// Used to match a value according to FHIR Search rules (e.g., Patient/123, Encounter/2002).
	case equal = "="
	
	/// The value for the parameter in the resource is equal to the provided value.
	case eq = "eq"
	
	/// The value for the parameter in the resource is not equal to the provided value.
	case ne = "ne"
	
	/// The value for the parameter in the resource is greater than the provided value.
	case gt = "gt"
	
	/// The value for the parameter in the resource is less than the provided value.
	case lt = "lt"
	
	/// The value for the parameter in the resource is greater or equal to the provided value.
	case ge = "ge"
	
	/// The value for the parameter in the resource is less or equal to the provided value.
	case le = "le"
	
	/// The value for the parameter in the resource starts after the provided value.
	case sa = "sa"
	
	/// The value for the parameter in the resource ends before the provided value.
	case eb = "eb"
	
	/// The value for the parameter in the resource is approximately the same to the provided value. Note that the
	/// recommended value for the approximation is 10% of the stated value (or for a date, 10% of the gap between now
	/// and the date), but systems may choose other values where appropriate.
	case ap = "ap"
	
	/// The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the
	/// coding in a resource subsumes the specified search code.
	case above = "above"
	
	/// The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the
	/// coding in a resource is subsumed by the specified search code.
	case below = "below"
	
	/// The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute)
	/// that identifies a value set, and the search parameter tests whether the value is present in the specified Group,
	/// List, or Value Set.
	case `in` = "in"
	
	/// The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute)
	/// that identifies a value set, and the search parameter tests whether the value is NOT present in the specified
	/// Group, List, or Value Set.
	case notIn = "not-in"
	
	/// The search parameter has the format system|code|value, where the system and code refer to
	/// a Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be
	/// present.
	case ofType = "of-type"
}
