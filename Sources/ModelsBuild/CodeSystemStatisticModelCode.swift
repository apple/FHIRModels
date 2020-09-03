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
 Statistic Model Code.
 
 URL: http://terminology.hl7.org/CodeSystem/statistic-model-code
 ValueSet: http://hl7.org/fhir/ValueSet/statistic-model-code
 */
public enum StatisticModelCode: String, FHIRPrimitiveType {
	
	/// From a fixed-effects meta-analysis, pair with valueBoolean.
	case effectsFixed = "effectsFixed"
	
	/// From a random-effects meta-analysis, pair with valueBoolean.
	case effectsRandom = "effectsRandom"
	
	/// Method used for estimating tau squared (used with a random-effects meta-analysis), pair with
	/// valueCodeableConcept.
	case methodTau = "methodTau"
	
	/// Method used to pool results, pair with valueCodeableConcept.
	case poolMethod = "poolMethod"
	
	/// Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used, pair with valueBoolean.
	case hartungKnapp = "hartungKnapp"
	
	/// Modified Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used, pair with valueBoolean.
	case modifiedHartungKnapp = "modifiedHartungKnapp"
	
	/// Zero-cell adjustment done by adding a constant to all cells of affected studies, pair with valueSimpleQuantity.
	case zeroCellNumerical = "zeroCellNumerical"
	
	/// Zero-cell adjustment done by treatment arm continuity correction, pair with valueBoolean.
	case zeroCellTreatmentArmContinuityCorrection = "zeroCellTreatmentArmContinuityCorrection"
	
	/// Used for adjusted analysis, pair with variable instead of value[x].
	case adjusted = "adjusted"
	
	/// Used for linear regression method of analysis, pair with valueBoolean.
	case linearRegression = "linearRegression"
	
	/// Used for logistic regression method of analysis, pair with valueBoolean.
	case logisticRegression = "logisticRegression"
	
	/// Used for ANOVA method of analysis, pair with valueBoolean.
	case anova = "anova"
	
	/// Used for Cox proportional hazards method of analysis, pair with valueBoolean.
	case coxProportionalHazards = "coxProportionalHazards"
}
