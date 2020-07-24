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
 Indicates the status of the care team.
 
 URL: http://hl7.org/fhir/care-team-status
 ValueSet: http://hl7.org/fhir/ValueSet/care-team-status
 */
public enum CareTeamStatus: String, FHIRPrimitiveType {
	
	/// The care team has been drafted and proposed, but not yet participating in the coordination and delivery of care.
	case proposed = "proposed"
	
	/// The care team is currently participating in the coordination and delivery of care.
	case active = "active"
	
	/// The care team is temporarily on hold or suspended and not participating in the coordination and delivery of
	/// care.
	case suspended = "suspended"
	
	/// The care team was, but is no longer, participating in the coordination and delivery of care.
	case inactive = "inactive"
	
	/// The care team should have never existed.
	case enteredInError = "entered-in-error"
}
