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
 How the issue affects the success of the action.
 
 URL: http://hl7.org/fhir/issue-severity
 ValueSet: http://hl7.org/fhir/ValueSet/issue-severity
 */
public enum IssueSeverity: String, FHIRPrimitiveType {
	
	/// The issue caused the action to fail, and no further checking could be performed.
	case fatal = "fatal"
	
	/// The issue is sufficiently important to cause the action to fail.
	case error = "error"
	
	/// The issue is not important enough to cause the action to fail, but may cause it to be performed suboptimally or
	/// in a way that is not as desired.
	case warning = "warning"
	
	/// The issue has no relation to the degree of success of the action.
	case information = "information"
}
