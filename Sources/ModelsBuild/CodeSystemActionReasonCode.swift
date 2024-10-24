//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Provides examples of reasons for actions to be performed.
 
 URL: http://hl7.org/fhir/action-reason-code
 ValueSet: http://hl7.org/fhir/ValueSet/action-reason-code
 */
public enum ActionReasonCode: String, FHIRPrimitiveType {
	
	/// The action should be performed to address a detected care gap.
	case careGap = "care-gap"
	
	/// The action should be performed to address a detected potential drug-drug interaction.
	case drugDrugInteraction = "drug-drug-interaction"
	
	/// The action should be performed because the patient was determined to be off pathway.
	case offPathway = "off-pathway"
	
	/// The action should be performed to bring the patient's care in line with a quality measure.
	case qualityMeasure = "quality-measure"
	
	/// The action should be performed based on a particular risk assessment.
	case riskAssessment = "risk-assessment"
}
