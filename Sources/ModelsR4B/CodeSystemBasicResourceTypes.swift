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
 This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR.  Many of
 the codes listed here will eventually be turned into official resources.  However, there is no guarantee that any
 particular resource will be created nor that the scope will be exactly as defined by the codes presented here.  Codes
 in this set will be deprecated if/when formal resources are defined that encompass these concepts.
 
 URL: http://terminology.hl7.org/CodeSystem/basic-resource-type
 */
public enum BasicResourceTypes: String, FHIRPrimitiveType {
	
	/// A set of (possibly conditional) steps to be taken to achieve some aim.  Includes study protocols, treatment
	/// protocols, emergency protocols, etc.
	case `protocol`
	
	/// A financial instrument used to track costs, charges or other amounts.
	case account
	
	/// The determination of what will be paid against a particular invoice based on coverage, plan rules, etc.
	case adjudicat
	
	/// An occurrence of a non-care-related event in the healthcare domain, such as approvals, reviews, etc.
	case adminact
	
	/// An undesired reaction caused by exposure to some agent (e.g. a medication, immunization, food, or environmental
	/// agent).
	case advevent
	
	/// A request that a time be scheduled for a type of service for a specified patient, potentially subject to other
	/// constraints
	case aptmtreq
	
	/// An assertion of permission for an activity or set of activities to occur, possibly subject to particular
	/// limitations; e.g. surgical consent, information disclosure consent, etc.
	case consent
	
	/// The specification of a set of food and/or other nutritional material to be delivered to a patient.
	case diet
	
	/// Record of a situation where a subject was exposed to a substance.  Usually of interest to public health.
	case exposure
	
	/// A formalized inquiry into the circumstances surrounding a particular unplanned event or potential event for the
	/// purposes of identifying possible causes and contributing factors for the event
	case investigation
	
	/// A request for payment for goods and/or services.  Includes the idea of a healthcare insurance claim.
	case invoice
	
	/// An adjudication of what would be paid under an insurance plan for a hypothetical claim for goods or services
	case predetermine
	
	/// A request for a pre-determination of the cost that would be paid under an insurance plan for a hypothetical
	/// claim for goods or services
	case predetreq
	
	/// A request that care of a particular type be provided to a patient.  Could involve the transfer of care, a
	/// consult, etc.
	case referral
	
	/// An investigation to determine information about a particular therapy or product
	case study
	
	/// The transition of a patient or set of material from one location to another
	case transfer
}
