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
 Code for the type of actor - system or human.
 
 URL: http://hl7.org/fhir/actordefinition-actor-code
 ValueSet: http://hl7.org/fhir/ValueSet/actordefinition-actor-code
 */
public enum ActorDefinitionActorCode: String, FHIRPrimitiveType {
	
	/// careTeam
	case careTeam = "care-team"
	
	/// A group of people or animals
	case collective
	
	/// A physical device acting in non-software capacity
	case device
	
	/// group
	case group
	
	/// healthcareService
	case healthcareService = "healthcare-service"
	
	/// A person or animal
	case individual
	
	/// A person, animal, (non-software) device, organization or other entity
	case nonSystem = "non-system"
	
	/// organization
	case organization
	
	/// patient
	case patient
	
	/// practitioner
	case practitioner
	
	/// relatedPerson
	case relatedPerson = "related-person"
}
