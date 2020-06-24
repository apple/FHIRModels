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
 This value set is provided as an exemplar. The value set to instantiate this attribute should be drawn from a
 terminologically robust code system that consists of or contains concepts to support the procedure performance process.
 
 URL: http://hl7.org/fhir/procedure-progress-status-code
 ValueSet: http://hl7.org/fhir/ValueSet/procedure-progress-status-codes
 */
public enum ProcedureProgressStatusCodes: String, FHIRPrimitiveType {
	
	/// A patient is in the Operating Room.
	case A = "a"
	
	/// The patient is prepared for a procedure.
	case B = "b"
	
	/// The patient is under anesthesia.
	case C = "c"
	
	/// D
	case D = "d"
	
	/// E
	case E = "e"
	
	/// The patient is in the recovery room.
	case F = "f"
}
