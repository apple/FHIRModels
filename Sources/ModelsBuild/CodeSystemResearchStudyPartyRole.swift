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
 This is a ResearchStudy's party role.
 
 URL: http://hl7.org/fhir/research-study-party-role
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-party-role
 */
public enum ResearchStudyPartyRole: String, FHIRPrimitiveType {
	
	/// collaborator
	case collaborator
	
	/// funding-source
	case fundingSource = "funding-source"
	
	/// general-contact
	case generalContact = "general-contact"
	
	/// irb
	case irb
	
	/// lead-sponsor
	case leadSponsor = "lead-sponsor"
	
	/// primary-investigator
	case primaryInvestigator = "primary-investigator"
	
	/// recruitment-contact
	case recruitmentContact = "recruitment-contact"
	
	/// sponsor
	case sponsor
	
	/// sponsor-investigator
	case sponsorInvestigator = "sponsor-investigator"
	
	/// study-chair
	case studyChair = "study-chair"
	
	/// study-director
	case studyDirector = "study-director"
	
	/// sub-investigator
	case subInvestigator = "sub-investigator"
}
