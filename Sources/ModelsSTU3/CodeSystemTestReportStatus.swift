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
 The current status of the test report.
 
 URL: http://hl7.org/fhir/report-status-codes
 ValueSet: http://hl7.org/fhir/ValueSet/report-status-codes
 */
public enum TestReportStatus: String, FHIRPrimitiveType {
	
	/// All test operations have completed
	case completed = "completed"
	
	/// A test operations is currently executing
	case inProgress = "in-progress"
	
	/// A test operation is waiting for an external client request
	case waiting = "waiting"
	
	/// The test script execution was manually stopped
	case stopped = "stopped"
	
	/// This test report was entered or created in error
	case enteredInError = "entered-in-error"
}
