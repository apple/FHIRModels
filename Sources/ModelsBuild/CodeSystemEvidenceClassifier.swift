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
 Commonly used classifiers for evidence sets.
 
 URL: http://hl7.org/fhir/evidence-classifier-code
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-classifier-code
 */
public enum EvidenceClassifier: String, FHIRPrimitiveType {
	
	/// Allocation concealment not stated.
	case allocConcealNotStated = "AllocConcealNotStated"
	
	/// Differences between groups at start of trial may confound or bias the findings.
	case baselineImbalance = "BaselineImbalance"
	
	/// contains human COVID-19 disease in the research data as any variable (population, exposure or outcome).
	case cOVID19HumanResearch = "COVID19HumanResearch"
	
	/// Not about COVID-19 but relevant to COVID-19 management or understanding.
	case cOVID19Relevant = "COVID19Relevant"
	
	/// About COVID-19.
	case cOVID19Specific = "COVID19Specific"
	
	/// about methods to distinguish having or not having a condition.
	case diagnosis = "Diagnosis"
	
	/// Early trial termination.
	case earlyTrialTermination = "EarlyTrialTermination"
	
	/// for clinical practice guidelines.
	case guideline = "Guideline"
	
	/// No blinding.
	case noBlinding = "NoBlinding"
	
	/// No intention-to-treat analysis.
	case noITT = "NoITT"
	
	/// Neither rated as yes nor rated as no.
	case notAssessed = "NotAssessed"
	
	/// for things that are not research reports, research protocols or guidelines.
	case notResearchNotGuideline = "NotResearchNotGuideline"
	
	/// such as randomized trial, observational study.
	case originalResearch = "OriginalResearch"
	
	/// Preliminary analysis.
	case preliminaryAnalysis = "PreliminaryAnalysis"
	
	/// Results presented in preprint (pre-final publication) form.
	case preprint = "Preprint"
	
	/// about preventive care and interventions.
	case preventionAndControl = "PreventionAndControl"
	
	/// about predicting risk for something or risk factors for it.
	case prognosisPrediction = "PrognosisPrediction"
	
	/// classified as case-control study.
	case ratedAsCaseControl = "RatedAsCaseControl"
	
	/// classified as comparative cohort study (observational).
	case ratedAsComparativeCohort = "RatedAsComparativeCohort"
	
	/// classified as nonrandomized controlled trial (experimental).
	case ratedAsControlledTrial = "RatedAsControlledTrial"
	
	/// classified as mixed-methods study.
	case ratedAsMixedMethods = "RatedAsMixedMethods"
	
	/// Rated as no, negative, absent, or exclude.
	case ratedAsNo = "RatedAsNo"
	
	/// classified as other concept (not elsewhere classified).
	case ratedAsOther = "RatedAsOther"
	
	/// classified as randomized controlled trial.
	case ratedAsRCT = "RatedAsRCT"
	
	/// classified as uncontrolled cohort (case series).
	case ratedAsUncontrolledSeries = "RatedAsUncontrolledSeries"
	
	/// ratedAsYes
	case ratedAsYes = "RatedAsYes"
	
	/// for research protocols.
	case researchProtocol = "ResearchProtocol"
	
	/// such as systematic review, meta-analysis, rapid review.
	case researchSynthesis = "ResearchSynthesis"
	
	/// Risk of bias assessment.
	case riskOfBias = "RiskOfBias"
	
	/// Subgroup analysis.
	case subgroupAnalysis = "SubgroupAnalysis"
	
	/// about therapeutic interventions.
	case treatment = "Treatment"
}
