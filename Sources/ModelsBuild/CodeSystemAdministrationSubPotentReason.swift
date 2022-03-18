//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust
 terminology code system that consists of or contains concepts to support the medication administration process.
 
 URL: http://hl7.org/fhir/CodeSystem/administration-subpotent-reason
 */
public enum AdministrationSubPotentReason: String, FHIRPrimitiveType {
	
	/// The medication experienced adverse storage conditions.
	case adversestorage
	
	/// The medication experienced a cold chain break.
	case coldchainbreak
	
	/// The medication was expired at the time of administration.
	case expired
	
	/// The full amount of the dose was not administered to the patient.
	case partialdose
	
	/// The medication was recalled by the manufacturer.
	case recall
	
	/// The patient vomited part of the dose.
	case vomited
}
