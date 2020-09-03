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
 Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-
 market evaluation.
 
 URL: http://terminology.hl7.org/CodeSystem/research-study-phase
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-phase
 */
public enum ResearchStudyPhase: String, FHIRPrimitiveType {
	
	/// Trials without phases (for example, studies of devices or behavioral interventions).
	case NA = "n-a"
	
	/// Designation for optional exploratory trials conducted in accordance with the United States Food and Drug
	/// Administration's (FDA) 2006 Guidance on Exploratory Investigational New Drug (IND) Studies. Formerly called
	/// Phase 0.
	case earlyPhase1 = "early-phase-1"
	
	/// Includes initial studies to determine the metabolism and pharmacologic actions of drugs in humans, the side
	/// effects associated with increasing doses, and to gain early evidence of effectiveness; may include healthy
	/// participants and/or patients.
	case phase1 = "phase-1"
	
	/// Trials that are a combination of phases 1 and 2.
	case phase1Phase2 = "phase-1-phase-2"
	
	/// Includes controlled clinical studies conducted to evaluate the effectiveness of the drug for a particular
	/// indication or indications in participants with the disease or condition under study and to determine the common
	/// short-term side effects and risks.
	case phase2 = "phase-2"
	
	/// Trials that are a combination of phases 2 and 3.
	case phase2Phase3 = "phase-2-phase-3"
	
	/// Includes trials conducted after preliminary evidence suggesting effectiveness of the drug has been obtained, and
	/// are intended to gather additional information to evaluate the overall benefit-risk relationship of the drug.
	case phase3 = "phase-3"
	
	/// Studies of FDA-approved drugs to delineate additional information including the drug's risks, benefits, and
	/// optimal use.
	case phase4 = "phase-4"
}
