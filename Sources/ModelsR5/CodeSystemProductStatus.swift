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
 Codes identifying the lifecycle stage of a product.
 
 URL: http://hl7.org/fhir/product-status
 ValueSet: http://hl7.org/fhir/ValueSet/product-status
 */
public enum ProductStatus: String, FHIRPrimitiveType {
	
	/// The product can be used.
	case active
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
}
