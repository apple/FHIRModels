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
 The type of manual completion to use for assertion.
 
 URL: http://hl7.org/fhir/assert-manual-completion-codes
 ValueSet: http://hl7.org/fhir/ValueSet/assert-manual-completion-codes
 */
public enum AssertionManualCompletionType: String, FHIRPrimitiveType {
	
	/// Mark the currently waiting test failed and proceed with the next assert if the stopTestOnFail is false or the
	/// next test in the TestScript if the stopTestOnFail is true.
	case fail
	
	/// Mark the currently waiting test passed (if the test is not failed already) and proceed with the next action in
	/// the TestScript.
	case pass
	
	/// Mark this assert as skipped and proceed with the next action in the TestScript.
	case skip
	
	/// Stop execution of this TestScript. The overall status of this TestScript is evaluated based on the status of the
	/// completed tests.
	case stop
}
