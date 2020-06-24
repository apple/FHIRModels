//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.4.0-29ad3ab0
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
 Evidence Report Section Code.
 
 URL: http://terminology.hl7.org/CodeSystem/evidence-report-section
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-report-section
 */
public enum EvidenceReportSectionCode: String, FHIRPrimitiveType {
	
	/// Evidence Results.
	case evidence = "Evidence"
	
	/// Evidence Results for the intervention exposure only.
	case interventionGroupAloneEvidence = "Intervention-group-alone-Evidence"
	
	/// Evidence Results for comparison of Intervention and Control.
	case interventionVsControlEvidence = "Intervention-vs-Control-Evidence"
	
	/// Evidence Results for the control exposure only.
	case controlGroupAloneEvidence = "Control-group-alone-Evidence"
	
	/// Evidence Variables used.
	case evidenceVariable = "EvidenceVariable"
	
	/// Evidence Variables as observed in the research data.
	case evidenceVariableObserved = "EvidenceVariable-observed"
	
	/// Evidence Variables intended for interpretation.
	case evidenceVariableIntended = "EvidenceVariable-intended"
	
	/// Evidence Variable in variable role Population.
	case evidenceVariablePopulation = "EvidenceVariable-population"
	
	/// Evidence Variable in variable role Exposure.
	case evidenceVariableExposure = "EvidenceVariable-exposure"
	
	/// Evidence Variable in variable role Outcome (MeasuredVariable).
	case evidenceVariableOutcome = "EvidenceVariable-outcome"
	
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
}
