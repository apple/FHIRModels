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
 HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in
 response to a message.
 
 URL: http://hl7.org/fhir/messageheader-response-request
 ValueSet: http://hl7.org/fhir/ValueSet/messageheader-response-request
 */
public enum MessageheaderResponseRequest: String, FHIRPrimitiveType {
	
	/// initiator expects a response for this message
	case always = "always"
	
	/// initiator expects a response only if in error
	case onError = "on-error"
	
	/// initiator does not expect a response
	case never = "never"
	
	/// initiator expects a response only if successful
	case onSuccess = "on-success"
}
