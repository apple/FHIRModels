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
 Indicates why the state of the subject changed.
 
 URL: http://terminology.hl7.org/CodeSystem/state-change-reason
 ValueSet: http://hl7.org/fhir/ValueSet/state-change-reason
 */
public enum StateChangeReason: String, FHIRPrimitiveType {
	
	/// adverse event.
	case adverseEvent = "adverseEvent"
	
	/// death (adverse event).
	case death = "death"
	
	/// did not meet eligibility criteria.
	case notEligible = "notEligible"
	
	/// eligible but unwilling or unable to participate.
	case eligibleButNo = "eligibleButNo"
	
	/// enrolled or registered.
	case enrolled = "enrolled"
	
	/// exclusion.
	case exclusion = "exclusion"
	
	/// follow-up complete.
	case followUpComplete = "followUpComplete"
	
	/// inclusion.
	case inclusion = "inclusion"
	
	/// Informed consent signed.
	case informedConsentSigned = "informedConsentSigned"
	
	/// intervention or observation complete.
	case intOrObsComplete = "intOrObsComplete"
	
	/// non-compliance.
	case nonCompliance = "nonCompliance"
	
	/// pre-registered or slot reserved.
	case preReg = "preReg"
	
	/// refuse consent.
	case refuseConsent = "refuseConsent"
	
	/// screen failure.
	case screenFailure = "screenFailure"
	
	/// study permanently closed to accrual.
	case studyClosed = "studyClosed"
	
	/// study terminated.
	case studyTerminated = "studyTerminated"
	
	/// subject refusal.
	case subjectRefusal = "subjectRefusal"
	
	/// unwilling or unable to participate.
	case unwillingOrUnable = "unwillingOrUnable"
	
	/// withdrawn consent.
	case withdrawnConsent = "withdrawnConsent"
}
