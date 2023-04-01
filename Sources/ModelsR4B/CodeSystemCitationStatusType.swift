//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 Citation status type
 
 URL: http://terminology.hl7.org/CodeSystem/citation-status-type
 ValueSet: http://hl7.org/fhir/ValueSet/citation-status-type
 */
public enum CitationStatusType: String, FHIRPrimitiveType {
	
	/// Medline Citation Status of Completed
	case medlineCompleted = "medline-completed"
	
	/// Medline Citation Status of In-Data-Review
	case medlineInDataReview = "medline-in-data-review"
	
	/// Medline Citation Status of In-Process
	case medlineInProcess = "medline-in-process"
	
	/// Medline Citation Status of MEDLINE
	case medlineMedline = "medline-medline"
	
	/// Medline Citation Status of OLDMEDLINE
	case medlineOldmedline = "medline-oldmedline"
	
	/// Medline Citation Status of Publisher
	case medlinePublisher = "medline-publisher"
	
	/// Medline Citation Status of PubMed-not-MEDLINE
	case medlinePubmedNotMedline = "medline-pubmed-not-medline"
	
	/// electronically published, but followed by print
	case pubmedPublicationStatusAheadofprint = "pubmed-publication-status-aheadofprint"
	
	/// electronically published only, never published in print
	case pubmedPublicationStatusEpublish = "pubmed-publication-status-epublish"
	
	/// published in print
	case pubmedPublicationStatusPpublish = "pubmed-publication-status-ppublish"
	
	/// PubMed Pubstatus of Accepted
	case pubmedPubstatusAccepted = "pubmed-pubstatus-accepted"
	
	/// PubMed Pubstatus of aheadofprint
	case pubmedPubstatusAheadofprint = "pubmed-pubstatus-aheadofprint"
	
	/// PubMed Pubstatus of Ecollection
	case pubmedPubstatusEcollection = "pubmed-pubstatus-ecollection"
	
	/// PubMed Pubstatus of Entrez
	case pubmedPubstatusEntrez = "pubmed-pubstatus-entrez"
	
	/// PubMed Pubstatus of Epublish
	case pubmedPubstatusEpublish = "pubmed-pubstatus-epublish"
	
	/// PubMed Pubstatus of Medline
	case pubmedPubstatusMedline = "pubmed-pubstatus-medline"
	
	/// PubMed Pubstatus of Medliner
	case pubmedPubstatusMedliner = "pubmed-pubstatus-medliner"
	
	/// PubMed Pubstatus of PMC
	case pubmedPubstatusPmc = "pubmed-pubstatus-pmc"
	
	/// PubMed Pubstatus of PMC release
	case pubmedPubstatusPmcRelease = "pubmed-pubstatus-pmc-release"
	
	/// PubMed Pubstatus of PMCr
	case pubmedPubstatusPmcr = "pubmed-pubstatus-pmcr"
	
	/// PubMed Pubstatus of Ppublish
	case pubmedPubstatusPpublish = "pubmed-pubstatus-ppublish"
	
	/// PubMed Pubstatus of Premedline
	case pubmedPubstatusPremedline = "pubmed-pubstatus-premedline"
	
	/// PubMed Pubstatus of PubMed
	case pubmedPubstatusPubmed = "pubmed-pubstatus-pubmed"
	
	/// PubMed Pubstatus of PubMedr
	case pubmedPubstatusPubmedr = "pubmed-pubstatus-pubmedr"
	
	/// PubMed Pubstatus of Received
	case pubmedPubstatusReceived = "pubmed-pubstatus-received"
	
	/// PubMed Pubstatus of Retracted
	case pubmedPubstatusRetracted = "pubmed-pubstatus-retracted"
	
	/// PubMed Pubstatus of Revised
	case pubmedPubstatusRevised = "pubmed-pubstatus-revised"
}
