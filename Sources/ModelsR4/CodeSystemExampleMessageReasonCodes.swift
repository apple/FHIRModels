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
 Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
 
 URL: http://terminology.hl7.org/CodeSystem/message-reasons-encounter
 ValueSet: http://hl7.org/fhir/ValueSet/message-reason-encounter
 */
public enum ExampleMessageReasonCodes: String, FHIRPrimitiveType {
	
	/// The patient has been admitted.
	case admit = "admit"
	
	/// The patient has been discharged.
	case discharge = "discharge"
	
	/// The patient has temporarily left the institution.
	case absent = "absent"
	
	/// The patient has returned from a temporary absence.
	case `return` = "return"
	
	/// The patient has been moved to a new location.
	case moved = "moved"
	
	/// Encounter details have been updated (e.g. to correct a coding error).
	case edit = "edit"
}
