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
 This value set includes sample Dates Event Type codes.
 
 URL: http://hl7.org/fhir/datestype
 */
public enum DatesEventTypeCodes: String, FHIRPrimitiveType {
	
	/// The date when an insurance card was issued.
	case cardIssued = "card-issued"
	
	/// The date when an insurer nreceived a claim, pre-authorization or predetermination.
	case claimReceived = "claim-received"
	
	/// The date or period on or during which the services are expected to be performed.
	case serviceExpected = "service-expected"
}
