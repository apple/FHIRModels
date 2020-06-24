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
 This value set includes sample Modifier type codes.
 
 URL: http://hl7.org/fhir/modifiers
 ValueSet: http://hl7.org/fhir/ValueSet/claim-modifiers
 */
public enum ModifierTypeCodes: String, FHIRPrimitiveType {
	
	/// Repair of prior service or installation.
	case A = "A"
	
	/// Temporary service or installation.
	case B = "B"
	
	/// Treatment associated with TMJ.
	case C = "C"
	
	/// Implant or associated with an implant.
	case E = "E"
	
	/// None.
	case X = "X"
}
