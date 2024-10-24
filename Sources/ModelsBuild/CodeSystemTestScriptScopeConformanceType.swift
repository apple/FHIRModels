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
 The expectation of whether the test must pass for the system to be considered conformant with the artifact.
 
 URL: http://hl7.org/fhir/testscript-scope-conformance-codes
 ValueSet: http://hl7.org/fhir/ValueSet/testscript-scope-conformance-codes
 */
public enum TestScriptScopeConformanceType: String, FHIRPrimitiveType {
	
	/// All tests are expected to pass but non-pass statuses may be allowed.
	case optional
	
	/// All tests are expected to pass. Warning statuses are permitted. This is the default value.
	case required
	
	/// All tests are expected to pass. Warnings are treated as a failure.
	case strict
}
