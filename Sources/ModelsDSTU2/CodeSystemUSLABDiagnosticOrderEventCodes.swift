//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 US Realm ambulatory care event codes that correspond the Use cases outlined in the USLabOrder Implementation Guide.
 
 URL: http://hl7.org/fhir/uslab-event
 ValueSet: http://hl7.org/fhir/ValueSet/uslab-do-event
 */
public enum USLABDiagnosticOrderEventCodes: String, FHIRPrimitiveType {
	
	/// a Provider (.orderer) orders one or more new laboratory tests or scheduled laboratory tests (including future
	/// tests) to be performed by a laboratory.
	case newRequest = "new-request"
	
	/// a Provider (.orderer) adds one or more additional tests to a previously transmitted test requisition.
	case addOnRequest = "add-on-request"
	
	/// The Provider (orderer) requests cancelation of previously ordered test.
	case ordererCancel = "orderer-cancel"
	
	/// The laboratory cancels a previously ordered test.
	case labCancel = "lab-cancel"
}
