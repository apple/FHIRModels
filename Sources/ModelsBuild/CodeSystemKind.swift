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
 The nature of the Coverage details which convey who is paying potentially for health services.
 
 URL: http://hl7.org/fhir/coverage-kind
 ValueSet: http://hl7.org/fhir/ValueSet/coverage-kind
 */
public enum Kind: String, FHIRPrimitiveType {
	
	/// The Coverage provides the identifiers and card-level details of an insurance policy.
	case insurance
	
	/// Some other organization is paying for the service.
	case other
	
	/// One or more persons and/or organizations are paying for the services rendered.
	case selfPay = "self-pay"
}
