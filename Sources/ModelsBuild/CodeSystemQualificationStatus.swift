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
 Set of statuses that apply to qualifications of practitioners and organizations
 
 URL: http://hl7.org/fhir/qualification-status
 */
public enum QualificationStatus: String, FHIRPrimitiveType {
	
	/// The qualification is available to use - The qualification period may be included to indicate a time interval if
	/// required.
	case active
	
	/// This qualification may be used, however there are conditions that may apply
	case conditional
	
	/// The practitioner is in the process of aquiring for this qualification/certification
	case inProgress = "in-progress"
	
	/// This qualification is not available to use. This can be used without a period, and the expectation will not
	/// resume use.
	case inactive
	
	/// The qualification is complete, however final issue/award is pending
	case pending
	
	/// This qualification should not be used, and is not expected to resume in the future
	case revoked
	
	/// This qualification should not be used, but may resume use in the future - the period, if included, may indicate
	/// when this started (via the end date, start date indicates when the qualification was available from).
	case suspended
	
	/// This qualification has been allocated to the practitioner on a temporary basis, the period may indicate a time
	/// interval. This could cover cases such as the recognition of an external qualificiaiton that is still being
	/// verified, but can be used during the process.
	case temporary
}
