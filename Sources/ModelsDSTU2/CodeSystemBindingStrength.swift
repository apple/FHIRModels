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
 Indication of the degree of conformance expectations associated with a binding.
 
 URL: http://hl7.org/fhir/binding-strength
 ValueSet: http://hl7.org/fhir/ValueSet/binding-strength
 */
public enum BindingStrength: String, FHIRPrimitiveType {
	
	/// To be conformant, instances of this element SHALL include a code from the specified value set.
	case required = "required"
	
	/// To be conformant, instances of this element SHALL include a code from the specified value set if any of the
	/// codes within the value set can apply to the concept being communicated.  If the valueset does not cover the
	/// concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.
	case extensible = "extensible"
	
	/// Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to
	/// do so to be considered conformant.
	case preferred = "preferred"
	
	/// Instances are not expected or even encouraged to draw from the specified value set.  The value set merely
	/// provides examples of the types of concepts intended to be included.
	case example = "example"
}
