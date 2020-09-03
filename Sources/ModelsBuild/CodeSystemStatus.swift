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
 The validation status of the target
 
 URL: http://hl7.org/fhir/CodeSystem/status
 ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-status
 */
public enum Status: String, FHIRPrimitiveType {
	
	/// ***TODO***
	case attested = "attested"
	
	/// ***TODO***
	case validated = "validated"
	
	/// ***TODO***
	case inProcess = "in-process"
	
	/// ***TODO***
	case reqRevalid = "req-revalid"
	
	/// ***TODO***
	case valFail = "val-fail"
	
	/// ***TODO***
	case revalFail = "reval-fail"
}
