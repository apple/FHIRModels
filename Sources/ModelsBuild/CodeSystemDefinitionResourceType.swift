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
 A list of all the definition resource types defined in this version of the FHIR specification.
 
 URL: http://hl7.org/fhir/definition-resource-types
 ValueSet: http://hl7.org/fhir/ValueSet/definition-resource-types
 */
public enum DefinitionResourceType: String, FHIRPrimitiveType {
	
	/// This resource allows for the definition of some activity to be performed, independent of a particular patient,
	/// practitioner, or other performance context.
	case activityDefinition = "ActivityDefinition"
	
	/// The EventDefinition resource provides a reusable description of when a particular event can occur.
	case eventDefinition = "EventDefinition"
	
	/// The Measure resource provides the definition of a quality measure.
	case measure = "Measure"
	
	/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
	/// interaction).
	case operationDefinition = "OperationDefinition"
	
	/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable
	/// artifact. The resource is general enough to support the description of a broad range of clinical artifacts such
	/// as clinical decision support rules, order sets and protocols.
	case planDefinition = "PlanDefinition"
	
	/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
	/// detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data
	/// collection.
	case questionnaire = "Questionnaire"
}
