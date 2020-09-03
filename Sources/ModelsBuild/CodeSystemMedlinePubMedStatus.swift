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
 Used for status.
 
 URL: http://terminology.hl7.org/CodeSystem/medline-pubmed-status
 ValueSet: http://hl7.org/fhir/ValueSet/medline-pubmed-status
 */
public enum MedlinePubMedStatus: String, FHIRPrimitiveType {
	
	/// MedlineCitation record  completed (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case completed = "Completed"
	
	/// MedlineCitation record reviewed at citation level (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case inProcess = "In-Process"
	
	/// MedlineCitation record that is indexed without MeSH Headings (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case pubMedNotMEDLINE = "PubMed-not-MEDLINE"
	
	/// MedlineCitation record reviewed at journal issue level (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case inDataReview = "In-Data-Review"
	
	/// MedlineCitation record not indexed for MEDLINE (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case publisher = "Publisher"
	
	/// MedlineCitation record that is a true MEDLINE record (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case MEDLINE = "MEDLINE"
	
	/// MedlineCitation record that is indexed with original (older) MeSH Headings (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#status_value).
	case OLDMEDLINE = "OLDMEDLINE"
}
