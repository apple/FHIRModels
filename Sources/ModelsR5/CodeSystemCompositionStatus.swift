//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 The workflow/clinical status of the composition.
 
 URL: http://hl7.org/fhir/composition-status
 ValueSet: http://hl7.org/fhir/ValueSet/composition-status
 */
public enum CompositionStatus: String, FHIRPrimitiveType {
	
	/// The composition content or the referenced resources have been modified (edited or added to) subsequent to being
	/// released as "final" and the composition is complete and verified by an authorized person.
	case amended
	
	/// Subsequent to being final, the composition content has been modified by adding new content. The existing content
	/// is unchanged.
	case appended
	
	/// The composition is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled
	
	/// Subsequent to being final, the composition content has been modified to correct an error in the composition or
	/// referenced results.
	case corrected
	
	/// This composition has been withdrawn or superseded and should no longer be used.
	case deprecated
	
	/// The composition or document was originally created/issued in error, and this is an amendment that marks that the
	/// entire series should not be considered as valid.
	case enteredInError = "entered-in-error"
	
	/// This version of the composition is complete and verified by an appropriate person and no further work is
	/// planned. Any subsequent updates would be on a new version of the composition.
	case final
	
	/// This is a partial (e.g. initial, interim or preliminary) composition: data in the composition may be incomplete
	/// or unverified.
	case partial
	
	/// Verified early results are available, but not all results are final.
	case preliminary
	
	/// The existence of the composition is registered, but there is nothing yet available.
	case registered
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown
}
