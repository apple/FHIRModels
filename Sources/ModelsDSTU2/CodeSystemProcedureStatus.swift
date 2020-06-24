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
 A code specifying the state of the procedure.
 
 URL: http://hl7.org/fhir/procedure-status
 ValueSet: http://hl7.org/fhir/ValueSet/procedure-status
 */
public enum ProcedureStatus: String, FHIRPrimitiveType {
	
	/// The procedure is still occurring.
	case inProgress = "in-progress"
	
	/// The procedure was terminated without completing successfully.
	case aborted = "aborted"
	
	/// All actions involved in the procedure have taken place.
	case completed = "completed"
	
	/// The statement was entered in error and Is not valid.
	case enteredInError = "entered-in-error"
}
