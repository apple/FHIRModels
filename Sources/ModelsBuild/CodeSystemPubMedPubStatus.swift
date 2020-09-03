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
 PubMed Publication Status.
 
 URL: http://terminology.hl7.org/CodeSystem/pubmed-pubstatus
 ValueSet: http://hl7.org/fhir/ValueSet/pubmed-pubstatus
 */
public enum PubMedPubStatus: String, FHIRPrimitiveType {
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case received = "received"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case accepted = "accepted"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case epublish = "epublish"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case ppublish = "ppublish"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case revised = "revised"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case aheadofprint = "aheadofprint"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case retracted = "retracted"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case ecollection = "ecollection"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case pmc = "pmc"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case pmcr = "pmcr"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case pubmed = "pubmed"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case pubmedr = "pubmedr"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case premedline = "premedline"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case medline = "medline"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case medliner = "medliner"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case entrez = "entrez"
	
	/// Used as the value of PublicationStatus or attribute of PubmedPubDate in MEDLINE DTD.
	case pmcRelease = "pmc-release"
}
