//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 How an entity was used in an activity.
 
 URL: http://hl7.org/fhir/provenance-entity-role
 ValueSet: http://hl7.org/fhir/ValueSet/provenance-entity-role
 */
public enum ProvenanceEntityRole: String, FHIRPrimitiveType {
	
	/// The record resulting from this event adheres to the protocol, guideline, order set or other definition
	/// represented by this entity.
	case instantiates
	
	/// An entity that is copied in full or part by an agent that is not the author of the entity.
	case quotation
	
	/// An entity that is removed from accessibility, usually through the DELETE operator.
	case removal
	
	/// An entity that is used by the activity to produce a new version of that entity.
	case revision
	
	/// An entity that is used as input to the activity that produced the target.
	case source
}
