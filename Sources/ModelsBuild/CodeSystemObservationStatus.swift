//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Codes providing the status of an observation.
 
 URL: http://hl7.org/fhir/observation-status
 ValueSet: http://hl7.org/fhir/ValueSet/observation-status
 */
public enum ObservationStatus: String, FHIRPrimitiveType {
	
	/// Subsequent to being Final, the observation has been modified. This includes updates/new information and
	/// corrections.
	case amended
	
	/// Subsequent to being Final, the observation has been modified to include additional information, with no changes
	/// to the original test result(s).
	case appended
	
	/// The observation is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled
	
	/// Subsequent to being Final, the observation has been modified to correct an error in the original test result(s).
	case corrected
	
	/// The observation has been withdrawn following previous final release.  This electronic record should never have
	/// existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred,
	/// the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The observation is complete and there are no further actions needed. Additional information such "released",
	/// "signed", etc. would be represented using [Provenance](provenance.html) which provides not only the act but also
	/// the actors and dates and other related data. These act states would be associated with an observation status of
	/// `preliminary` until they are all completed and then a status of `final` would be applied. Also, this status
	/// applies for situations where there is a "not-asked" code for dataAbsentReason.
	case final
	
	/// This is an initial or interim observation: data may be incomplete or unverified.
	case preliminary
	
	/// The existence of the observation is registered, but there is no result yet available.
	case registered
	
	/// The specimen being processed in the laboratory but no results are available yet.
	case specimenInProcess = "specimen-in-process"
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown
}
