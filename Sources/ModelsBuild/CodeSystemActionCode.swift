//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Provides examples of actions to be performed.
 
 URL: http://hl7.org/fhir/action-code
 ValueSet: http://hl7.org/fhir/ValueSet/action-code
 */
public enum ActionCode: String, FHIRPrimitiveType {
	
	/// The action indicates that information should be collected from a participant in the process.
	case collectInformation = "collect-information"
	
	/// The action indicates that a particular service should be provided.
	case orderService = "order-service"
	
	/// The action indicates that a particular medication should be prescribed to the patient.
	case prescribeMedication = "prescribe-medication"
	
	/// The action indicates that a particular diagnosis should be proposed.
	case proposeDiagnosis = "propose-diagnosis"
	
	/// The action indicates that a particular immunization should be performed.
	case recommendImmunization = "recommend-immunization"
	
	/// The action indicates that a particular detected issue should be recorded.
	case recordDetectedIssue = "record-detected-issue"
	
	/// The action indicates that a particular inference should be recorded.
	case recordInference = "record-inference"
	
	/// The action indicates that a particular flag should be reported.
	case reportFlag = "report-flag"
	
	/// The action indicates that a particular message should be sent to a participant in the process.
	case sendMessage = "send-message"
}
