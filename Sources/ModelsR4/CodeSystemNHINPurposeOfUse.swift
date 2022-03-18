//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
	
	/// Treatment
	case TREATMENT
	
	/// Payment
	case PAYMENT
	
	/// Healthcare Operations
	case OPERATIONS
	
	/// System Administration
	case SYSADMIN
	
	/// Fraud detection
	case FRAUD
	
	/// Use or disclosure of Psychotherapy Notes
	case PSYCHOTHERAPY
	
	/// Use or disclosure by the covered entity for its own training programs
	case TRAINING
	
	/// Use or disclosure by the covered entity to defend itself in a legal action
	case LEGAL
	
	/// Marketing
	case MARKETING
	
	/// Use and disclosure for facility directories
	case DIRECTORY
	
	/// Disclose to a family member, other relative, or a close personal friend of the individual
	case FAMILY
	
	/// Uses and disclosures with the individual present.
	case PRESENT
	
	/// Permission cannot practicably be provided because of the individual's incapacity or an emergency.
	case EMERGENCY
	
	/// Use and disclosures for disaster relief purposes.
	case DISASTER
	
	/// Uses and disclosures for public health activities.
	case PUBLICHEALTH
	
	/// Disclosures about victims of abuse, neglect or domestic violence.
	case ABUSE
	
	/// Uses and disclosures for health oversight activities.
	case OVERSIGHT
	
	/// Disclosures for judicial and administrative proceedings.
	case JUDICIAL
	
	/// Disclosures for law enforcement purposes.
	case LAW
	
	/// Uses and disclosures about decedents.
	case DECEASED
	
	/// Uses and disclosures for cadaveric organ,  eye or tissue donation purposes
	case DONATION
	
	/// Uses and disclosures for research purposes.
	case RESEARCH
	
	/// Uses and disclosures to avert a serious threat to health or safety.
	case THREAT
	
	/// Uses and disclosures for specialized government functions.
	case GOVERNMENT
	
	/// Disclosures for workers' compensation.
	case WORKERSCOMP
	
	/// Disclosures for insurance or disability coverage determination
	case COVERAGE
	
	/// Request of the Individual
	case REQUEST
}
