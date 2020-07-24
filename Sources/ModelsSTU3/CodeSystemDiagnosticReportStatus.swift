//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The status of the diagnostic report as a whole.
 
 URL: http://hl7.org/fhir/diagnostic-report-status
 ValueSet: http://hl7.org/fhir/ValueSet/diagnostic-report-status
 */
public enum DiagnosticReportStatus: String, FHIRPrimitiveType {
	
	/// The existence of the report is registered, but there is nothing yet available.
	case registered = "registered"
	
	/// This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or
	/// unverified.
	case partial = "partial"
	
	/// Verified early results are available, but not all  results are final.
	case preliminary = "preliminary"
	
	/// The report is complete and verified by an authorized person.
	case final = "final"
	
	/// Subsequent to being final, the report has been modified.  This includes any change in the results, diagnosis,
	/// narrative text, or other content of a report that has been issued.
	case amended = "amended"
	
	/// Subsequent to being final, the report has been modified  to correct an error in the report or referenced
	/// results.
	case corrected = "corrected"
	
	/// Subsequent to being final, the report has been modified by adding new content. The existing content is
	/// unchanged.
	case appended = "appended"
	
	/// The report is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled = "cancelled"
	
	/// The report has been withdrawn following a previous final release.  This electronic record should never have
	/// existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred,
	/// the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request. Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}
