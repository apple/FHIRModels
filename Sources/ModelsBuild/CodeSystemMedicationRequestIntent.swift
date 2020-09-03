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
 MedicationRequest Intent Codes
 
 URL: http://hl7.org/fhir/CodeSystem/medicationrequest-intent
 ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-intent
 */
public enum MedicationRequestIntent: String, FHIRPrimitiveType {
	
	/// The request is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and
	/// without providing an authorization to act
	case proposal = "proposal"
	
	/// The request represents an intention to ensure something occurs without providing an authorization for others to
	/// act.
	case plan = "plan"
	
	/// The request represents a request/demand and authorization for action
	case order = "order"
	
	/// The request represents the original authorization for the medication request.
	case originalOrder = "original-order"
	
	/// The request represents an automatically generated supplemental authorization for action based on a parent
	/// authorization together with initial results of the action taken against that parent authorization..
	case reflexOrder = "reflex-order"
	
	/// The request represents the view of an authorization instantiated by a fulfilling system representing the details
	/// of the fulfiller's intention to act upon a submitted order.
	case fillerOrder = "filler-order"
	
	/// The request represents an instance for the particular order, for example a medication administration record.
	case instanceOrder = "instance-order"
	
	/// The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.
	case option = "option"
}
