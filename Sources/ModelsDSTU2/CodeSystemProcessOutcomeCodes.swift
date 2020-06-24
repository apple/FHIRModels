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
 This value set includes sample Process Outcome codes.
 
 URL: http://hl7.org/fhir/processoutcomecodes
 ValueSet: http://hl7.org/fhir/ValueSet/process-outcome
 */
public enum ProcessOutcomeCodes: String, FHIRPrimitiveType {
	
	/// complete
	case complete = "complete"
	
	/// pended
	case pended = "pended"
	
	/// error
	case error = "error"
}
