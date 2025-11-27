//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 The function performed by the participant for the action.
 
 URL: http://hl7.org/fhir/action-participant-function
 ValueSet: http://hl7.org/fhir/ValueSet/action-participant-function
 */
public enum ActionParticipantFunction: String, FHIRPrimitiveType {
	
	/// The participant is the author of the result of the action.
	case author
	
	/// The participant is the performer of the action.
	case performer
	
	/// The participant is reviewing the result of the action.
	case reviewer
	
	/// The participant is a witness to the action being performed.
	case witness
}
