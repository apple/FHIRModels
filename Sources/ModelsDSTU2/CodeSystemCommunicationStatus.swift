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
 The status of the communication.
 
 URL: http://hl7.org/fhir/communication-status
 ValueSet: http://hl7.org/fhir/ValueSet/communication-status
 */
public enum CommunicationStatus: String, FHIRPrimitiveType {
	
	/// The communication transmission is ongoing.
	case inProgress = "in-progress"
	
	/// The message transmission is complete, i.e., delivered to the recipient's destination.
	case completed = "completed"
	
	/// The communication transmission has been held by originating system/user request.
	case suspended = "suspended"
	
	/// The receiving system has declined to accept the message.
	case rejected = "rejected"
	
	/// There was a failure in transmitting the message out.
	case failed = "failed"
}
