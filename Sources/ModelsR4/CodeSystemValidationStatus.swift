//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 Status of the validation of the target against the primary source
 
 URL: http://terminology.hl7.org/CodeSystem/validation-status
 ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-validation-status
 */
public enum ValidationStatus: String, FHIRPrimitiveType {
	
	/// successful
	case successful = "successful"
	
	/// failed
	case failed = "failed"
	
	/// The validations status has not been determined yet
	case unknown = "unknown"
}
