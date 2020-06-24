//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 Codes that convey the current status of the research study.
 
 URL: http://hl7.org/fhir/research-study-status
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-status
 */
public enum ResearchStudyStatus: String, FHIRPrimitiveType {
	
	/// Study is opened for accrual.
	case active = "active"
	
	/// Study is completed prematurely and will not resume; patients are no longer examined nor treated.
	case administrativelyCompleted = "administratively-completed"
	
	/// Protocol is approved by the review board.
	case approved = "approved"
	
	/// Study is closed for accrual; patients can be examined and treated.
	case closedToAccrual = "closed-to-accrual"
	
	/// Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have
	/// completed treatment or intervention but are still being followed according to the primary objective of the
	/// study.
	case closedToAccrualAndIntervention = "closed-to-accrual-and-intervention"
	
	/// Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have
	/// completed treatment
	/// or intervention but are still being followed according to the primary objective of the study.
	case completed = "completed"
	
	/// Protocol was disapproved by the review board.
	case disapproved = "disapproved"
	
	/// Protocol is submitted to the review board for approval.
	case inReview = "in-review"
	
	/// Study is temporarily closed for accrual; can be potentially resumed in the future; patients can be examined and
	/// treated.
	case temporarilyClosedToAccrual = "temporarily-closed-to-accrual"
	
	/// Study is temporarily closed for accrual and intervention and potentially can be resumed in the future.
	case temporarilyClosedToAccrualAndIntervention = "temporarily-closed-to-accrual-and-intervention"
	
	/// Protocol was withdrawn by the lead organization.
	case withdrawn = "withdrawn"
}
