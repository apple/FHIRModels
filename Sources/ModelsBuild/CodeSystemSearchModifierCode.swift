//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 A supported modifier for a search parameter.
 
 URL: http://hl7.org/fhir/search-modifier-code
 ValueSet: http://hl7.org/fhir/ValueSet/search-modifier-code
 */
public enum SearchModifierCode: String, FHIRPrimitiveType {
	
	/// The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests
	/// whether the coding is in the specified value set.
	case `in`
	
	/// The search parameter tests whether the value in a resource subsumes the specified value (is-a, or hierarchical
	/// relationships).
	case above
	
	/// The search parameter tests whether the value in a resource is subsumed by the specified value (is-a, or
	/// hierarchical relationships).
	case below
	
	/// Tests whether the textual display value in a resource (e.g., CodeableConcept.text, Coding.display, or
	/// Reference.display) matches the supplied parameter value.
	case codeText = "code-text"
	
	/// The search parameter returns resources that include the supplied parameter value anywhere within the field being
	/// searched.
	case contains
	
	/// The search parameter returns resources that have a value that exactly matches the supplied parameter (the whole
	/// string, including casing and accents).
	case exact
	
	/// The search parameter applies to the identifier on the resource, not the reference.
	case identifier
	
	/// The search parameter indicates an inclusion directive (_include, _revinclude) that is applied to an included
	/// resource instead of the matching resource.
	case iterate
	
	/// The search parameter returns resources that have a value or not.
	case missing
	
	/// The search parameter returns resources that do not contain a match.
	case not
	
	/// The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests
	/// whether the coding is not in the specified value set.
	case notIn = "not-in"
	
	/// The search parameter has the format system|code|value, where the system and code refer to an
	/// Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
	case ofType = "of-type"
	
	/// The search parameter is processed as a string that searches text associated with the code/value - either
	/// CodeableConcept.text, Coding.display, Identifier.type.text, or Reference.display.
	case text
	
	/// Tests whether the value in a resource matches the supplied parameter value using advanced text handling that
	/// searches text associated with the code/value - e.g., CodeableConcept.text, Coding.display, or
	/// Identifier.type.text.
	case textAdvanced = "text-advanced"
	
	/// The search parameter only applies to the Resource Type specified as a modifier (e.g. the modifier is not
	/// actually :type, but :Patient etc.).
	case type
}
