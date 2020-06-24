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
 Degree of preference of a type of conditioned specimen.
 
 URL: http://hl7.org/fhir/specimen-contained-preference
 ValueSet: http://hl7.org/fhir/ValueSet/specimen-contained-preference
 */
public enum SpecimenContainedPreference: String, FHIRPrimitiveType {
	
	/// This type of contained specimen is preferred to collect this kind of specimen.
	case preferred = "preferred"
	
	/// This type of conditioned specimen is an alternate.
	case alternate = "alternate"
}
