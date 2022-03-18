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
 Indicates why the state of the subject changed.
 
 URL: http://terminology.hl7.org/CodeSystem/state-change-reason
 ValueSet: http://hl7.org/fhir/ValueSet/state-change-reason
 */
public enum StateChangeReason: String, FHIRPrimitiveType {
	
	/// adverse event.
	case adverseEvent
	
	/// The study is now complete.
	case complete
	
	/// death (adverse event).
	case death
	
	/// Relapse of disease.
	case diseaseRelapse
	
	/// eligible but unwilling or unable to participate.
	case eligibleButNo
	
	/// enrolled or registered.
	case enrolled
	
	/// exclusion.
	case exclusion
	
	/// Subject failed randomization.
	case failedRandomization
	
	/// follow-up complete.
	case followUpComplete
	
	/// inclusion.
	case inclusion
	
	/// Informed consent signed.
	case informedConsentSigned
	
	/// intervention or observation complete.
	case intOrObsComplete
	
	/// The study activities were not efficient in dealing with the underlying issue.
	case lackOfEfficacy
	
	/// The subject can no longer be followed up.
	case lostToFollowUp
	
	/// non-compliance.
	case nonCompliance
	
	/// did not meet eligibility criteria.
	case notEligible
	
	/// A physician has decided the subject should no longer continue on the study.
	case physicianDecision
	
	/// pre-registered or slot reserved.
	case preReg
	
	/// Subject is now pregnant and no longer meets the inclusion criteria.
	case pregnancy
	
	/// The subject has a disease that has progressed to far to allow them to continue in the study.
	case progressiveDisease
	
	/// There has been a protocol deviation that cannot be corrected or compensated for.
	case protocolDeviation
	
	/// The subject has recovered and no longer meets the inclusion criteria.
	case recovery
	
	/// refuse consent.
	case refuseConsent
	
	/// screen failure.
	case screenFailure
	
	/// The site where the subject was being treated is no longer in the study.
	case siteTerminated
	
	/// study permanently closed to accrual.
	case studyClosed
	
	/// study terminated.
	case studyTerminated
	
	/// subject refusal.
	case subjectRefusal
	
	/// The subject cannot continue on the study due to technical issues.
	case technicalProblems
	
	/// unwilling or unable to participate.
	case unwillingOrUnable
	
	/// withdrawn consent.
	case withdrawnConsent
}
