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
 
 URL: http://hl7.org/fhir/CodeSystem/additional-binding-purpose
 ValueSet: http://hl7.org/fhir/ValueSet/additional-binding-purpose
 */
public enum AdditionalBindingPurposeCodes: String, FHIRPrimitiveType {
	
	/// Instances are strongly encouraged to have a code from this value set and, if they enable 'best practice'
	/// validation mode, they will receive a 'best practice violation' message for data elements that do not include a
	/// code from this value set. This might be part of an overall best practice scoring profile, or advice on a more
	/// general profile.
	case bestPractice = "best-practice"
	
	/// This value set is a candidate to substitute for the overall conformance value set in some situations; usually
	/// these are defined in the documentation
	case candidate
	
	/// This value set is a component of the base value set. Usually this is called out so that documentation can be
	/// written about a portion of the value set
	case component
	
	/// New records are required to use this value set, but legacy records may use other codes. The definition of 'new
	/// record' is difficult, since systems often create new records based on pre-existing data. Usually 'current'
	/// bindings are mandated by an external authority that makes clear rules around this
	case current
	
	/// New records are required to use this value set if a concept applies, but legacy records may use other codes. The
	/// definition of 'new record' is difficult, since systems often create new records based on pre-existing data.
	/// Usually 'current' bindings are mandated by an external authority that makes clear rules around this
	case currentExtensible = "current-extensible"
	
	/// This value set is used as an extensible binding (in addition to the base binding (not a replacement), usually in
	/// a particular usage context)
	case extensible
	
	/// A required binding, for use when the binding strength is 'extensible' or 'preferred'. This is deprecated - it is
	/// equivalent to `required`
	case maximum
	
	/// The minimum allowable value set - any conformant system SHALL support all these codes
	case minimum
	
	/// A Binding that doesn't make any restrictions on use, but is provided for other purposes
	case open
	
	/// This is the value set that is preferred in a given context (documentation should explain why)
	case preferred
	
	/// This value set is used as a required binding (in addition to the base binding (not a replacement), usually in a
	/// particular usage context)
	case required
	
	/// This value set is a good set of codes to start with when designing your system
	case starter
	
	/// This value set is provided for user look up in a given context. Typically, these valuesets only include a subset
	/// of codes relevant for input in a context
	case ui
}
