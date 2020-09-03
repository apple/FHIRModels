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
 How an entity was used in an activity.
 
 URL: http://hl7.org/fhir/provenance-entity-role
 ValueSet: http://hl7.org/fhir/ValueSet/provenance-entity-role
 */
public enum ProvenanceEntityRole: String, FHIRPrimitiveType {
	
	/// A transformation of an entity into another, an update of an entity resulting in a new one, or the construction
	/// of a new entity based on a pre-existing entity.
	case derivation = "derivation"
	
	/// A derivation for which the resulting entity is a revised version of some original.
	case revision = "revision"
	
	/// The repeat of (some or all of) an entity, such as text or image, by someone who might or might not be its
	/// original author.
	case quotation = "quotation"
	
	/// A primary source for a topic refers to something produced by some agent with direct experience and knowledge
	/// about the topic, at the time of the topic's study, without benefit from hindsight.
	case source = "source"
	
	/// A derivation for which the entity is removed from accessibility usually through the use of the Delete operation.
	case removal = "removal"
}
