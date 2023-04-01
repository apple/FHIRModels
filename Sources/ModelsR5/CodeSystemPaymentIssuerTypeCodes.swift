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
 This value set contains codes for the type of payment issuers.
 
 URL: http://hl7.org/fhir/payment-issuertype
 ValueSet: http://hl7.org/fhir/ValueSet/payment-issuertype
 */
public enum PaymentIssuerTypeCodes: String, FHIRPrimitiveType {
	
	/// An insurer, or party acting on their behalf, which is making payment following a contract, direct or indirect,
	/// with the patient to pay for healthcare-related services.
	case insurance
	
	/// The patient or a party issuing payment on behalf of the patient.
	case patient
}
