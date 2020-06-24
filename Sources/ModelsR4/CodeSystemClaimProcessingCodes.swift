//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 This value set includes Claim Processing Outcome codes.
 
 URL: http://hl7.org/fhir/remittance-outcome
 ValueSet: http://hl7.org/fhir/ValueSet/remittance-outcome
 */
public enum ClaimProcessingCodes: String, FHIRPrimitiveType {
	
	/// The Claim/Pre-authorization/Pre-determination has been received but processing has not begun.
	case queued = "queued"
	
	/// The processing has completed without errors
	case complete = "complete"
	
	/// One or more errors have been detected in the Claim
	case error = "error"
	
	/// No errors have been detected in the Claim and some of the adjudication has been performed.
	case partial = "partial"
}
