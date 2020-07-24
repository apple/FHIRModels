//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 This value set is suitable for use with the provenance resource. It is derived from, but not compatible with, the HL7
 v3 Purpose of use Code system.
 
 URL: http://healthit.gov/nhin/purposeofuse
 ValueSet: http://hl7.org/fhir/ValueSet/nhin-purposeofuse
 */
public enum NHINPurposeOfUse: String, FHIRPrimitiveType {
	
	/// Treatment
	case TREATMENT = "TREATMENT"
	
	/// Payment
	case PAYMENT = "PAYMENT"
	
	/// Healthcare Operations
	case OPERATIONS = "OPERATIONS"
	
	/// System Administration
	case SYSADMIN = "SYSADMIN"
	
	/// Fraud detection
	case FRAUD = "FRAUD"
	
	/// Use or disclosure of Psychotherapy Notes
	case PSYCHOTHERAPY = "PSYCHOTHERAPY"
	
	/// Use or disclosure by the covered entity for its own training programs
	case TRAINING = "TRAINING"
	
	/// Use or disclosure by the covered entity to defend itself in a legal action
	case LEGAL = "LEGAL"
	
	/// Marketing
	case MARKETING = "MARKETING"
	
	/// Use and disclosure for facility directories
	case DIRECTORY = "DIRECTORY"
	
	/// Disclose to a family member, other relative, or a close personal friend of the individual
	case FAMILY = "FAMILY"
	
	/// Uses and disclosures with the individual present.
	case PRESENT = "PRESENT"
	
	/// Permission cannot practicably be provided because of the individual's incapacity or an emergency.
	case EMERGENCY = "EMERGENCY"
	
	/// Use and disclosures for disaster relief purposes.
	case DISASTER = "DISASTER"
	
	/// Uses and disclosures for public health activities.
	case PUBLICHEALTH = "PUBLICHEALTH"
	
	/// Disclosures about victims of abuse, neglect or domestic violence.
	case ABUSE = "ABUSE"
	
	/// Uses and disclosures for health oversight activities.
	case OVERSIGHT = "OVERSIGHT"
	
	/// Disclosures for judicial and administrative proceedings.
	case JUDICIAL = "JUDICIAL"
	
	/// Disclosures for law enforcement purposes.
	case LAW = "LAW"
	
	/// Uses and disclosures about decedents.
	case DECEASED = "DECEASED"
	
	/// Uses and disclosures for cadaveric organ,  eye or tissue donation purposes
	case DONATION = "DONATION"
	
	/// Uses and disclosures for research purposes.
	case RESEARCH = "RESEARCH"
	
	/// Uses and disclosures to avert a serious threat to health or safety.
	case THREAT = "THREAT"
	
	/// Uses and disclosures for specialized government functions.
	case GOVERNMENT = "GOVERNMENT"
	
	/// Disclosures for workers' compensation.
	case WORKERSCOMP = "WORKERSCOMP"
	
	/// Disclosures for insurance or disability coverage determination
	case COVERAGE = "COVERAGE"
	
	/// Request of the Individual
	case REQUEST = "REQUEST"
}
