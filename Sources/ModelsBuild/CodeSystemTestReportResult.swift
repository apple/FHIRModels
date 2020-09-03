//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The reported execution result.
 
 URL: http://hl7.org/fhir/report-result-codes
 ValueSet: http://hl7.org/fhir/ValueSet/report-result-codes
 */
public enum TestReportResult: String, FHIRPrimitiveType {
	
	/// All test operations successfully passed all asserts.
	case pass = "pass"
	
	/// One or more test operations failed one or more asserts.
	case fail = "fail"
	
	/// One or more test operations is pending execution completion.
	case pending = "pending"
}
