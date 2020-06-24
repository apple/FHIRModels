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
 This value set includes sample Program Reason Span codes.
 
 URL: http://terminology.hl7.org/CodeSystem/ex-programcode
 ValueSet: http://hl7.org/fhir/ValueSet/ex-program-code
 */
public enum ExampleProgramReasonCodes: String, FHIRPrimitiveType {
	
	/// Child Asthma Program
	case `as` = "as"
	
	/// Hemodialysis Program.
	case hd = "hd"
	
	/// Autism Screening Program.
	case auscr = "auscr"
	
	/// No program code applies.
	case none = "none"
}
