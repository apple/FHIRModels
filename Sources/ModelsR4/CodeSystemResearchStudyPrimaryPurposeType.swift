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
 Codes for the main intent of the study.
 
 URL: http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-prim-purp-type
 */
public enum ResearchStudyPrimaryPurposeType: String, FHIRPrimitiveType {
	
	/// One or more interventions are being evaluated for treating a disease, syndrome, or condition.
	case treatment = "treatment"
	
	/// One or more interventions are being assessed for preventing the development of a specific disease or health
	/// condition.
	case prevention = "prevention"
	
	/// One or more interventions are being evaluated for identifying a disease or health condition.
	case diagnostic = "diagnostic"
	
	/// One or more interventions are evaluated for maximizing comfort, minimizing side effects, or mitigating against a
	/// decline in the participant's health or function.
	case supportiveCare = "supportive-care"
	
	/// One or more interventions are assessed or examined for identifying a condition, or risk factors for a condition,
	/// in people who are not yet known to have the condition or risk factor.
	case screening = "screening"
	
	/// One or more interventions for evaluating the delivery, processes, management, organization, or financing of
	/// healthcare.
	case healthServicesResearch = "health-services-research"
	
	/// One or more interventions for examining the basic mechanism of action (for example, physiology or biomechanics
	/// of an intervention).
	case basicScience = "basic-science"
	
	/// An intervention of a device product is being evaluated to determine the feasibility of the product or to test a
	/// prototype device and not health outcomes. Such studies are conducted to confirm the design and operating
	/// specifications of a device before beginning a full clinical trial.
	case deviceFeasibility = "device-feasibility"
}
