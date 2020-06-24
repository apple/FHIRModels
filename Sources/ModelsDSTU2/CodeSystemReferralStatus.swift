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
 The status of the referral.
 
 URL: http://hl7.org/fhir/referralstatus
 ValueSet: http://hl7.org/fhir/ValueSet/referralstatus
 */
public enum ReferralStatus: String, FHIRPrimitiveType {
	
	/// A draft referral that has yet to be send.
	case draft = "draft"
	
	/// The referral has been transmitted, but not yet acknowledged by the recipient.
	case requested = "requested"
	
	/// The referral has been acknowledged by the recipient, and is in the process of being actioned.
	case active = "active"
	
	/// The referral has been cancelled without being completed. For example it is no longer needed.
	case cancelled = "cancelled"
	
	/// The recipient has agreed to deliver the care requested by the referral.
	case accepted = "accepted"
	
	/// The recipient has declined to accept the referral.
	case rejected = "rejected"
	
	/// The referral has been completely actioned.
	case completed = "completed"
}
