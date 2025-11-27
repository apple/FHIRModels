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
 Indicates that an operation must always be handled as synchronous or asynchronous, or that the server must provide
 both, and clients can choose
 
 URL: http://hl7.org/fhir/synchronicity-control
 ValueSet: http://hl7.org/fhir/ValueSet/synchronicity-control
 */
public enum OperationSynchronicityControl: String, FHIRPrimitiveType {
	
	/// This operation is invoked asynchronously.
	case asynchronous
	
	/// This operation can be invoked either synchronously or asynchronously.
	case either
	
	/// This operation is invoked synchronously
	case synchronous
}
