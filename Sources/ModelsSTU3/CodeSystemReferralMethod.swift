//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The methods of referral can be used when referring to a specific HealthCareService resource.
 
 URL: http://hl7.org/fhir/service-referral-method
 ValueSet: http://hl7.org/fhir/ValueSet/service-referral-method
 */
public enum ReferralMethod: String, FHIRPrimitiveType {
	
	/// Referrals may be accepted by fax.
	case fax = "fax"
	
	/// Referrals may be accepted over the phone from a practitioner.
	case phone = "phone"
	
	/// Referrals may be accepted via a secure messaging system. To determine the types of secure messaging systems
	/// supported, refer to the identifiers collection. Callers will need to understand the specific identifier system
	/// used to know that they are able to transmit messages.
	case elec = "elec"
	
	/// Referrals may be accepted via a secure email. To send please encrypt with the services public key.
	case semail = "semail"
	
	/// Referrals may be accepted via regular postage (or hand delivered).
	case mail = "mail"
}
