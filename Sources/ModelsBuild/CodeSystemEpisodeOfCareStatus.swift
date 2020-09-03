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
 The status of the episode of care.
 
 URL: http://hl7.org/fhir/episode-of-care-status
 ValueSet: http://hl7.org/fhir/ValueSet/episode-of-care-status
 */
public enum EpisodeOfCareStatus: String, FHIRPrimitiveType {
	
	/// This episode of care is planned to start at the date specified in the period.start. During this status, an
	/// organization may perform assessments to determine if the patient is eligible to receive services, or be
	/// organizing to make resources available to provide care services.
	case planned = "planned"
	
	/// This episode has been placed on a waitlist, pending the episode being made active (or cancelled).
	case waitlist = "waitlist"
	
	/// This episode of care is current.
	case active = "active"
	
	/// This episode of care is on hold; the organization has limited responsibility for the patient (such as while on
	/// respite).
	case onhold = "onhold"
	
	/// This episode of care is finished and the organization is not expecting to be providing further care to the
	/// patient. Can also be known as "closed", "completed" or other similar terms.
	case finished = "finished"
	
	/// The episode of care was cancelled, or withdrawn from service, often selected during the planned stage as the
	/// patient may have gone elsewhere, or the circumstances have changed and the organization is unable to provide the
	/// care. It indicates that services terminated outside the planned/expected workflow.
	case cancelled = "cancelled"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
}
