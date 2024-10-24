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
 This value set contains codes for the type of workflow from which payments arise.
 
 URL: http://hl7.org/fhir/payment-kind
 ValueSet: http://hl7.org/fhir/ValueSet/payment-kind
 */
public enum PaymentKindCodes: String, FHIRPrimitiveType {
	
	/// The payment or adjustment is to an indicated account not to a specific charge.
	case deposit
	
	/// Payment made at an authorized Kiosk.
	case kiosk
	
	/// Payment, full or partial, of an invoice or statement provided to the payment issuer.
	case online
	
	/// The payment is one of a set of previously agreed payments, for example in fullfilment of a payment plan.
	case periodicPayment = "periodic-payment"
}
