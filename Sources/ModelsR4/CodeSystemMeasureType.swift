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
 The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
 
 URL: http://terminology.hl7.org/CodeSystem/measure-type
 ValueSet: http://hl7.org/fhir/ValueSet/measure-type
 */
public enum MeasureType: String, FHIRPrimitiveType {
	
	/// A measure which focuses on a process which leads to a certain outcome, meaning that a scientific basis exists
	/// for believing that the process, when executed well, will increase the probability of achieving a desired
	/// outcome.
	case process = "process"
	
	/// A measure that indicates the result of the performance (or non-performance) of a function or process.
	case outcome = "outcome"
	
	/// A measure that focuses on a health care provider's capacity, systems, and processes to provide high-quality
	/// care.
	case structure = "structure"
	
	/// A measure that focuses on patient-reported information such as patient engagement or patient experience
	/// measures.
	case patientReportedOutcome = "patient-reported-outcome"
	
	/// A measure that combines multiple component measures in to a single quality measure.
	case composite = "composite"
}
