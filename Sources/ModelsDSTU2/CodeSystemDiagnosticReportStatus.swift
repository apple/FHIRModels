//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
	
	/// The report is complete and verified by an authorized person.
	case final = "final"
	
	/// The report has been modified subsequent to being Final, and is complete and verified by an authorized person.
	/// New content has been added, but existing content hasn't changed
	case corrected = "corrected"
	
	/// The report has been modified subsequent to being Final, and is complete and verified by an authorized person.
	/// New content has been added, but existing content hasn't changed.
	case appended = "appended"
	
	/// The report is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled = "cancelled"
	
	/// The report has been withdrawn following a previous final release.
	case enteredInError = "entered-in-error"
}
