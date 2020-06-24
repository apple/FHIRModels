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
 MedicationRequest Status Reason Codes
 
 URL: http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-status-reason
 */
public enum MedicationRequestStatusReasonCodes: String, FHIRPrimitiveType {
	
	/// This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the
	/// preferred therapy is unsuccessful.
	case altchoice = "altchoice"
	
	/// Clarification is required before the order can be acted upon.
	case clarif = "clarif"
	
	/// The current level of the medication in the patient's system is too high. The medication is suspended to allow
	/// the level to subside to a safer level.
	case drughigh = "drughigh"
	
	/// The patient has been admitted to a care facility and their community medications are suspended until hospital
	/// discharge.
	case hospadm = "hospadm"
	
	/// The therapy would interfere with a planned lab test and the therapy is being withdrawn until the test is
	/// completed.
	case labint = "labint"
	
	/// Patient not available for a period of time due to a scheduled therapy, leave of absence or other reason.
	case nonAvail = "non-avail"
	
	/// The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the
	/// patient is no longer breastfeeding.
	case preg = "preg"
	
	/// The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being
	/// temporarily withdrawn to confirm.
	case salg = "salg"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sddi = "sddi"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sdupther = "sdupther"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sintol = "sintol"
	
	/// The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for
	/// surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the
	/// surgery.
	case surg = "surg"
	
	/// The patient was previously receiving a medication contraindicated with the current medication. The current
	/// medication will remain on hold until the prior medication has been cleansed from their system.
	case washout = "washout"
}
