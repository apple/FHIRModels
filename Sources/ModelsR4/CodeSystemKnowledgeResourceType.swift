//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 A list of all the knowledge resource types defined in this version of the FHIR specification.
 
 URL: http://hl7.org/fhir/knowledge-resource-types
 ValueSet: http://hl7.org/fhir/ValueSet/knowledge-resource-types
 */
public enum KnowledgeResourceType: String, FHIRPrimitiveType {
	
	/// The definition of a specific activity to be taken, independent of any particular patient or context.
	case activityDefinition = "ActivityDefinition"
	
	/// A set of codes drawn from one or more code systems.
	case codeSystem = "CodeSystem"
	
	/// A map from one set of concepts to one or more other concepts.
	case conceptMap = "ConceptMap"
	
	/// Represents a library of quality improvement components.
	case library = "Library"
	
	/// A quality measure definition.
	case measure = "Measure"
	
	/// The definition of a plan for a series of actions, independent of any specific patient or context.
	case planDefinition = "PlanDefinition"
	
	/// Structural Definition.
	case structureDefinition = "StructureDefinition"
	
	/// A Map of relationships between 2 structures that can be used to transform data.
	case structureMap = "StructureMap"
	
	/// A set of codes drawn from one or more code systems.
	case valueSet = "ValueSet"
}
