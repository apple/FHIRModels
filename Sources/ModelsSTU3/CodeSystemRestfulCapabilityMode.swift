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
 The mode of a RESTful capability statement.
 
 URL: http://hl7.org/fhir/restful-capability-mode
 ValueSet: http://hl7.org/fhir/ValueSet/restful-capability-mode
 */
public enum RestfulCapabilityMode: String, FHIRPrimitiveType {
	
	/// The application acts as a client for this resource.
	case client = "client"
	
	/// The application acts as a server for this resource.
	case server = "server"
}
