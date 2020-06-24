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
 The type of PlanDefinition.
 
 URL: http://terminology.hl7.org/CodeSystem/plan-definition-type
 ValueSet: http://hl7.org/fhir/ValueSet/plan-definition-type
 */
public enum PlanDefinitionType: String, FHIRPrimitiveType {
	
	/// A pre-defined and approved group of orders related to a particular clinical condition (e.g. hypertension
	/// treatment and monitoring) or stage of care (e.g. hospital admission to Coronary Care Unit). An order set is used
	/// as a checklist for the clinician when managing a patient with a specific condition. It is a structured
	/// collection of orders relevant to that condition and presented to the clinician in a computerized provider order
	/// entry (CPOE) system.
	case orderSet = "order-set"
	
	/// Defines a desired/typical sequence of clinical activities including preconditions, triggers and temporal
	/// relationships.
	case clinicalProtocol = "clinical-protocol"
	
	/// A decision support rule of the form [on Event] if Condition then Action. It is intended to be a shareable,
	/// computable definition of actions that should be taken whenever some condition is met in response to a particular
	/// event or events.
	case ecaRule = "eca-rule"
	
	/// Defines the steps for a group of one or more systems in an event flow process along with the step constraints,
	/// sequence, pre-conditions and decision points to complete a particular objective.
	case workflowDefinition = "workflow-definition"
}
