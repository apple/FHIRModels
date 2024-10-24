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
 The status of the ImagingStudy.
 
 URL: http://hl7.org/fhir/imagingstudy-status
 ValueSet: http://hl7.org/fhir/ValueSet/imagingstudy-status
 */
public enum ImagingStudyStatus: String, FHIRPrimitiveType {
	
	/// At least one instance has been associated with this imaging study.
	case available
	
	/// The imaging study is unavailable because the imaging study was not started or not completed (also sometimes
	/// called "aborted").
	case cancelled
	
	/// The imaging study has been withdrawn following a previous final release.  This electronic record should never
	/// have existed, though it is possible that real-world decisions were based on it. (If real-world activity has
	/// occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The existence of the imaging study is registered, but there is nothing yet available.
	case registered
	
	/// The system does not know which of the status values currently applies for this request. Note: This concept is
	/// not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
	case unknown
}
