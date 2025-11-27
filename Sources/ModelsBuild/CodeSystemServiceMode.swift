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
 An example set of Service Modes that could be applicable to use to characterize HealthcareServices or PractitionerRoles
 while searching
 
 URL: http://hl7.org/fhir/service-mode
 ValueSet: http://hl7.org/fhir/ValueSet/service-mode
 */
public enum ServiceMode: String, FHIRPrimitiveType {
	
	/// This service will be provided via a realtime chat/messaging conversation
	case chat
	
	/// The service will be provided in person
	case inPerson = "in-person"
	
	/// The service will be provided by a teleconferencing facility or regular telephone
	case telephone
	
	/// The service will be provided over a video-conference facility
	case videoconference
}
