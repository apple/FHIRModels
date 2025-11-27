//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 This is a ResearchStudy's party role.
 
 URL: http://hl7.org/fhir/research-study-party-role
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-party-role
 */
public enum ResearchStudyPartyRole: String, FHIRPrimitiveType {
	
	/// An organization or individual, who contributes to a study by providing support to the primary investigator to
	/// conduct research.
	case collaborator
	
	/// An organization or individual who monitors the validity and integrity of collected data while prioritizing
	/// participant safety and study integrity. The organization may be called a Data Monitoring Committee (DMC) or Data
	/// and Safety Monitoring Board (DSMB).
	case dataMonitoring = "data-monitoring"
	
	/// An organization that underwrites financial support for the research study.
	case fundingSource = "funding-source"
	
	/// Information for the person who can answer general questions for a study.
	case generalContact = "general-contact"
	
	/// A group of individuals that reviews and monitors research involving human subjects.
	case irb
	
	/// Primary person, company, agency or institution that initiates a clinical investigation and takes responsibility
	/// for that investigation but does not conduct the investigation if there is more than one sponsor.
	case leadSponsor = "lead-sponsor"
	
	/// An investigator who is responsible for all aspects of the conduct of a study.
	case primaryInvestigator = "primary-investigator"
	
	/// Information for the person who can answer recruitment questions for a study.
	case recruitmentContact = "recruitment-contact"
	
	/// Person, company, agency or institution that initiates a clinical investigation and takes responsibility for that
	/// investigation but does not conduct the investigation.
	case sponsor
	
	/// Entity who both initiates and conducts an investigation.
	case sponsorInvestigator = "sponsor-investigator"
	
	/// An individual person who both initiates and conducts, alone or with others, a clinical trial and under whose
	/// immediate direction the investigational product is administered to, dispensed to, or used by a subject. (Also
	/// called study director or study chairperson)
	case studyChair = "study-chair"
	
	/// Any individual member of the clinical trial team designated and supervised by the investigator at a trial site
	/// to perform critical trial-related procedures and/or to make important trial-related decisions (e.g., associates,
	/// residents, research fellows).
	case subInvestigator = "sub-investigator"
}
