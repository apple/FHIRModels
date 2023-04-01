//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This codesystem defines a set of codes that can be used to indicate the kinds of special arrangements in place for a
 patient's visit.
 
 URL: http://terminology.hl7.org/CodeSystem/encounter-special-arrangements
 */
public enum SpecialArrangements: String, FHIRPrimitiveType {
	
	/// An additional bed made available for a person accompanying the patient, for example a parent accompanying a
	/// child.
	case addBed = "add-bed"
	
	/// A person who accompanies a patient to provide assistive services necessary for the patient's care during the
	/// encounter.
	case att
	
	/// The patient has a guide dog and the location used for the encounter should be able to support the presence of
	/// the service animal.
	case dog
	
	/// The patient is not fluent in the local language and requires an interpreter to be available. Refer to the
	/// Patient.Language property for the type of interpreter required.
	case int
	
	/// The patient requires a wheelchair to be made available for the encounter.
	case wheel
}
