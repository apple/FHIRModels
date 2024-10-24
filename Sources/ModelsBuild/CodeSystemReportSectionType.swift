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
 Evidence Report Section Type.
 
 URL: http://hl7.org/fhir/evidence-report-section
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-report-section
 */
public enum ReportSectionType: String, FHIRPrimitiveType {
	
	/// Assertion.
	case assertion = "Assertion"
	
	/// Certainty of Evidence.
	case certaintyOfEvidence = "Certainty-of-Evidence"
	
	/// Denotes the header to use for the column for a tabular report.
	case columnHeader = "Column-Header"
	
	/// Denotes a section specifying column headers for a tabular report.
	case columnHeaders = "Column-Headers"
	
	/// Evidence Results for the control exposure only.
	case controlGroupAloneEvidence = "Control-group-alone-Evidence"
	
	/// Outcomes related to efficacy or potential benefits of interventions.
	case efficacyOutcomes = "Efficacy-outcomes"
	
	/// Evidence Results.
	case evidence = "Evidence"
	
	/// This section is used for classifiers of the evidence.
	case evidenceClassifier = "Evidence-Classifier"
	
	/// Evidence Variables used.
	case evidenceVariable = "EvidenceVariable"
	
	/// Evidence Variable in variable role Exposure.
	case evidenceVariableExposure = "EvidenceVariable-exposure"
	
	/// Evidence Variables intended for interpretation.
	case evidenceVariableIntended = "EvidenceVariable-intended"
	
	/// Evidence Variables as observed in the research data.
	case evidenceVariableObserved = "EvidenceVariable-observed"
	
	/// Evidence Variable in variable role Outcome (MeasuredVariable).
	case evidenceVariableOutcome = "EvidenceVariable-outcome"
	
	/// Evidence Variable in variable role Population.
	case evidenceVariablePopulation = "EvidenceVariable-population"
	
	/// Outcomes related to adverse effects or potential harms of interventions.
	case harmsOutcomes = "Harms-outcomes"
	
	/// Denotes the header to use for a Text Summary or above a Table.
	case header = "Header"
	
	/// Evidence Results for the intervention exposure only.
	case interventionGroupAloneEvidence = "Intervention-group-alone-Evidence"
	
	/// Evidence Results for comparison of Intervention and Control.
	case interventionVsControlEvidence = "Intervention-vs-Control-Evidence"
	
	/// Reasons.
	case reasons = "Reasons"
	
	/// References.
	case references = "References"
	
	/// Denotes a section specifying row headers for a tabular report.
	case rowHeaders = "Row-Headers"
	
	/// Sample Size.
	case sampleSize = "SampleSize"
	
	/// Summary of Body of Evidence Findings.
	case summaryOfBodyOfEvidenceFindings = "SummaryOfBodyOfEvidenceFindings"
	
	/// Summary of Individual Study Findings.
	case summaryOfIndividualStudyFindings = "SummaryOfIndividualStudyFindings"
	
	/// table
	case table = "Table"
	
	/// Tables.
	case tables = "Tables"
	
	/// Denotes a section specifying text summary for a report.
	case textSummary = "Text-Summary"
	
	/// Warnings.
	case warnings = "Warnings"
}
