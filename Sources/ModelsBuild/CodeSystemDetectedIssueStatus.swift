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
 Indicates the status of the detected issue. This code system contains only status codes that are not already defined
 and used from the ObservationStatus code system.
 
 URL: http://hl7.org/fhir/detectedissue-status
 */
public enum DetectedIssueStatus: String, FHIRPrimitiveType {
	
	/// Indicates the detected issue has been mitigated
	case mitigated
	
	/// Indicates that an error occurred in the evaluation of the proposed action. For example, a drug/drug interaction
	/// detected issue could have a status of processing-error to indicate that an error was encountered attempting to
	/// determine whether there was a drug-drug interaction.
	case processingError = "processing-error"
}
