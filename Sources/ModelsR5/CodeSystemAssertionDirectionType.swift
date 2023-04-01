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
 The type of direction to use for assertion.
 
 URL: http://hl7.org/fhir/assert-direction-codes
 ValueSet: http://hl7.org/fhir/ValueSet/assert-direction-codes
 */
public enum AssertionDirectionType: String, FHIRPrimitiveType {
	
	/// The assertion is evaluated on the request.
	case request
	
	/// The assertion is evaluated on the response. This is the default value.
	case response
}
