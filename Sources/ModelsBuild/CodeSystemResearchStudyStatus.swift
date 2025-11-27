//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Codes that convey the current status of the research study.
 
 URL: http://hl7.org/fhir/research-study-status
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-status
 */
public enum ResearchStudyStatus: String, FHIRPrimitiveType {
	
	/// Study is opened for accrual.
	case active
	
	/// The study is ongoing, and participants are receiving an intervention or being examined, but potential
	/// participants are not currently being recruited or enrolled.
	case activeButNotRecruiting = "active-but-not-recruiting"
	
	/// Study is completed prematurely and will not resume; patients are no longer examined nor treated.
	case administrativelyCompleted = "administratively-completed"
	
	/// Protocol is approved by the review board.
	case approved
	
	/// Study is closed for accrual; patients can be examined and treated.
	case closedToAccrual = "closed-to-accrual"
	
	/// Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have
	/// completed treatment or intervention but are still being followed according to the primary objective of the
	/// study.
	case closedToAccrualAndIntervention = "closed-to-accrual-and-intervention"
	
	/// The study closed according to the study plan. There will be no further treatments, interventions or data
	/// collection.
	case completed
	
	/// Protocol was disapproved by the review board.
	case disapproved
	
	/// The study is selecting its participants from a population, or group of people, decided on by the researchers in
	/// advance. These studies are not open to everyone who meets the eligibility criteria but only to people in that
	/// particular population, who are specifically invited to participate.
	case enrollingByInvitation = "enrolling-by-invitation"
	
	/// Protocol is submitted to the review board for approval.
	case inReview = "in-review"
	
	/// The study has not started recruiting participants.
	case notYetRecruiting = "not-yet-recruiting"
	
	/// Used for documenting the start and end of the overall study, distinct from progress states.
	case overallStudy = "overall-study"
	
	/// The study is currently recruiting participants.
	case recruiting
	
	/// Study is temporarily closed for accrual; can be potentially resumed in the future; patients can be examined and
	/// treated.
	case temporarilyClosedToAccrual = "temporarily-closed-to-accrual"
	
	/// Study is temporarily closed for accrual and intervention and potentially can be resumed in the future.
	case temporarilyClosedToAccrualAndIntervention = "temporarily-closed-to-accrual-and-intervention"
	
	/// The study has stopped early and will not start again. Participants are no longer being examined or treated.
	case terminated
	
	/// Protocol was withdrawn by the lead organization.
	case withdrawn
}
