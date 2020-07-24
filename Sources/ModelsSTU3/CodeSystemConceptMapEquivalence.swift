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
 The degree of equivalence between concepts.
 
 URL: http://hl7.org/fhir/concept-map-equivalence
 ValueSet: http://hl7.org/fhir/ValueSet/concept-map-equivalence
 */
public enum ConceptMapEquivalence: String, FHIRPrimitiveType {
	
	/// The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is
	/// not known
	case relatedto = "relatedto"
	
	/// The definitions of the concepts mean the same thing (including when structural implications of meaning are
	/// considered) (i.e. extensionally identical).
	case equivalent = "equivalent"
	
	/// The definitions of the concepts are exactly the same (i.e. only grammatical differences) and structural
	/// implications of meaning are identical or irrelevant (i.e. intentionally identical).
	case equal = "equal"
	
	/// The target mapping is wider in meaning than the source concept.
	case wider = "wider"
	
	/// The target mapping subsumes the meaning of the source concept (e.g. the source is-a target).
	case subsumes = "subsumes"
	
	/// The target mapping is narrower in meaning than the source concept. The sense in which the mapping is narrower
	/// SHALL be described in the comments in this case, and applications should be careful when attempting to use these
	/// mappings operationally.
	case narrower = "narrower"
	
	/// The target mapping specializes the meaning of the source concept (e.g. the target is-a source).
	case specializes = "specializes"
	
	/// The target mapping overlaps with the source concept, but both source and target cover additional meaning, or the
	/// definitions are imprecise and it is uncertain whether they have the same boundaries to their meaning. The sense
	/// in which the mapping is narrower SHALL be described in the comments in this case, and applications should be
	/// careful when attempting to use these mappings operationally.
	case inexact = "inexact"
	
	/// There is no match for this concept in the destination concept system.
	case unmatched = "unmatched"
	
	/// This is an explicit assertion that there is no mapping between the source and target concept.
	case disjoint = "disjoint"
}
