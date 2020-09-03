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
 Codes identifying the lifecycle stage of an Invoice.
 
 URL: http://hl7.org/fhir/invoice-status
 ValueSet: http://hl7.org/fhir/ValueSet/invoice-status
 */
public enum InvoiceStatus: String, FHIRPrimitiveType {
	
	/// the invoice has been prepared but not yet finalized.
	case draft = "draft"
	
	/// the invoice has been finalized and sent to the recipient.
	case issued = "issued"
	
	/// the invoice has been balaced / completely paid.
	case balanced = "balanced"
	
	/// the invoice was cancelled.
	case cancelled = "cancelled"
	
	/// the invoice was determined as entered in error before it was issued.
	case enteredInError = "entered-in-error"
}
