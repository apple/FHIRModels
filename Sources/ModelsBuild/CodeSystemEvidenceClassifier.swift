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
 Commonly used classifiers for evidence sets.
 
 URL: http://terminology.hl7.org/CodeSystem/evidence-classifier-code
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-classifier-code
 */
public enum EvidenceClassifier: String, FHIRPrimitiveType {
	
	/// About COVID-19.
	case cOVID19Specific = "COVID19Specific"
	
	/// Not about COVID-19 but relevant to COVID-19 management or understanding.
	case cOVID19Relevant = "COVID19Relevant"
	
	/// contains human COVID-19 disease in the research data as any variable (population, exposure or outcome).
	case cOVID19HumanResearch = "COVID19HumanResearch"
	
	/// such as randomized trial, observational study.
	case originalResearch = "OriginalResearch"
	
	/// such as systematic review, meta-analysis, rapid review.
	case researchSynthesis = "ResearchSynthesis"
	
	/// for clinical practice guidelines.
	case guideline = "Guideline"
	
	/// for research protocols.
	case researchProtocol = "ResearchProtocol"
	
	/// for things that are not research reports, research protocols or guidelines.
	case notResearchNotGuideline = "NotResearchNotGuideline"
	
	/// about therapeutic interventions.
	case treatment = "Treatment"
	
	/// about preventive care and interventions.
	case preventionAndControl = "PreventionAndControl"
	
	/// about methods to distinguish having or not having a condition.
	case diagnosis = "Diagnosis"
	
	/// about predicting risk for something or risk factors for it.
	case prognosisPrediction = "PrognosisPrediction"
	
	/// ratedAsYes
	case ratedAsYes = "RatedAsYes"
	
	/// Rated as no, negative, absent, or exclude.
	case ratedAsNo = "RatedAsNo"
	
	/// Neither rated as yes nor rated as no.
	case notAssessed = "NotAssessed"
	
	/// classified as randomized controlled trial.
	case ratedAsRCT = "RatedAsRCT"
	
	/// classified as nonrandomized controlled trial (experimental).
	case ratedAsControlledTrial = "RatedAsControlledTrial"
	
	/// classified as comparative cohort study (observational).
	case ratedAsComparativeCohort = "RatedAsComparativeCohort"
	
	/// classified as case-control study.
	case ratedAsCaseControl = "RatedAsCaseControl"
	
	/// classified as uncontrolled cohort (case series).
	case ratedAsUncontrolledSeries = "RatedAsUncontrolledSeries"
	
	/// classified as mixed-methods study.
	case ratedAsMixedMethods = "RatedAsMixedMethods"
	
	/// classified as other concept (not elsewhere classified).
	case ratedAsOther = "RatedAsOther"
	
	/// Risk of bias assessment.
	case riskOfBias = "RiskOfBias"
	
	/// No blinding.
	case noBlinding = "NoBlinding"
	
	/// Allocation concealment not stated.
	case allocConcealNotStated = "AllocConcealNotStated"
	
	/// Early trial termination.
	case earlyTrialTermination = "EarlyTrialTermination"
	
	/// No intention-to-treat analysis.
	case noITT = "NoITT"
	
	/// Results presented in preprint (pre-final publication) form.
	case preprint = "Preprint"
	
	/// Preliminary analysis.
	case preliminaryAnalysis = "PreliminaryAnalysis"
	
	/// Differences between groups at start of trial may confound or bias the findings.
	case baselineImbalance = "BaselineImbalance"
	
	/// Subgroup analysis.
	case subgroupAnalysis = "SubgroupAnalysis"
}
