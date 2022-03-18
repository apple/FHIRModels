//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
	
	/// Disclosures about victims of abuse, neglect or domestic violence.
	case ABUSE
	
	/// Disclosures for insurance or disability coverage determination
	case COVERAGE
	
	/// Uses and disclosures about decedents.
	case DECEASED
	
	/// Use and disclosure for facility directories
	case DIRECTORY
	
	/// Use and disclosures for disaster relief purposes.
	case DISASTER
	
	/// Uses and disclosures for cadaveric organ,  eye or tissue donation purposes
	case DONATION
	
	/// Permission cannot practicably be provided because of the individual's incapacity or an emergency.
	case EMERGENCY
	
	/// Disclose to a family member, other relative, or a close personal friend of the individual
	case FAMILY
	
	/// Fraud detection
	case FRAUD
	
	/// Uses and disclosures for specialized government functions.
	case GOVERNMENT
	
	/// Disclosures for judicial and administrative proceedings.
	case JUDICIAL
	
	/// Disclosures for law enforcement purposes.
	case LAW
	
	/// Use or disclosure by the covered entity to defend itself in a legal action
	case LEGAL
	
	/// Marketing
	case MARKETING
	
	/// Healthcare Operations
	case OPERATIONS
	
	/// Uses and disclosures for health oversight activities.
	case OVERSIGHT
	
	/// Payment
	case PAYMENT
	
	/// Uses and disclosures with the individual present.
	case PRESENT
	
	/// Use or disclosure of Psychotherapy Notes
	case PSYCHOTHERAPY
	
	/// Uses and disclosures for public health activities.
	case PUBLICHEALTH
	
	/// Request of the Individual
	case REQUEST
	
	/// Uses and disclosures for research purposes.
	case RESEARCH
	
	/// System Administration
	case SYSADMIN
	
	/// Uses and disclosures to avert a serious threat to health or safety.
	case THREAT
	
	/// Use or disclosure by the covered entity for its own training programs
	case TRAINING
	
	/// Treatment
	case TREATMENT
	
	/// Disclosures for workers' compensation.
	case WORKERSCOMP
}
