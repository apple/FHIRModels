//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 How data is copied/created.
 
 URL: http://hl7.org/fhir/map-transform
 ValueSet: http://hl7.org/fhir/ValueSet/map-transform
 */
public enum StructureMapTransform: String, FHIRPrimitiveType {
	
	/// Create a Coding. Parameters = (system. Code[, display]).
	case C = "c"
	
	/// append(source...) - source is element or string.
	case append
	
	/// cast(source, type?) - case source from one type to another. target type can be left as implicit if there is one
	/// and only one target type known.
	case cast
	
	/// Create a CodeableConcept. Parameters = (text) or (system. Code[, display]).
	case cc
	
	/// copy(source).
	case copy
	
	/// Create a contact details. Parameters = (value) or (system, value). If no system is provided, the system should
	/// be inferred from the content of the value.
	case cp
	
	/// create(type : string) - type is passed through to the application on the standard API, and must be known by it.
	case create
	
	/// Perform a date operation. *Parameters to be documented*.
	case dateOp
	
	/// escape(source, fmt1, fmt2) - change source from one kind of escaping to another (plain, java, xml, json). note
	/// that this is for when the string itself is escaped.
	case escape
	
	/// Execute the supplied FHIRPath expression and use the value returned by that.
	case evaluate
	
	/// Create an identifier. Parameters = (system, value[, type]) where type is a code from the identifier type value
	/// set.
	case id
	
	/// Return the appropriate string to put in a reference that refers to the resource provided as a parameter.
	case pointer
	
	/// Create a quantity. Parameters = (text) or (value, unit, [system, code]) where text is the natural representation
	/// e.g. [comparator]value[space]unit.
	case qty
	
	/// reference(source : object) - return a string that references the provided tree properly.
	case reference
	
	/// translate(source, uri_of_map) - use the translate operation.
	case translate
	
	/// truncate(source, length) - source must be stringy type.
	case truncate
	
	/// Generate a random UUID (in lowercase). No Parameters.
	case uuid
}
