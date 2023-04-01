//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a
 contact party.
 
 URL: http://terminology.hl7.org/CodeSystem/contactentity-type
 */
public enum ContactEntityType: String, FHIRPrimitiveType {
	
	/// Contact details for administrative enquiries.
	case ADMIN
	
	/// Contact details for information regarding to billing/general finance enquiries.
	case BILL
	
	/// Contact details for issues related to Human Resources, such as staff matters, OH&S etc.
	case HR
	
	/// Generic information contact for patients.
	case PATINF
	
	/// Contact details for dealing with issues related to insurance claims/adjudication/payment.
	case PAYOR
	
	/// Dedicated contact point for matters relating to press enquiries.
	case PRESS
}
