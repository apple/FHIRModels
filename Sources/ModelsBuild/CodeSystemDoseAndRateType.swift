//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The kind of dose or rate specified.
 
 URL: http://terminology.hl7.org/CodeSystem/dose-rate-type
 ValueSet: http://hl7.org/fhir/ValueSet/dose-rate-type
 */
public enum DoseAndRateType: String, FHIRPrimitiveType {
	
	/// The dose specified is calculated by the prescriber or the system.
	case calculated = "calculated"
	
	/// The dose specified is as ordered by the prescriber.
	case ordered = "ordered"
}
