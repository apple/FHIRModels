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
 Statistic Model Method.
 
 URL: http://terminology.hl7.org/CodeSystem/statistic-model-method
 ValueSet: http://hl7.org/fhir/ValueSet/statistic-model-method
 */
public enum StatisticModelMethod: String, FHIRPrimitiveType {
	
	/// Dersimonian-Laird method for tau squared.
	case tauDersimonianLaird = "tauDersimonianLaird"
	
	/// Paule-Mandel method for tau squared.
	case tauPauleMandel = "tauPauleMandel"
	
	/// Restricted Maximum Likelihood method for tau squared.
	case tauRestrictedMaximumLikelihood = "tauRestrictedMaximumLikelihood"
	
	/// Maximum Likelihood method for tau squared.
	case tauMaximumLikelihood = "tauMaximumLikelihood"
	
	/// Empirical Bayes method for tau squared.
	case tauEmpiricalBayes = "tauEmpiricalBayes"
	
	/// Hunter-Schmidt method for tau squared.
	case tauHunterSchmidt = "tauHunterSchmidt"
	
	/// Sidik-Jonkman method for tau squared.
	case tauSidikJonkman = "tauSidikJonkman"
	
	/// Hedges method for tau squared.
	case tauHedges = "tauHedges"
	
	/// Mantel-Haenszel method for pooling in meta-analysis.
	case poolMantelHaenzsel = "poolMantelHaenzsel"
	
	/// Inverse variance method for pooling in meta-analysis.
	case poolInverseVariance = "poolInverseVariance"
	
	/// Peto method for pooling in meta-analysis.
	case poolPeto = "poolPeto"
	
	/// Generalized linear mixed model (GLMM) method for pooling in meta-analysis.
	case poolGeneralizedLinearMixedModel = "poolGeneralizedLinearMixedModel"
}
