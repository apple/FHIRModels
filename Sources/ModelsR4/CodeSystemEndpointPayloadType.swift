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
 This is an example value set defined by the FHIR project, that could be used to represent possible payload document
 types.
 
 URL: http://terminology.hl7.org/CodeSystem/endpoint-payload-type
 */
public enum EndpointPayloadType: String, FHIRPrimitiveType {
	
	/// Any payload type can be used with this endpoint, it is either a payload agnostic infrastructure (such as a
	/// storage repository), or some other type of endpoint where payload considerations are internally handled, and not
	/// available
	case any = "any"
	
	/// This endpoint does not require any content to be sent; simply connecting to the endpoint is enough notification.
	/// This can be used as a 'ping' to wakeup a service to retrieve content, which could be to ensure security
	/// considerations are correctly handled
	case none = "none"
}
