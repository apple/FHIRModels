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
 This value set provides Claim Adjudication Decision codes.
 
 URL: http://hl7.org/fhir/claim-decision
 */
public enum ClaimAdjudicationDecisionCodes: String, FHIRPrimitiveType {
	
	/// The claim, or individual services, are approved as submitted.
	case approved
	
	/// The claim, or individual services, are not approved for any payment. This may also be known as 'rejected'.
	case denied
	
	/// The claim, or individual services, are approved at an amount less than as submitted.
	case partial
	
	/// The adjudication processing is not complete. This may be due to requiring manual review or receipt of additional
	/// information.
	case pending
}
