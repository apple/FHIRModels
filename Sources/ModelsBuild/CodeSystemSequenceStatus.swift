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
 Codes providing the status of the variant test result.
 
 URL: http://terminology.hl7.org/CodeSystem/variant-state
 ValueSet: http://hl7.org/fhir/ValueSet/variant-state
 */
public enum SequenceStatus: String, FHIRPrimitiveType {
	
	/// the variant is detected.
	case positive = "positive"
	
	/// no variant is detected.
	case negative = "negative"
	
	/// result of the variant is missing.
	case absent = "absent"
}
