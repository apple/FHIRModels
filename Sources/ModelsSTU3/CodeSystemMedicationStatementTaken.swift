//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 A coded concept identifying level of certainty if patient has taken or has not taken the medication
 
 URL: http://hl7.org/fhir/medication-statement-taken
 ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-taken
 */
public enum MedicationStatementTaken: String, FHIRPrimitiveType {
	
	/// Positive assertion that patient has taken medication
	case Y = "y"
	
	/// Negative assertion that patient has not taken medication
	case N = "n"
	
	/// Unknown assertion if patient has taken medication
	case unk = "unk"
	
	/// Patient reporting does not apply
	case na = "na"
}
