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
 A set of common concept properties for use on coded systems throughout the FHIR eco-system.
 
 URL: http://hl7.org/fhir/concept-properties
 ValueSet: http://hl7.org/fhir/ValueSet/concept-properties
 */
public enum ConceptProperties: String, FHIRPrimitiveType {
	
	/// This property contains the code for another representation of this concept, with the same real-world meaning, in
	/// this code system.
	case alternateCode
	
	/// The concept identified in this property is a child of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'child' is defined by the hierarchyMeaning attribute
	case child
	
	/// A string that provides additional detail pertinent to the use or understanding of the concept
	case comment
	
	/// A numeric value that allows the comparison (less than, greater than) or other numerical manipulation of a
	/// concept (e.g. Adding up components of a score). Scores are usually a whole number, but occasionally decimals are
	/// encountered in scores. In questionnaires, the item weight may be represented using the
	/// [[[http://hl7.org/fhir/StructureDefinition/itemWeight]]] extension
	case definition
	
	/// The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but
	/// their use is discouraged, and they should be expected to be made inactive in a future release. Property type is
	/// dateTime. Note that the status property may also be used to indicate that a concept is deprecated. This property
	/// is itself deprecated due to potential confusion with status - use deprecationDate instead
	case deprecated
	
	/// The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but
	/// their use is discouraged, and they should be expected to be made inactive in a future release. Property type is
	/// dateTime. Note that the status property may also be used to indicate that a concept is deprecated
	case deprecationDate
	
	/// The date at which the concept status was last changed
	case effectiveDate
	
	/// True if the concept is not considered active - e.g. not a valid concept any more. Property type is boolean,
	/// default value is false. Note that the status property may also be used to indicate that a concept is inactive
	case inactive
	
	/// A numeric value that allows the comparison (less than, greater than) or other numerical manipulation of a
	/// concept (e.g. Adding up components of a score). Scores are usually a whole number, but occasionally decimals are
	/// encountered in scores. In questionnaires, the item weight may be represented using the
	/// [[[http://hl7.org/fhir/StructureDefinition/itemWeight]]] extension
	case itemWeight
	
	/// If the code is not active (properties inActive or based on status), then this property conveys in what code
	/// system version it was last an active code.
	case lastVersionActive
	
	/// The concept is not intended to be chosen by the user - only intended to be used as a selector for other
	/// concepts. Note, though, that the interpretation of this is highly contextual; all concepts are selectable in
	/// some context. Property type is boolean, default value is false
	case notSelectable
	
	/// Order of the concept amongst sibling concepts as a decimal value
	case order
	
	/// The concept identified in this property is a parent of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'parent' is defined by the hierarchyMeaning attribute
	case parent
	
	/// The concept identified in this property (by its code) contains this concept as a component (i.e. a part-of
	/// relationship rather than a subsumption relationship such as elbow is part-of arm
	case partOf
	
	/// This property identifies a concept in this code system that is considered to replace the use of this concept.
	/// This property is generally only used on deprecated, withdrawn or inactive concepts.
	case replacedByCode
	
	/// This property identifies a concept in another code system that is considered to replace the use of this concept.
	/// This property is generally only used on deprecated, withdrawn or inactive concepts.
	case replacedByCoding
	
	/// The date at which a concept was retired
	case retirementDate
	
	/// A code that indicates the status of the concept. Typical values are active, experimental, deprecated, and
	/// retired
	case status
	
	/// This property contains an alternative code that may be used to identify this concept instead of the primary
	/// code. Synonyms should not be used due to the operational complexity they introduce - see alternateCode
	case synonym
}
