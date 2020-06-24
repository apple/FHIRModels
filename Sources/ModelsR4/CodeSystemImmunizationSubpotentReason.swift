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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is
 provided as a suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-subpotent-reason
 ValueSet: http://hl7.org/fhir/ValueSet/immunization-subpotent-reason
 */
public enum ImmunizationSubpotentReason: String, FHIRPrimitiveType {
	
	/// The full volume of the dose was not administered to the patient.
	case partial = "partial"
	
	/// The vaccine experienced a cold chain break.
	case coldchainbreak = "coldchainbreak"
	
	/// The vaccine was recalled by the manufacturer.
	case recall = "recall"
}
