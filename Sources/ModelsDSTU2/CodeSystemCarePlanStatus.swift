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
 Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record.
 
 URL: http://hl7.org/fhir/care-plan-status
 ValueSet: http://hl7.org/fhir/ValueSet/care-plan-status
 */
public enum CarePlanStatus: String, FHIRPrimitiveType {
	
	/// The plan has been suggested but no commitment to it has yet been made.
	case proposed = "proposed"
	
	/// The plan is in development or awaiting use but is not yet intended to be acted upon.
	case draft = "draft"
	
	/// The plan is intended to be followed and used as part of patient care.
	case active = "active"
	
	/// The plan is no longer in use and is not expected to be followed or used in patient care.
	case completed = "completed"
	
	/// The plan has been terminated prior to reaching completion (though it may have been replaced by a new plan).
	case cancelled = "cancelled"
}
