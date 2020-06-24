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
 The status of the location.
 
 URL: http://hl7.org/fhir/encounter-location-status
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-location-status
 */
public enum EncounterLocationStatus: String, FHIRPrimitiveType {
	
	/// The patient is planned to be moved to this location at some point in the future.
	case planned = "planned"
	
	/// The patient is currently at this location, or was between the period specified.
	/// 
	/// A system may update these records when the patient leaves the location to either reserved, or completed
	case active = "active"
	
	/// This location is held empty for this patient.
	case reserved = "reserved"
	
	/// The patient was at this location during the period specified.
	/// 
	/// Not to be used when the patient is currently at the location
	case completed = "completed"
}
