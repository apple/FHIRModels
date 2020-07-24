//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 A set of common concept properties for use on coded systems through out the FHIR eco-system.
 
 URL: http://hl7.org/fhir/concept-properties
 ValueSet: http://hl7.org/fhir/ValueSet/concept-properties
 */
public enum FHIRDefinedConceptProperties: String, FHIRPrimitiveType {
	
	/// True if the concept is not considered active - e.g. not a valid concept any more. Property type is boolean,
	/// default value is false
	case inactive = "inactive"
	
	/// The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but
	/// their use is discouraged, and they should be expected to be made inactive in a future release. Property type is
	/// dateTime
	case deprecated = "deprecated"
	
	/// The concept is not intended to be chosen by the user - only intended to be used as a selector for other
	/// concepts. Note, though, that the interpretation of this is highly contextual; all concepts are selectable in
	/// some context. Property type is boolean, default value is false
	case notSelectable = "notSelectable"
	
	/// The concept identified in this property is a parent of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'parent' is defined by the hierarchyMeaning attribute
	case parent = "parent"
	
	/// The concept identified in this property is a child of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'child' is defined by the hierarchyMeaning attribute
	case child = "child"
}
